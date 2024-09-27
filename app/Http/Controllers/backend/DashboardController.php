<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ticket;
use App\Models\User;
use Auth;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $user = Auth::user();
        $role = $user->getRoleNames()->first();
        $openTicket = Ticket::where('status', 'open')->get()->count();
        $closedTicket = Ticket::where('status', 'closed')->get()->count();

        return view('backend.dashboard', compact('user','role','openTicket','closedTicket'));
    }

}
