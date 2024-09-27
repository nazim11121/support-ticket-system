@extends('layouts/contentNavbarLayout')

<link rel="stylesheet" href="{{ asset('assets/datatables4/css/bootstrap.css') }}" />
<link rel="stylesheet" href="{{ asset('assets/datatables4/css/dataTables.bootstrap.min.css') }}" />
<link rel="stylesheet" href="{{ asset('assets/jquery-toast-plugin/jquery.toast.min.css') }}" />
<style>
	.text-secondary{
		word-break: break-all;
		font-size: smaller;
	}
</style>
@section('content')
<div class="col-md-12">
  <h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">Donor / </span> Details
    <a href="{{ route('donor.edit', $details->donor_id) }}" class="btn btn-primary text-white float-right">Edit</a>
  </h4>
</div>
<div class="card">
  <div class="card-body table-responsive">
  	<div class="container">
  	    <div class="main-body">
  	          <div class="row gutters-sm">
  	            <div class="col-md-4 mb-3">
  	              <div class="card">
  	                <div class="card-body">
  	                  <div class="d-flex flex-column align-items-center text-center">
  	                  	@if(!empty($details->donorDetails->image))
  	                    	<img src="{{asset('/storage/uploads/donor')}}/{{$details->donorDetails->image}}" alt="donor-image" class="rounded-circle" width="150">
  	                    @else
  	                    	<img src="{{asset('/storage/uploads/donor/default.jpg')}}" alt="donor-image" class="rounded-circle" width="150">
  	                    @endif
  	                    <div class="mt-3">
  	                      <h4>{{ $details->donorDetails->first_name ?? ''}} {{ $details->donorDetails->last_name ?? ''}}</h4>
  	                      <p class="text-secondary mb-1">{{ $details->donorDetails->occupation ?? '' }}</p>
  	                      <p class="text-muted font-size-sm">
  	                      	@if(!empty($details->donorDetails->address))
                              {{ $details->donorDetails->address }}
                            @elseif(!empty($details->donorDetails->thana_id))
                              {{ $details->donorDetails->thana->name??'' }}@if($details->donorDetails->thana_id!=null){{','}}@endif {{ $details->donorDetails->district->name ??'' }}@if($details->donorDetails->thana_id!=null){{','}}@endif{{ $details->donorDetails->division->name }}
                            @else
                              {{''}}
                            @endif
  	                      </p>
  	                      <span class="badge badge-info">No of Donation ({{$bloodDonateCount ?? '0'}})</span>
  	                      <span class="badge badge-secondary">No of Post ({{$postCount ?? '0'}})</span>
  	                      <span class="badge badge-warning mt-1">Balance (0)</span>
  	                      <!-- <button class="btn btn-primary">Follow</button>
  	                      <button class="btn btn-outline-primary">Message</button> -->
  	                    </div>
  	                  </div>
  	                </div>
  	              </div>
  	              <div class="card mt-3">
  	                <ul class="list-group list-group-flush">
  	                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
  	                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook mr-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg><span class="text-secondary">{{$details->donorDetails->facebook_id ?? ''}}</span></h6>
  	                  </li>	
  	                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
  	                    <h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram mr-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg><span class="text-secondary">{{$details->donorDetails->instagram_id ?? ''}}</span></h6>
  	                  </li>
  	                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
  	                    <h6 class="mb-0"><svg height="24px" width="24px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 461.001 461.001" xml:space="preserve"><g><path style="fill:#F61C0D;" d="M365.257,67.393H95.744C42.866,67.393,0,110.259,0,163.137v134.728c0,52.878,42.866,95.744,95.744,95.744h269.513c52.878,0,95.744-42.866,95.744-95.744V163.137C461.001,110.259,418.135,67.393,365.257,67.393z M300.506,237.056l-126.06,60.123c-3.359,1.602-7.239-0.847-7.239-4.568V168.607c0-3.774,3.982-6.22,7.348-4.514l126.06,63.881C304.363,229.873,304.298,235.248,300.506,237.056z"/></g></svg>&nbsp; <span class="text-secondary">{{$details->donorDetails->youtube_id ?? ''}}</span></h6>
  	                  </li>
  	                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
  	                    <h6 class="mb-0"><svg height="24px" width="24px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 382 382" xml:space="preserve"><path style="fill:#0077B7;" d="M347.445,0H34.555C15.471,0,0,15.471,0,34.555v312.889C0,366.529,15.471,382,34.555,382h312.889C366.529,382,382,366.529,382,347.444V34.555C382,15.471,366.529,0,347.445,0z M118.207,329.844c0,5.554-4.502,10.056-10.056,10.056H65.345c-5.554,0-10.056-4.502-10.056-10.056V150.403c0-5.554,4.502-10.056,10.056-10.056h42.806c5.554,0,10.056,4.502,10.056,10.056V329.844z M86.748,123.432c-22.459,0-40.666-18.207-40.666-40.666S64.289,42.1,86.748,42.1s40.666,18.207,40.666,40.666S109.208,123.432,86.748,123.432z M341.91,330.654c0,5.106-4.14,9.246-9.246,9.246H286.73c-5.106,0-9.246-4.14-9.246-9.246v-84.168c0-12.556,3.683-55.021-32.813-55.021c-28.309,0-34.051,29.066-35.204,42.11v97.079c0,5.106-4.139,9.246-9.246,9.246h-44.426c-5.106,0-9.246-4.14-9.246-9.246V149.593c0-5.106,4.14-9.246,9.246-9.246h44.426c5.106,0,9.246,4.14,9.246,9.246v15.655c10.497-15.753,26.097-27.912,59.312-27.912c73.552,0,73.131,68.716,73.131,106.472L341.91,330.654L341.91,330.654z"/></svg>&nbsp; <span class="text-secondary">{{$details->donorDetails->linkedIn_id ?? ''}}</span></h6>
  	                  </li>
  	                </ul>
  	              </div>
  	            </div>
  	            <div class="col-md-8">
  	              <div class="card mb-3">
  	                <div class="card-body">
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Full Name</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->first_name ?? ''}} {{ $details->donorDetails->last_name ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Email</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->email ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Mobile</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->mobile ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Area</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
                          @if($details->donorDetails->thana_id ?? '')
                            {{ $details->donorDetails->thana->name??'' }}@if($details->donorDetails->thana_id!=null){{','}}@endif {{ $details->donorDetails->district->name ??'' }}@if($details->donorDetails->thana_id!=null){{','}}@endif{{ $details->donorDetails->division->name }}
                          @endif
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Gender</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->gender ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Blood Group</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->blood_group ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Birth Date</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ date("d-m-Y", strtotime($details->donorDetails->birth_date ?? '')) ?? '' }}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Age</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->age ?? '' }}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">First Time Donor</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                    	@if(!empty($details->donorDetails->donate_check) && $details->donorDetails->donate_check=='1')
  	                    		<span class="badge badge-success">Yes</span>
  	                    	@else
  	                    		<span class="badge badge-primary">No</span>
  	                    	@endif	
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Last Donated Date</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                    	@if($details->donorDetails->last_donate_date ?? '')
  	                    		{{ $details->donorDetails->last_donate_date }}
  	                    	@else
  	                    		<span class="badge badge-primary">No</span>
  	                    	@endif
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  @if(!empty($details->donorDetails->occupation) && $details->donorDetails->occupation=="Student")
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">University</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->university->name ?? '' }}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  @endif
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Near Hospital</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->hospital->name ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">User ID</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->user_id ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Refferal ID</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->refer_id ?? ''}} ({{$details->donorDetails->refer->first_name ?? ''}} {{$details->donorDetails->refer->last_name ?? ''}})
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Interest To Work</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                    	@if(!empty($details->donorDetails->interested_work) && $details->donorDetails->interested_work=="1")
  	                    		<span class="badge badge-success">Yes</span>
  	                    	@else
  	                    		<span class="badge badge-primary">No</span>
  	                    	@endif
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Connected Group</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                     	@if(!empty($details->donorDetails->group_id))
  	                    		{{ $details->donorDetails->group->name ?? ''}}
  	                    	@else
  	                    		<span class="badge badge-primary">No</span>
  	                    	@endif
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">NID/Birth Certificate Number</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->nid_no ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Height(CM)</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->height ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <div class="row">
  	                    <div class="col-sm-3">
  	                      <h6 class="mb-0">Weight(KG)</h6>
  	                    </div>
  	                    <div class="col-sm-9 text-secondary">
  	                      {{ $details->donorDetails->weight ?? ''}}
  	                    </div>
  	                  </div>
  	                  <hr>
  	                  <!-- <div class="row">
  	                    <div class="col-sm-12">
  	                      <a class="btn btn-info" href="{{ route('donor.edit', $details->id) }}">Edit</a>
  	                    </div>
  	                  </div> -->
  	                </div>
  	              </div>

  	              <!-- <div class="row gutters-sm">
  	                <div class="col-sm-6 mb-3">
  	                  <div class="card h-100">
  	                    <div class="card-body">
  	                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
  	                      <small>Web Design</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Website Markup</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>One Page</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Mobile Template</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Backend API</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                    </div>
  	                  </div>
  	                </div>
  	                <div class="col-sm-6 mb-3">
  	                  <div class="card h-100">
  	                    <div class="card-body">
  	                      <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">assignment</i>Project Status</h6>
  	                      <small>Web Design</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Website Markup</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 72%" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>One Page</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 89%" aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Mobile Template</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                      <small>Backend API</small>
  	                      <div class="progress mb-3" style="height: 5px">
  	                        <div class="progress-bar bg-primary" role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100"></div>
  	                      </div>
  	                    </div>
  	                  </div>
  	                </div>
  	              </div> -->



  	            </div>
  	          </div>

  	        </div>
  	    </div>

  </div>
</div>
@endsection

<script src="{{ asset('assets/datatables4/js/jquery-3.5.1.js') }}"></script>
<script src="{{ asset('assets/datatables4/js/jquery.dataTables.min.js') }}" defer></script>
<script src="{{ asset('assets/datatables4/js/dataTables.bootstrap.min.js') }}" defer></script>
<script src="{{ asset('assets/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
<script src="{{ asset('assets/jquery-toast-plugin/toastDemo.js') }}"></script>
<script type="text/javascript">
  $(document).ready(function () {
    $('#example').DataTable();
  });
</script>
<script type="text/javascript">
  $(document).ready(function () {
    @if (session('success'))
    showSuccessToast('{{ session("success") }}');
    @elseif(session('warning'))
    showWarningToast('{{ session("warning") }}');
    @elseif(session('danger'))
    showDangerToast('{{ session("danger") }}');
    @endif
  });
</script>
