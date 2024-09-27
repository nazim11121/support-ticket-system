<?php

namespace App\Http\Controllers\backend;

use App\Models\Ticket;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use App\Mail\TicketClosed;
use App\Mail\TicketOpen;
use Auth;

class TicketController extends Controller
{
    public function __construct()
    {
        $this->middleware(['permission:ticket-list'])->only(['index']);
        $this->middleware(['permission:ticket-add'])->only(['create']);
        $this->middleware(['permission:ticket-edit'])->only(['edit']);
        $this->middleware(['permission:ticket-delete'])->only(['destroy']);
    }
    
    public function index()
    {
        $ticket = Ticket::orderBy('id','desc')->get();
        return view('backend.ticket.list',compact('ticket'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $genrateTicketNo = date('ymd').rand('11','999');
        return view('backend.ticket.create', compact('genrateTicketNo'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $validatedData = $request->validate([
            'ticket_no' => 'required',
            'description' => 'required',
            'status' => 'nullable',
        ]);

        $ticket = Ticket::create($validatedData);
        // admin mail
        $adminMail = Auth::user()->email;
        Mail::to($adminMail)->send(new TicketOpen($request->all()));
           
        return redirect()->route('ticket.index')->with('success', 'Data is successfully submit');
    }

    public function edit(Ticket $ticket)
    {
        $ticket->update(['status' => 'closed']);
        $ticket = Ticket::find($ticket->id);
        // customer mail
        Mail::to($ticket->user->email)->send(new TicketClosed($ticket));

        return redirect()->route('ticket.index')->with('success', 'Ticket is successfully closed');
    }

    public function destroy(Ticket $ticket)
    {
        $ticket = Ticket::findOrFail($ticket->id);
        $ticket->delete();

        return redirect()->route('ticket.index')->with('danger', 'Data is successfully deleted');
    }
}
