<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
	// "sincronizeaza automat tabelul game cu modelul acesta"
	// faceti research pentru  propietatea... $table
	// un trait, v-a fost dor de trait uri ? 
    use HasFactory;

// permite popularea culoanelor din tabelul game
    protected $fillable= ['name', 'price'];
    // o propietate in oop
}
