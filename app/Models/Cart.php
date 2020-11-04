<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Auth;

class Cart extends Model
{
  public $fillable = [
    'user_id',
    'ip_address',
    'product_id',
    'product_quantity',
    'order_id'
  ];

  public function user()
  {
    return $this->belongsTo(User::class);
  }

  public function order()
  {
    return $this->belongsTo(Order::class);
  }

  public function product()
  {
    return $this->belongsTo(Product::class);
  }


//total carts
//return type int
  public static function totalCarts()
  {
    if (Auth::check()) {
      $carts = Cart::orwhere('user_id', Auth::id())
                  ->orWhere('ip_address', request()->ip())
                  ->get();
    }else {
      $carts = Cart::orwhere('ip_address', request()->ip())->get();
    }

    return $carts;
  }
//total items in the carts
//return type int
  public static function totalItems()
  {
    if (Auth::check()) {
      $carts = Cart::orwhere('user_id', Auth::id())
                  ->orWhere('ip_address', request()->ip())
                  ->get();
    }else {
      $carts = Cart::orwhere('ip_address', request()->ip())->get();
    }
    $total_item =0;
    foreach ($carts as $cart) {
      $total_item += $cart->product_quantity;
    }

    return $total_item;
  }
}
