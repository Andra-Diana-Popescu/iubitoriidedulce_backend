<?php

namespace App\Http\Controllers;

use App\Models\GetListProduct;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $products = Product::all();
       // dd($products);
        return view('products.index', compact('products'));
        return 'Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('products.create');
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
            'upc' => 'required|max:255',
            'product_name' => 'required',
            'price_each' => 'required',
            'weight' => 'required',
            'description' => 'required',
            'product_id' => 'required',
            'category' => 'required',
            'stock' => 'required',
            'brand' => 'required'
        ]);
        $show = Product::create($validareDate);
   
        return redirect('/products')->with('success', 'Product is successfully saved');
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

    public function getProduct() {
        $products = Product::all();
         return view('products.listproduct', compact('products'));
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
        $product = Product::findOrFail($id);
        // cauta produsul dupa id , daca nu gasesti id ul, da eroare

        return view('products.edit', 
        compact('product'));
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
       // dd('1 update');
        $validatedData = $request->validate([
            'upc' => 'required|max:255',
            'product_name' => 'required',
            'price_each' => 'required',
            'weight' => 'required',
            'description' => 'required',
            'product_id' => 'required',
            'category' => 'required',
            'stock' => 'required',
            'brand' => 'required'
        ]);
        // cauta produsul ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        Product::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/products')->with('success', 'Product Data is successfully updated');
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
        $product = Product::findOrFail($id);
        //sterge produsul
        $product->delete();

        return redirect('/products')->with('success', 'Product Data is successfully deleted');
    }



}
