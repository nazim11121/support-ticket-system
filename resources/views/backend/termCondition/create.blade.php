@extends('layouts/contentNavbarLayout')

@section('page-script')
<script src="{{ asset('assets/js/img-preview.js') }}"></script>
@endsection

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Terms and Conditions /</span> Create
</h4>
<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">Terms and Conditions Details</h5>
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('term-condition.store') }}" enctype="multipart/form-data">
        	@csrf
          <div class="row">
            <div class="mb-12 col-md-12">
              <label for="faq_title" class="form-label">Type</label><span class="requiredStar" style="color: red"> * </span>
              <select class="form-control select2" id="type" name="type" required="">
                <option value="privacy-policy">Privacy Policy</option>
                <option value="term-condition">Terms & Conditions</option>
                <option value="questions">Questions</option>
              </select>
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="faq_title" class="form-label">Header Title</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="title" name="title" required="" />
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="description" class="form-label">Description</label><span class="requiredStar" style="color: red"> * </span>
              <textarea type="text" class="form-control" id="summary-ckeditor" name="description" rows="4" required=""></textarea>
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label class="control-label">Status</label>&nbsp;&nbsp;
              <label>
                {!! Form::checkbox('status', '1', null, ['id' => 'status']) !!}
                Published<i class="fa fa-question-circle" data-toggle="tooltip" title="" data-original-title="you can Publish or Unpublish this Hospital"></i>
              </label>
            </div>
          </div><br>
          <div class="mt-3">
            <button type="submit" id="submit"  class="btn btn-primary me-2">Save</button>
            <button type="reset" class="btn btn-outline-secondary" onclick="window.location='{{ route('term-condition.index') }}'">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="{{ asset('assets/js/file-upload.js') }}"></script>
<script src="{{ asset('/assets/admin/ckeditor/ckeditor.js') }}"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
      CKEDITOR.replace('summary-ckeditor');
  });
</script>




