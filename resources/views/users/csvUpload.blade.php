@extends('layouts/contentNavbarLayout')

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Settings / Users /</span> CSV Upload
</h4>

<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">CSV Upload</h5>
      <!-- Account -->
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('users.csv.store') }}" enctype="multipart/form-data">
          @csrf
          <div class="row">
            <div class="mb-12 col-md-6">
              <label>File <span class="required" style="color:red">*</span></label>
              <input type="file" name="file" class="form-control" required/>
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
