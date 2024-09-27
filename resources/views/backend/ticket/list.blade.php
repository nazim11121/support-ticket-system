@extends('layouts/contentNavbarLayout')
<link rel="stylesheet" href="{{ asset('/assets/datatables4/css/bootstrap.css') }}" />
<link rel="stylesheet" href="{{ asset('/assets/datatables4/css/dataTables.bootstrap.min.css') }}" />
<link rel="stylesheet" href="{{ asset('/assets/jquery-toast-plugin/jquery.toast.min.css') }}" />
@section('content')
<div class="col-md-12">
  <h4 class="fw-bold py-3 mb-4">
    <span class="text-muted fw-light">Ticket / </span> List
    <a href="{{ route('ticket.create') }}" class="btn btn-primary text-white float-end">Create</a>
  </h4>
</div>
<div class="card">
  <div class="card-body table-responsive">
      @php $user = Auth::user(); @endphp
      @if(!empty($user->getRoleNames()))
        @foreach($user->getRoleNames() as $v)
          @php $v @endphp
        @endforeach
      @endif
    @if($v == 'Admin') 
    <table id="example" class="table table-hover table-striped table-bordered">
      <thead>
        <tr>
          <th>Sl</th>
          <th>Ticket No</th>
          <th>Customer Name</th>
          <th>Description</th>
          <th>Status</th>
          <th>Date</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody class="table-border-bottom-0">
        
        <?php foreach ($ticket as $key => $value): ?>
          <tr>
        		<td>{{ ++$key }}</td>
            <td><i class="fab fa-angular fa-lg text-danger"></i> <strong>{{ $value->ticket_no }}</strong></td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong>{{ $value->user->name }}</strong></td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong>{{ $value->description }}</strong></td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong></strong>
              @if($value->status == 'open')
                <a class="btn" href="{{ route('ticket.edit',$value->id) }}"><span class="badge badge-danger">Open</span></a>
              @else
                <span class="badge badge-success">Closed</span>
              @endif
            </td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong>{{ date("d-m-Y", strtotime($value->created_at)) }}</strong></td>
            <td>
                <!-- <a class="btn btn-sm btn-primary" href="{{ route('ticket.edit',$value->id) }}">Edit</a> -->
                    {!! Form::open(['method' => 'DELETE','route' => ['ticket.destroy', $value->id],'style'=>'display:inline']) !!}
                        {!! Form::submit('Delete', ['class' => 'btn btn-sm btn-danger']) !!}
                    {!! Form::close() !!}
            </td>
          </tr>  
        <?php endforeach ?>
      </tbody>
    </table>
    @else
    <table id="example" class="table table-hover table-striped table-bordered">
      <thead>
        <tr>
          <th>Sl</th>
          <th>Ticket No</th>
          <th>Description</th>
          <th>Status</th>
          <th>Date</th>
        </tr>
      </thead>
      <tbody class="table-border-bottom-0">
        
        <?php foreach ($ticket as $key => $value): ?>
          @if($value->created_by == Auth::user()->id)
          <tr>
        		<td>{{ ++$key }}</td>
            <td><i class="fab fa-angular fa-lg text-danger"></i> <strong>{{ $value->ticket_no }}</strong></td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong>{{ $value->description }}</strong></td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong></strong>
              @if($value->status == 'open')
                <span class="badge badge-danger">Open</span>
              @else
                <span class="badge badge-success">Closed</span>
              @endif
            </td>
            <td><i class="fab fa-angular fa-lg text-danger me-1"></i> <strong>{{ date("d-m-Y", strtotime($value->created_at)) }}</strong></td>
          </tr> 
          @endif 
        <?php endforeach ?>
      </tbody>
    </table>
    @endif
  </div>
</div>
@endsection

<script src="{{ asset('/assets/datatables4/js/jquery-3.5.1.js') }}"></script>
<script src="{{ asset('/assets/datatables4/js/jquery.dataTables.min.js') }}" defer></script>
<script src="{{ asset('/assets/datatables4/js/dataTables.bootstrap.min.js') }}" defer></script>
<script src="{{ asset('/assets/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
<script src="{{ asset('/assets/jquery-toast-plugin/toastDemo.js') }}"></script>
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