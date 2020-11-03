<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>
      @yield('title', 'Kenakata.com - Online Shopping')
    </title>

    @include('frontend.partials.styles')
  </head>
  <body>

    <div class="wrapper">

    <!-- Navigation -->
        @include('frontend.partials.navtwo')
        @include('frontend.partials.navthree')
        @include('frontend.partials.messages')

        @yield('content')
        <br>
        <br>
        <br>
        <div class="wrapper">
          @include('frontend.partials.footer')
        </div>



    </div>

    @include('frontend.partials.scripts')

  </body>

</html>
