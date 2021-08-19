<?php

namespace App\Http\Controllers;

use App\Models\OrderDetails;
use Illuminate\Http\Request;

class OrderDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $order_details = OrderDetails::all();
       // dd($orders);
        return view('order_details.index', compact('order_details'));
        return 'Order Details Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('order_details.create');
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validareDate = $request->validate([
            'upc' => 'required',
            'order_id' => 'required',
            'product_id' => 'required',
            'price' => 'required'
        ]);
        $show = OrderDetails::create($validareDate);
   
        return redirect('/order_details')->with('success', 'Order Details is successfully saved');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       // dd('edit');
        $order_detail = OrderDetails::findOrFail($id);
        // cauta order_detail dupa id , daca nu gasesti id ul, da eroare

        return view('order_details.edit', compact('order_detail'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       // dd('up');
        $validatedData = $request->validate([
            'upc' => 'required',
            'order_id' => 'required',
            'product_id' => 'required',
            'price' => 'required'
        ]);
        // cauta order_details ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        OrderDetails::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/order_details')->with('success', 'Order Details Data is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $order_detail = OrderDetails::findOrFail($id);
        //sterge order
        $order_detail->delete();

        return redirect('/order_details')->with('success', 'Order Details Data is successfully deleted');
    }
}
