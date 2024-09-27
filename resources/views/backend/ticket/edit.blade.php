@extends('layouts/contentNavbarLayout')

@section('page-script')
<script src="{{ asset('assets/js/img-preview.js') }}"></script>
@include('includes.scripts.division_district_auto_load')
@include('includes.scripts.district_thana_auto_load')
@endsection

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Event /</span> Edit
</h4>
<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">Event Details Edit</h5>
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('event.update',$event) }}" enctype="multipart/form-data">
          @csrf
          @method('PATCH')
          <div class="row">
            <div class="mb-12 col-md-12">
              <label for="name" class="form-label">Event Name</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="name" name="name" value="{{$event->name}}" required="" />
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="moto" class="form-label">Event Moto</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="moto" name="moto" value="{{$event->moto}}" required="" />
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="mobile" class="form-label">Contact Number</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="mobile" name="mobile" value="{{$event->mobile}}" pattern="^(013|017|014|019|015|016|018)[0-9]{8}$" required="" />
              <span class="mb-12 col-md-12 badge bg-info" id="mobileValidation" style="text-align: left;"></span>
            </div>
            <div class="mb-12 col-md-4 mt-4">
              <label for="description" class="form-label">Division <span class="requiredStar" style="color: red"> * </span></label>
              <select class="form-control select2" name="division_id" id="division_id" required="">
                <option>Select one..</option>
                @foreach($division as $value)
                  <option value="{{ $value->id }}" {{ $event->division_id == $value->id ? 'selected' : '' }}>{{ $value->name }}</option>
                @endforeach
              </select>
            </div>
            <div class="mb-12 col-md-4 mt-4">
              <label for="description" class="form-label">District</label>
              <select class="form-control" name="district_id" id="district_id">
                <!-- <option value="">Select one..</option> -->
              </select>
            </div>
            <div class="mb-12 col-md-4 mt-4">
              <label for="description" class="form-label">Thana</label>
              <select class="form-control" name="thana_id" id="thana_id">
                <!-- <option value="">Select one..</option> -->
              </select>
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="description" class="form-label">Address <span class="requiredStar" style="color: red"> * </span></label>
              <input type="text" id="address-input" name="address" value="{{$event->address}}" class="form-control map-input">
              <input type="hidden" name="address_latitude" id="address-latitude" value="{{$event->address_latitude}}" />
              <input type="hidden" name="address_longitude" id="address-longitude" value="{{$event->address_longitude}}" />
            </div>
            <div id="address-map-container" style="width:100%;height:300px; ">
                <div style="width: 100%; height: 100%" id="address-map"></div>
            </div>
            <div class="mb-12 col-md-6 mt-4">
              <label for="start_date" class="form-label">Start Date <span class="requiredStar" style="color: red"> * </span></label>
              <input type="date" name="start_date" id="start_date" value="{{$event->start_date}}" class="form-control">
            </div>
            <div class="mb-12 col-md-6 mt-4">
              <label for="end_date" class="form-label">End Date <span class="requiredStar" style="color: red"> * </span></label>
              <input type="date" name="end_date" id="end_date" value="{{$event->end_date}}" class="form-control">
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="description" class="form-label">Description</label>
              <textarea type="text" class="form-control" id="description" name="description" rows="4" value="{{$event->description}}">{{$event->description}}</textarea>
            </div>
            <div class="mb-12 col-md-12 mt-4">
              @if($event->image!=null)
                <img id='imgs' src="{{ asset('/storage/uploads/event') }}/{{$event->image}}" style="width:200px; height:145px;  margin-left:2px; margin-bottom: 10px">
              @else
                <img id='imgs' src="{{ asset('/storage/uploads/default/default.jpg') }}" style="width:200px; height:145px;  margin-left:2px; margin-bottom: 10px">
              @endif                   <br>
              <label class="control-label">Image/Banner <span class="requiredStar" style="color: red"> * </span></label>
                <input type="file" class="form-control dropify" name="image" id="image" data-max-file-size="5M" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file=""><br>
                <span class="validation-msg" id="type-error">
                  @error('image')<p class="text-danger">{{ $message }}</p>@enderror
                </span>
                
            </div>
            <div class="mb-12 col-md-12">
              <label class="control-label">Status</label>&nbsp;&nbsp;
              <label>
                {!! Form::checkbox('status', '1', $event->status, ['id' => 'status']) !!}
                Published<i class="fa fa-question-circle" data-toggle="tooltip" title="" data-original-title="you can Publish or Unpublish this Hospital"></i>
              </label>
            </div>
          </div><br>
          <div class="mt-2">
            <button type="submit" class="btn btn-primary me-2">Update</button>
            <button type="reset" class="btn btn-outline-secondary" onclick="window.location='{{ route('event.index') }}'">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection

<script src="{{asset('assets/frontend/bootstrap5/js/jquery(1.9.1).min.js')}}"></script>
<!-- <script src="https://code.jquery.com/jquery.js"></script> 
<script async defer src="https://maps.googleapis.com/maps/api/js?v=3.exp&callback=initialize"></script> -->
<script src="{{ asset('assets/js/file-upload.js') }}"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDMPF9XT0Izipx021nUCr9L9budataaC0c&libraries=places&callback=initialize"></script>

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
<!-- Load previous data -->
<script type="text/javascript">
    $(document).ready(function() {
        let district_id = "{{ isset($group->district_id) ? $group->district_id : 0 }}";
                
        let division_id = $("#division_id").val();

        $.ajax({
            url: "{{url('/admin/hospital/division-wise-district/')}}"+'/'+division_id,
            type: "GET",
            dataType: "JSON",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function(data){

            let district_id =  $('#district_id').empty();
            let $option_front = "";
            let $option_select ="";
            let $option_back = "";
            let $option ="";

            district_id.append('<option class="form-control" value="" selected disabled>Select District</option>');
            $.each(data,function(key,val){
                $option_front = '<option value ="' + val.id + '" ';
                $option_select = val.id == {{isset($group->district_id) ? $group->district_id : 0}} ? 'selected' : '';

                $option_back = '>' + val.name+'</option>';
                $option = $option_front +$option_select+ $option_back;
                district_id.append($option);
                
                })
                var a = $option_select;
                thanafunction(a);
            }
        })

              function thanafunction(categoryId) {
                let thana_id = "{{ isset($event->thana_id) ? $event->thana_id : 0 }}";
                        
                let district_id = $("#district_id").val();

                $.ajax({
                    url: "{{url('/admin/hospital/district-wise-thana/')}}"+'/'+district_id,
                    type: "GET",
                    dataType: "JSON",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(data){

                    let district_id =  $('#thana_id').empty();
                    let $option_front = "";
                    let $option_select ="";
                    let $option_back = "";
                    let $option ="";

                    district_id.append('<option class="form-control" value="" selected disabled>Select Thana</option>');
                    $.each(data,function(key,val){
                        $option_front = '<option value ="' + val.id + '" ';
                        $option_select = val.id == {{isset($event->thana_id) ? $event->thana_id : 0}} ? 'selected' : '';
                        $option_back = '>' + val.name+'</option>';
                        $option = $option_front +$option_select+ $option_back;
                        district_id.append($option);
                        })
                    }
                })
               } 
    });
</script>
<!-- Start date , End date condition -->
<script>
  $(document).ready(function() {
    $("#start_date").on("change", function() {
      var startDate = new Date($(this).val());
      var endDate = new Date($("#end_date").val());

      if (startDate > endDate) {
        alert("Start date cannot be greater than end date");
        $(this).val(""); // Clear the input value
      }
    });

    $("#end_date").on("change", function() {
      var startDate = new Date($("#start_date").val());
      var endDate = new Date($(this).val());

      if (endDate < startDate) {
        alert("End date cannot be less than start date");
        $(this).val(""); // Clear the input value
      }
    });
  });
</script>