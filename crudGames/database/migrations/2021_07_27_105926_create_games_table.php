<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //Creaza tabel games cu urmatoarele coloane
        Schema::create('games', function (Blueprint $table) {
            $table->id();
            //string reprezinta tipul datei , sir 
            $table->string('name');
            //tipul datei intreg 
            $table->integer('price');
            // coloane pentru tabelul games 
            $table->timestamps();
            // coloane creat_at si update_at generate 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('games');
    }
}
