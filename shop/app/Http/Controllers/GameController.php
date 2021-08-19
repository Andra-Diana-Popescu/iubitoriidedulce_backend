<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// permite recunoasterea metodelor din clasa Games
use App\Models\Game;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $games = Game::all();
         

            // returneaza index.blade.php si trimite dinamic datele din array-ul ce a fost 
         // compus de $games  folosind functia games
         return view('index', compact('games'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
     return view('create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          $validareDate = $request->validate([
            'name' => 'required|max:255',
            'price' => 'required',
        ]);
        $show = Game::create($validareDate);
   
        return redirect('/games')->with('success', 'Game is successfully saved');
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
        $game = Game::findOrFail($id);
        // cauta jocul dupa id , daca nu gasesti id ul, da eroare

        return view('edit', compact('game'));
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
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'price' => 'required'
        ]);
        // cauta jocul ce are in interorul sau id -ul respectiva ,daca are
        // actualizeaza cu urmatoarele valori
        Game::whereId($id)->update($validatedData);

// daca actualizarea a avut success , fa redirect catre pagina principala 
        return redirect('/games')->with('success', 'Game Data is successfully updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $game = Game::findOrFail($id);
        //sterge jocul
        $game->delete();

        return redirect('/games')->with('success', 'Game Data is successfully deleted');
    }
}
