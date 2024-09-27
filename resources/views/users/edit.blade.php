@extends('layouts/contentNavbarLayout')

@section('page-script')
  <script src="{{ asset('assets/js/img-preview.js') }}"></script>
  @include('includes.scripts.division_district_auto_load')
  @include('includes.scripts.district_thana_auto_load')
@endsection

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Settings / Users /</span> Edit
</h4>

<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">Users Details Edit</h5>
      <!-- Account -->
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('users.update', $user->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PATCH')
          <div class="row">
            <div class="mb-3 col-md-6">
              <label for="name" class="form-label">User's Name</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="name" name="name" value="{{$user->name}}" required="" />
            </div>
            <div class="mb-3 col-md-6">
              <label for="email" class="form-label">Email</label><span class="requiredStar" style="color: red"> * </span>
              <input type="email" class="form-control" id="email" name="email" value="{{$user->email}}" required="" />
            </div>
            <div class="mb-3 col-md-6">
              <label for="mobile" class="form-label">Password</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="password" name="password" value="{{$user->password}}" required="" />
            </div>
            <div class="mb-3 col-md-6">
              <label for="mobile" class="form-label">Confirm Password</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="confirm-password" name="confirm-password" value="{{$user->password}}" required="" />
            </div>
            <div class="mb-3 col-md-6">
              <label for="roles" class="form-label">Role</label><span class="requiredStar" style="color: red"> * </span>
              <select name="roles" class="form-control custom-select" required="">
                @foreach($roles as $value)
                  <option value="{{ $value }}" @if($value == $userRole) selected @endif>{{ $value }}</option>
                @endforeach
              </select>
             </div>
          </div>
          <div class="mt-2">
            <button type="submit" class="btn btn-primary me-2">Update</button>
            <button type="reset" class="btn btn-outline-secondary" onclick="window.location='{{ route('users.index') }}'">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="{{ asset('assets/js/file-upload.js') }}"></script>
<script src="https://code.jquery.com/jquery.js"></script> 


<!-- Mobile number and Email address validation -->
<script>
$(document).ready(function() {
    $("#mobile").on("input", function() {
        var mobileNumber = $(this).val();

        if (this.validity.valid) {
            $("#mobileValidation").text("");
            $("#submit").attr('disabled',false);
        } else {
            $("#mobileValidation").text("Invalid mobile number.");
            $("#submit").attr('disabled',true);
        }
    });
});
$(document).ready(function () {        
    
  $("#email").on("input", function() {   
    var inputvalues = $(this).val();    
    // var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+(com)+$/;   
    if(!regex.test(inputvalues)){    
      $("#emailValidation").text("Invalid Email address.");
      $("#submit").attr('disabled',true);
      return regex.test(inputvalues);    
    }else{
      $("#emailValidation").text("");
      $("#submit").attr('disabled',false);
    }    
  });  
 }); 
</script>
