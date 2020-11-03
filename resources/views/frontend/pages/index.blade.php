@extends('frontend.layouts.master')

@section('content')

<!-- Start sidebar + content -->

<div class="container ">

  <div class="row">
     <div class="col-md-3">

       @include('frontend.partials.product-slidebar')

     </div>
     <div class="col-md-9">
      <div class="containerr">
        <img src="/images/faces/deal1.jpg" alt="image"/>
      </div>
      <div class="widget">

      </div>
     </div>
     <div class="col-md-12 margin-top-20">
      <div class="widget">
        <h3 class="txt-align" >Feature Products</h3>
        <h6 class="txt-align" >All the feature products are displayed here.</br> Grab yours with excited offers</h6>

      </div>
      <div class="widget margin-top-20">
        @include('frontend.pages.product.partials.all_products')
      </div>
      <div class="widget">

      </div>
    </div>
  </div>

</div>

<!-- end sidebar + content -->


@endsection
