@extends('frontend.pages.users.master')

@section('sub-content')
  <div class='container'>
    <div class="card-body mb-2">
        <form method="POST" action="{{ route('user.profile.update') }}">
            @csrf

            <div class="form-group row">
                <label for="first_name" class="col-md-4 col-form-label text-md-right">First Name</label>

                <div class="col-md-6">
                    <input id="first_name" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ $user->first_name }}" required autocomplete="first_name" autofocus>

                    @if($errors->has('first_name'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('first_name') }}</strong>
                        </span>
                    @endif
                </div>
            </div>
            <div class="form-group row">
                <label for="last_name" class="col-md-4 col-form-label text-md-right">Last Name</label>

                <div class="col-md-6">
                    <input id="last_name" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ $user->last_name }}" required autocomplete="last_name" autofocus>

                    @if($errors->has('last_name'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('last_name') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="username" class="col-md-4 col-form-label text-md-right">Username</label>

                <div class="col-md-6">
                    <input id="username" type="text" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ $user->username }}" required autocomplete="username" autofocus>

                    @if($errors->has('username'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('username') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                <div class="col-md-6">
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ $user->email }}" required autocomplete="email">

                    @if($errors->has('email'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="phone_no" class="col-md-4 col-form-label text-md-right">Phone Number</label>

                <div class="col-md-6">
                    <input id="phone_no" type="text" class="form-control @error('phone_no') is-invalid @enderror" name="phone_no" value="{{ $user->phone_no }}" required autocomplete="phone_no">

                    @if($errors->has('phone_no'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('phone_no') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="division_id" class="col-md-4 col-form-label text-md-right">Division</label>

                <div class="col-md-6">
                    <select class="form-control" name="division_id">
                      <option value="">Please select your division</option>
                      @foreach ($divisions as $division)
                        <option value="{{ $division->id }}" {{ $user->division_id == $division->id ? 'selected' : '' }}>{{ $division->name }}</option>
                      @endforeach
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="district_id" class="col-md-4 col-form-label text-md-right">District</label>

                <div class="col-md-6">
                    <select class="form-control" name="district_id">
                      <option value="">Please select your district</option>
                      @foreach ($districts as $district)
                        <option value="{{ $district->id }}" {{ $user->district_id == $district->id ? 'selected' : '' }}>{{ $district->name }}</option>
                      @endforeach
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label for="street_address" class="col-md-4 col-form-label text-md-right">Street Address</label>

                <div class="col-md-6">
                    <input id="street_address" type="text" class="form-control @error('street_address') is-invalid @enderror" name="street_address" value="{{ $user->street_address }}" required autocomplete="street_address">

                    @if($errors->has('street_address'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('street_address') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="shipping_address" class="col-md-4 col-form-label text-md-right">Shipping Address</label>

                <div class="col-md-6">
                    <textarea id="shipping_address" class="form-control @error('shipping_address') is-invalid @enderror" rows="4" name="shipping_address">{{ $user->shipping_address }}</textarea>

                    @if($errors->has('shipping_address'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('shipping_address') }}</strong>
                        </span>
                    @endif
                </div>
            </div>

            <div class="form-group row">
                <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('New Password') }}</label>

                <div class="col-md-6">
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" autocomplete="new-password">

                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>



            <div class="form-group row mb-0">
                <div class="col-md-6 offset-md-4">
                    <button type="submit" class="btn btn-primary">
                        {{ __('Update Profile') }}
                    </button>
                </div>
            </div>
        </form>
    </div>

  </div>

@endsection
