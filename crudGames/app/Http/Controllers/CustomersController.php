<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomersController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $customers = Customer::all();
       // dd($customers);
        return view('customers.index', compact('customers'));
        return 'Customers Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('customers.create');
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
            'full_name' => 'required',
            'email' => 'required',
            'billing_address' => 'required',
            'shipping_address' => 'required',
            'phone' => 'required',
            'country' => 'required'
        ]);
        $show = Customer::create($validareDate);
   
        return redirect('/customers')->with('success', 'Customer is successfully saved');
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
        $customer = Customer::findOrFail($id);
        // cauta customer dupa id , daca nu gasesti id ul, da eroare

        return view('customers.edit', compact('customer'));
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
            'full_name' => 'required',
            'email' => 'required',
            'billing_address' => 'required',
            'shipping_address' => 'required',
            'phone' => 'required',
            'country' => 'required'
        ]);
        // cauta produsul ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        Customer::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/customers')->with('success', 'Customer Data is successfully updated');
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
        $customer = Customer::findOrFail($id);
        //sterge customer
        $customer->delete();

        return redirect('/customers')->with('success', 'Customer Data is successfully deleted');
    }
}
