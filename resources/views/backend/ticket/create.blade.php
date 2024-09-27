@extends('layouts/contentNavbarLayout')

@section('content')
<h4 class="fw-bold py-3 mb-4">
  <span class="text-muted fw-light">Ticket </span> 
</h4>
<div class="row">
  <div class="col-md-12">
    <div class="card mb-4">
      <h5 class="card-header">Open New Ticket</h5>
      <hr class="my-0">
      <div class="card-body">
        <form id="formAccountSettings" method="POST" action="{{ route('ticket.store') }}" enctype="multipart/form-data">
        	@csrf
          <div class="row">
            <div class="mb-12 col-md-12">
              <label for="name" class="form-label">Ticket No.</label><span class="requiredStar" style="color: red"> * </span>
              <input type="text" class="form-control" id="ticket_no" name="ticket_no" value="{{$genrateTicketNo}}" required="" readonly/>
            </div>
            <div class="mb-12 col-md-12 mt-4">
              <label for="description" class="form-label">Description</label><span class="requiredStar" style="color: red"> * </span>
              <textarea type="text" class="form-control" id="description" name="description" rows="4" required></textarea>
            </div>
          </div><br>
          <div class="mt-3">
            <button type="submit" id="submit" class="btn btn-primary me-2">Submit</button>
            <button type="reset" class="btn btn-outline-secondary" onclick="window.location='{{ route('ticket.index') }}'">Cancel</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection

<script src="{{asset('assets/frontend/bootstrap5/js/jquery(1.9.1).min.js')}}"></script>



