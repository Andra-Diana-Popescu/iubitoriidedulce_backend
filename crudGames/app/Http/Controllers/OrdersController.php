<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $orders = Order::all();
       // dd($orders);
        return view('orders.index', compact('orders'));
        return 'Orders Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('orders.create');
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
            'customer_id' => 'required',
            'amount' => 'required',
            'shipping_address' => 'required',
            'billing_address' => 'required',
            'order_email' => 'required',
            'order_status' => 'required',
            'order_date' => 'required'
        ]);
        $show = Order::create($validareDate);
   
        return redirect('/orders')->with('success', 'Order is successfully saved');
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
        $order = Order::findOrFail($id);
        // cauta order dupa id , daca nu gasesti id ul, da eroare

        return view('orders.edit', compact('order'));
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
            'customer_id' => 'required',
            'amount' => 'required',
            'shipping_address' => 'required',
            'billing_address' => 'required',
            'order_email' => 'required',
            'order_status' => 'required',
            'order_date' => 'required'
        ]);
        // cauta order ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        Order::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/orders')->with('success', 'Order Data is successfully updated');
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
        $order = Order::findOrFail($id);
        //sterge order
        $order->delete();

        return redirect('/orders')->with('success', 'Order Data is successfully deleted');
    }
}
