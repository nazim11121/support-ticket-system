@extends('layouts/contentNavbarLayout')

@section('title', 'Dashboard')

@section('vendor-style')
<link rel="stylesheet" href="{{asset('public/assets/vendor/libs/apex-charts/apex-charts.css')}}">
<link rel="stylesheet" href="{{ asset('public/assets/jquery-toast-plugin/jquery.toast.min.css') }}" />
@endsection

<style>
  .card-body2 {
    background-image: url({{asset('public/storage/uploads/images/images/Card-Front.png')}});
    height: 35vh;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }
  .back-body {
    background-image: url({{asset('public/storage/uploads/images/images/Back-bg.png')}});
    height: 35vh;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
  }
  .body-section2 {
    font-family: "Montserrat", sans-serif;
    background-image: url({{asset('public/storage/uploads/images/images/a.png')}});
    height: 35vh;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
  }
  .green {
    color: #00903a;
  }
  .red {
    color: #ee181d;
  }
  .gray {
    color: #7f8081;
  }
  .font-size {
    font-size: 1vw;
  }
  .font-size2 {
    font-size: 0.5vw;
  }
  .font-size3 {
    font-size: 0.5vw;
  }
  .letter-spacing {
    letter-spacing: 4px;
  }
  .hover-effect-1 {
    transition: ease-in all 0.3s;
  }
  .hover-effect-1:hover {
    transform: scale(1.1);
  }
  .logo2 {
    position: absolute;
    bottom: 22%;
    right: 8%;
  }
  .front-last {
    background-color: #95abce77;
    display: inline-block;
    padding: 10px;
    font-size: 0.8vw;
    text-align: center;
    position: absolute;
    bottom: 2%;
    left: 15%;
  }
  .relative {
    position: relative;
  }
  .width {
    width: 60%;
  }
  @media screen and (max-width:576px) {
    .facilities{
      width: 100% !important;
    }
    .card-section{
      width:96% !important;
      margin: 0 2% !important;
      gap: 2%; 
    }
    .card-1{
      height: 18vh;
    }
    .front-last{
      left: 20%;
    }  .front-last{
      left: 25%;
    }
  }
  @media screen and (min-width: 577px) and (max-width: 1060px) {
    .facilities{
      width: 100% !important;
    }
  .font-size{
    font-size: 1.5vw;
  }
    .card-section{
      width:90% !important;
      margin: 0 5% !important;
      gap: 5%; 
    }
    .card-1{
      margin-top: 1%;
      height: 22vh;
    }
    .front-last{
      left: 20%;
    }
  }
  .img{
    width: 10%;
  }
  .img2{
    width: 20%;
  }
  .fw-bold{
    margin-bottom: 0.1rem!important;
  }
  .donor{
    background: #17a2b8!important;
  }
  .donor-footer{
    background: #1996aa!important;
    border-bottom-left-radius: 0.5rem;
    border-bottom-right-radius: 0.5rem;
  }
  .donor-footer:hover{
    background: #148A9D!important;
  }
  .hospital{
    background: #28A745!important;
  }
  .hospital-footer{
    background: #239b3f!important;
    border-bottom-left-radius: 0.5rem;
    border-bottom-right-radius: 0.5rem;
  }
  .hospital-footer:hover{
    background: #228E3B!important;
  }
  .university{
    background: #FFC107!important;
  }
  .university-footer{
    background: #eab30c!important;
    border-bottom-left-radius: 0.5rem;
    border-bottom-right-radius: 0.5rem;
  }
  .university-footer:hover{
    background: #D9A406!important;
  }
  .blood-bank{
    background: #DC3545!important;
  }
  .blood-bank-footer{
    background: #d12c3b!important;
    border-bottom-left-radius: 0.5rem;
    border-bottom-right-radius: 0.5rem;
  }
  .blood-bank-footer:hover{
    background: #C6303E!important;
  }
  .card-icon{
    float: right;
    margin-left: 100px;
    margin-top: -69px;
  }
  .icon{
    font-size: 45px!important;
    color: white;
  }
</style>

@section('vendor-script')
<script src="{{asset('public/assets/vendor/libs/apex-charts/apexcharts.js')}}"></script>
<script src="{{ asset('public/assets/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
<script src="{{ asset('public/assets/jquery-toast-plugin/toastDemo.js') }}"></script>
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
@endsection

@section('page-script')
<script src="{{asset('public/assets/js/dashboards-analytics.js')}}"></script>
@endsection

@section('content')
<div class="row">
  @php
    $user = Auth::user();
    $role = $user->getRoleNames()->first();
  @endphp
  @if($role != 'Admin')
  <div class="col-lg-12 mt-1 mb-4">
    <div class="card">
      <div class="d-flex align-items-end row">
        <div class="col-sm-12">
          <div class="card-body">
            <h5 class="card-title text-primary">Welcome {{Auth::user()->name}}! 🎉</h5>
            <p class="mb-4">Have a good day!!!</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  @php
    $ticket = \App\Models\Ticket::where('status', 'open')->where('created_by', Auth::user()->id)->get();
  @endphp
   @if($ticket)
    @foreach($ticket as $data)
    <div class="col-lg-3 col-md-12 mb-4">
        <div class="card">
          <div class="card-body">
            <div class="card-title d-flex align-items-start justify-content-between">
              <div>  
                
                <h3 class="card-title mb-2 text-black">{{$data->ticket_no??''}}</h3>
                <span class="text-white text-center badge badge-success">{{$data->status??''}}</span>
              </div>
            </div>
          </div>
          <a class="dropdown-item donor-footer text-center text-white" href="{{route('ticket.index')}}">View Details</a>
        </div>
    </div>
    @endforeach
   @endif
  @else
    <h4>Dashboard</h4>
    <div class="col-lg-3 col-md-12 mb-4">
        <div class="card donor">
          <div class="card-body">
            <div class="card-title d-flex align-items-start justify-content-between">
              <!-- <div class="avatar flex-shrink-0"> -->
              <div>  
                <h3 class="card-title mb-2 text-white">{{$openTicket}}</h3>
                <span class="text-white">Open Ticket</span>
                <div class="card-icon">
                  <a href="#"><i class="tf-icons bx bx-user menu-icon icon"></i></a>
                </div>
              </div>
            </div>
          </div>
          <a class="dropdown-item donor-footer text-center text-white" href="{{route('ticket.index')}}">View More</a>
        </div>
    </div>
    <div class="col-lg-3 col-md-12 mb-4">
        <div class="card hospital">
          <div class="card-body">
            <div class="card-title d-flex align-items-start justify-content-between">
              <div>  
                <h3 class="card-title mb-2 text-white">{{$closedTicket}}</h3>
                <span class="text-white">Closed Ticket</span>
                <div class="card-icon">
                  <a href="#"><i class="tf-icons mdi mdi-bank menu-icon icon"></i></a>
                </div>
              </div>
            </div>
          </div>
          <a class="dropdown-item hospital-footer text-center text-white" href="{{route('ticket.index')}}">View More</a>
        </div>
    </div>

  @endif
</div>
@endsection
