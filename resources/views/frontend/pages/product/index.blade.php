@extends('frontend.layouts.master')

@section('content')

<!-- Start sidebar + content -->

<div class="container">

  <div class="row">
     <div class="col-md-3">

      @include('frontend.partials.product-slidebar')

     </div>
     <div class="col-md-9">
      <div class="widget">
        <h3 class="txt-align">All Products</h3>
        @include('frontend.pages.product.partials.all_products_product')

      </div>
      <div class="widget">

      </div>
     </div>
  </div>

</div>

<!-- end sidebar + content -->


@endsection
