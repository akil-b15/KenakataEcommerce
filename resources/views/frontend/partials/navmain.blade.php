<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">


    <!--<div class="logo"><a href="#"><img src="images/defaults/logo.png"></a></div>-->
     <a class="logo" href="{{route('index')}}">
       <img src="{{ asset("images/defaults/logo.png") }}" alt="">
     </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="{{route('index')}}"> Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('products')}}">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('products')}}">Today's Deals</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('products')}}">Track My Order</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('contact')}}">Contact</a>
        </li>
        <li class="nav-item ml-4">
          <form class="form-inline my-2 my-lg-0" action="{!! route('search') !!}" method="get">
            <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
            <div class="input-group mb-3">
              <input type="text" class="form-control" name="search" placeholder="Search Products" aria-label="Recipient's username" aria-describedby="button-addon2">
              <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2" ><i class="fa fa-search"> </i></button>
              </div>
            </div>
          </form>
        </li>
      <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li> -->

      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" href="{{ route('carts') }}">

              <button class="bts">
                <span class="mt-1s">Cart</span>
                <span class="badge badge-warning">
                  {{ App\Models\Cart::totalItems() }}
                </span>
              </button>

            </a>
        </li>
        @guest
            <li class="nav-item">
                <a class="nav-link mt-2" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
                <li class="nav-item">
                    <a class="nav-link mt-2" href="{{ route('register') }}">{{ __('Sign Up') }}</a>
                </li>
            @endif
        @else
            <li class="nav-item dropdown">

                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    <img src="{{ App\Helpers\ImageHelper::getUserImage(Auth::user()->id) }}" class="img rounded-circle" style="width:40px">
                    {{ Auth::user()->first_name }} {{ Auth::user()->last_name }}
                </a>

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{ route('user.dashboard') }}">
                        {{ __('My Dashboard') }}
                    </a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>


                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </div>
            </li>
        @endguest
      </ul>

    </div>
    </div>
    </nav>

    <!-- end navbar -->
