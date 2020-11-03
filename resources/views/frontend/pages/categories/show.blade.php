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
        <h3 class="txt-align mt-2 mb-3" >All Products in <span class="badge badge-info">{{ $category->name }} Category</span></h3>
        @php
          $products = $category->products()->paginate(9);
        @endphp

        @if ($products->count() > 0)
          @include('frontend.pages.product.partials.all_products_product')
        @else
          <div class="alart alart-warning">
            No product has added yet in this category!!
          </div>
        @endif

      </div>
      <div class="widget">

      </div>
     </div>
  </div>

</div>

<!-- end sidebar + content -->


@endsection
