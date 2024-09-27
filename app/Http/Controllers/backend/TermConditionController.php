<?php

namespace App\Http\Controllers\backend;

use App\Models\Thana;
use App\Models\TermCondition;
use App\Models\Division;
use App\Models\District;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\ImageManagerStatic as Image;

class TermConditionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     
    public function __construct()
    {
        $this->middleware(['permission:terms-conditions-list'])->only(['index']);
        $this->middleware(['permission:terms-conditions-add'])->only(['create']);
        $this->middleware(['permission:terms-conditions-edit'])->only(['edit']);
        $this->middleware(['permission:terms-conditions-list'])->only(['show']);
        $this->middleware(['permission:terms-conditions-delete'])->only(['destroy']);
    }
    
    public function index()
    {
        $termCondition = TermCondition::where('status', 1)->orderBy('id','desc')->get();

        return view('backend.termCondition.list',compact('termCondition'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        return view('backend.termCondition.create');
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
            'type' => 'required',
            'title' => 'required',
            'description' => 'nullable',
            'status' => 'nullable',
        ]);

        if($request->status){
            $status = 1;
        }else{
            $status = 0;
        }

        $unusedProduct = TermCondition::create($validatedData);
           
        return redirect()->route('term-condition.index')->with('success', 'Data is successfully saved');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\TermCondition  $termCondition
     * @return \Illuminate\Http\Response
     */
    public function show(TermCondition $termCondition)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\TermCondition  $termCondition
     * @return \Illuminate\Http\Response
     */
    public function edit(TermCondition $termCondition)
    {
        return view('backend.termCondition.edit',compact('termCondition'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\TermCondition  $termCondition
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TermCondition $termCondition)
    {
        $validatedData = $request->validate([
            'type' => 'nullable',
            'title' => 'required',
            'description' => 'nullable',
            'status' => 'nullable',
        ]);

        $termCondition = TermCondition::findOrFail($termCondition->id);

        if($request->status){
            $status = 1;
        }else{
            $status = 0;
        }
        $validatedData['status'] = $status;

        TermCondition::whereId($termCondition->id)->update($validatedData);
           
        return redirect()->route('term-condition.index')->with('success', 'Data is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Faq  $faq
     * @return \Illuminate\Http\Response
     */
    public function destroy(TermCondition $termCondition)
    {
        $termCondition = TermCondition::findOrFail($termCondition->id);
        $termCondition->delete();

        return redirect()->route('term-condition.index')->with('danger', 'Data is successfully deleted');
    }

}
