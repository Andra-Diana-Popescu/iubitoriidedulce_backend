<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;

class ProductCategoriesController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $product_categories = ProductCategory::all();
       // dd($product_categories);
        return view('product_categories.index', compact('product_categories'));
        return 'Product Categories Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('product_categories.create');
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
            'product_id' => 'required',
            'category_id' => 'required',
            'brand_id' => 'required'
        ]);
        $show = ProductCategory::create($validareDate);
   
        return redirect('/product_categories')->with('success', 'Product Category is successfully saved');
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
        $product_category = ProductCategory::findOrFail($id);
        // cauta product_categories dupa id , daca nu gasesti id ul, da eroare

        return view('product_categories.edit', compact('product_category'));
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
            'product_id' => 'required',
            'category_id' => 'required',
            'brand_id' => 'required'
        ]);
        // cauta product_categories ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        ProductCategory::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/product_categories')->with('success', 'Product Categories is successfully updated');
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
        $product_category = ProductCategory::findOrFail($id);
        //sterge product_categories
        $product_category->delete();

        return redirect('/product_categories')->with('success', 'Product Categories is successfully deleted');
    }
}
