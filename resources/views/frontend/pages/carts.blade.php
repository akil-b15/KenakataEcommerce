@extends('frontend.layouts.mastertwo')

@section('content')
  <div class="container mt-1">
    <h2>My Cart Items</h2>
    <table class="table table-bordered table-stripe">
      <thead>
        <tr>
          <th>No.</th>
          <th>Product Title</th>
          <th>Product Image</th>
          <th>Product Quantity</th>
          <th>Unit Price</th>
          <th>Sub Total Price</th>
          <th>
            Delete
          </th>
        </tr>
      </thead>
      <tbody>
        @php
          $total_price = 0;
        @endphp
        @foreach (App\Models\Cart::totalCarts() as $cart)
        <tr>
          <td>
            {{ $loop->index + 1 }}
          </td>
          <td>
            <a href="{{ route('products.show', $cart->product->slug) }}">{{ $cart->product->title }}</a>
          </td>
          <td>
            @if ($cart->product->images->count() > 0)
              <img src="{{ asset('images/products/'. $cart->product->images->first()->image) }}" width="50px">
            @endif
          </td>
          <td>
            <form class="form-inline" action="{{ route('carts.update', $cart->id) }}" method="post">
              @csrf
              <input type="number" name="product_quantity" class="form-control" value="{{ $cart->product_quantity }}"/>
              <button type="submit" class="btn btn-success ml-1">Update</button>
            </form>
          </td>
          <td>
            {{ $cart->product->price }} Taka
          </td>
          <td>
            @php
              $total_price += $cart->product->price * $cart->product_quantity;
            @endphp
            {{ $cart->product->price * $cart->product_quantity }} Taka
          </td>
          <td>
            <form class="form-inline" action="{{ route('carts.delete', $cart->id) }}" method="post">
              @csrf
              <input type="hidden" name="cart_id" />
              <button type="submit" class="btn btn-danger">Delete</button>
            </form>
          </td>
        </tr>
        @endforeach
        <tr>
          <td colspan="4"></td>
          <td>
            Total Ammount
          </td>
          <td colspan="2">
            <strong>{{ $total_price }} Taka</strong>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="float-right">
      <a href="#" class="btn btn-info btn lg">Continue Shopping</a>
      <a href="#" class="btn btn-warning btn lg">Checkout</a>
    </div>
  </div>

@endsection
