<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $categories = Category::all();
       // dd($categories);
        return view('categories.index', compact('categories'));
        return 'Categories Iubitorii de dulce';
       
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('categories.create');
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
            'category_name' => 'required',
            'description' => 'required',
        ]);
        $show = Category::create($validareDate);
   
        return redirect('/categories')->with('success', 'The category is successfully saved');
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
        $category = Category::findOrFail($id);
        // cauta categoria dupa id , daca nu gasesti id ul, da eroare

        return view('categories.edit', compact('category'));
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
            'category_name' => 'required'
        ]);
        // cauta categoria ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        Category::whereId($id)->update($validatedData);

        // daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/categories')->with('success', 'Category Data is successfully updated');
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
        $category = Category::findOrFail($id);
        //sterge categoria
        $category->delete();

        return redirect('/categories')->with('success', 'Category Data is successfully deleted');
    }
}
