<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable= ['customer_id', 'amount', 'shipping_address', 'billing_address', 'order_email', 
    'order_status', 'order_date'];
    
}
