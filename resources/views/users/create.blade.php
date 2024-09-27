@extends('layouts/contentNavbarLayout')

@section('page-script')
  <script src="{{ asset('assets/js/img-preview.js') }}"></script>
@endsection

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Settings / Users /</span> Create
</h4>

<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">Users Details</h5>
      <!-- Account -->
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('users.store') }}" enctype="multipart/form-data">
            @csrf
          <div class="row">
            <div class="mb-12 col-md-6">
              <label>First Name <span class="required" style="color:red">*</span></label>
              <input type="text" name="first_name" class="form-control" placeholder="Enter first name" pattern="[A-Za-z-.]+" required />
            </div>
            <div class="mb-12 col-md-6">
              <label>Last Name <span class="required" style="color:red">*</span></label>
              <input type="text" name="last_name" class="form-control" placeholder="Enter last name" pattern="[A-Za-z]+" required />
            </div>
            <div class="mb-3 col-md-6 mt-4">
              <label for="email" class="form-label">Email</label><span class="requiredStar" style="color: red"> * </span>
              <input type="email" class="form-control" id="email" name="email" required="" />
            </div>
            <div class="mb-3 col-md-6 mt-4">
              <label for="mobile" class="form-label">Mobile</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="mobile" name="mobile" required="" />
            </div>
            <div class="mb-3 col-md-6 mt-4">
              <label for="mobile" class="form-label">Password</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="password" name="password" required="" />
            </div>
            <div class="mb-3 col-md-6 mt-4">
              <label for="mobile" class="form-label">Confirm Password</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="confirm-password" name="confirm-password" required="" />
            </div>
            <div class="mb-3 col-md-4 mt-4">
              <label for="roles" class="form-label">Role</label><span class="requiredStar" style="color: red"> * </span>
              <select name="roles" class="form-control custom-select" required="">
                <option value="">Select one..</option>
                @foreach($roles as $value)
                  <option value="{{ $value }}">{{ $value }}</option>
                @endforeach
              </select>
             <!--  {!! Form::select('roles[]', $roles,[], array('class' => 'form-control','multiple')) !!} -->
            </div>
          </div>
          <div class="mt-2">
            <button type="submit" class="btn btn-primary me-2">Save</button>
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
<!-- <script src="https://code.jquery.com/jquery.js"></script>  -->
<script async defer src="https://maps.googleapis.com/maps/api/js?v=3.exp&callback=initialize"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMPF9XT0Izipx021nUCr9L9budataaC0c&libraries=places&callback=initialize" async defer></script>
<!-- <script src="/js/mapInput.js"></script> -->

<script>
    function initialize() {

            $('form').on('keyup keypress', function (e) {
                var keyCode = e.keyCode || e.which;
                if (keyCode === 13) {
                    e.preventDefault();
                    return false;
                }
            });
            const locationInputs = document.getElementsByClassName("map-input");

            const autocompletes = [];
            const geocoder = new google.maps.Geocoder;
            for (let i = 0; i < locationInputs.length; i++) {

                const input = locationInputs[i];
                const fieldKey = input.id.replace("-input", "");
                const isEdit = document.getElementById(fieldKey + "-latitude").value != '' && document.getElementById(fieldKey + "-longitude").value != '';

                const latitude = parseFloat(document.getElementById(fieldKey + "-latitude").value) || 23.777176;
                const longitude = parseFloat(document.getElementById(fieldKey + "-longitude").value) || 90.399452;

                const map = new google.maps.Map(document.getElementById(fieldKey + '-map'), {
                    center: {lat: latitude, lng: longitude},
                    zoom: 14
                });
                const marker = new google.maps.Marker({
                    map: map,
                    position: {lat: latitude, lng: longitude},
                });

                marker.setVisible(isEdit);

                const autocomplete = new google.maps.places.Autocomplete(input);
                autocomplete.key = fieldKey;
                autocompletes.push({input: input, map: map, marker: marker, autocomplete: autocomplete});
            }

            for (let i = 0; i < autocompletes.length; i++) {
                const input = autocompletes[i].input;
                const autocomplete = autocompletes[i].autocomplete;
                const map = autocompletes[i].map;
                const marker = autocompletes[i].marker;

                google.maps.event.addListener(autocomplete, 'place_changed', function () {
                    marker.setVisible(false);
                    const place = autocomplete.getPlace();

                    geocoder.geocode({'placeId': place.place_id}, function (results, status) {
                        if (status === google.maps.GeocoderStatus.OK) {
                            const lat = results[0].geometry.location.lat();
                            const lng = results[0].geometry.location.lng();
                            setLocationCoordinates(autocomplete.key, lat, lng);
                        }
                    });

                    if (!place.geometry) {
                        window.alert("No details available for input: '" + place.name + "'");
                        input.value = "";
                        return;
                    }

                    if (place.geometry.viewport) {
                        map.fitBounds(place.geometry.viewport);
                    } else {
                        map.setCenter(place.geometry.location);
                        map.setZoom(14);
                    }
                    marker.setPosition(place.geometry.location);
                    marker.setVisible(true);

                });
            }
    }

    function setLocationCoordinates(key, lat, lng) {
            const latitudeField = document.getElementById(key + "-" + "latitude");
            const longitudeField = document.getElementById(key + "-" + "longitude");
            latitudeField.value = lat;
            longitudeField.value = lng;
    }
</script>
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
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+(com)+$/;    
    // var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
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
<!-- Age calculation function -->
<script type="text/javascript">
  $(document).ready(function() {
      $("#birth_date").on("input", function() {
        
        $("#age").prop('readOnly',true);

          var birthdate = new Date($(this).val());
          var currentDate = new Date();

          var age = currentDate.getFullYear() - birthdate.getFullYear();
          var monthDiff = currentDate.getMonth() - birthdate.getMonth();
          
          if (monthDiff < 0 || (monthDiff === 0 && currentDate.getDate() < birthdate.getDate())) {
              age--;
          }

          $("#age").val(age);

          if(age < 15 || age>99){
            var notice = 'Your age can not be under 15 or over 99.';
            $("#age_notice").html(notice);
            $(".submit").prop('disabled', true);
            $(".submit").css('cursor', 'not-allowed');
          }else{
            $("#age").val(age);
            $("#age_notice").html('');
            $(".submit").prop('disabled', false);
            $(".submit").css('cursor', 'auto');
          }
      });
  });
</script>