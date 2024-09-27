
<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">

  <!-- ! Hide app brand if navbar-full -->
  <div class="app-brand demo">
    <a href="{{url('/')}}" class="app-brand-link">
      <span class="app-brand-logo demo">
        <img id='img' src="{{ asset('/storage/uploads/logo/logo.png') }}" style="margin-left:47px;">
        <!-- @include('_partials.macros',["width"=>25,"withbg"=>'#696cff']) -->
      </span>
      <!-- <span class="app-brand-text demo menu-text fw-bold ms-2">Account -->
      <!-- {{config('variables.templateName')}}</span> -->
    </a>

    <a href="javascript:void(0);" id="menu-toggle" class="layout-menu-toggle menu-link text-large ms-autod-block d-xl-none">
      <i class="bx bx-chevron-left bx-sm align-middle"></i>
    </a>
  </div>
  
  @php $user = Auth::user();@endphp

  <div class="menu-inner-shadow"></div>

  <div class="container-fluid page-body-wrapper scroll">
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="{{ route('dashboard') }}">
            <i class="mdi mdi-home menu-icon"></i>
            <span class="menu-title">Dashboard</span>
            
          </a>
        </li>
        @if(!empty($user->getRoleNames()))
          @foreach($user->getRoleNames() as $v)
            @php $v @endphp
          @endforeach
        @endif
        
        @if($user->hasPermissionTo('view-ticket'))
        @php $ticket = array('admin/ticket','admin/ticket/*'); @endphp
        <li class="nav-item {{ active_class_active($ticket) }}">
          <a class="nav-link" data-bs-toggle="collapse" href="#ticket" aria-expanded="false" aria-controls="ticket">
            <i class="tf-icons bx bx-box menu-icon"></i>
            <span class="menu-title">Ticket</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse {{ show_class_show($ticket) }}" id="ticket">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item {{ active_class_active(['admin/ticket','admin/ticket/*']) }}"> <a class="nav-link" href="{{ route('ticket.index') }}">List</a></li>
            </ul>
          </div>
        </li>
        @endif

        @if($user->hasPermissionTo('view-users'))
        @php $users = array('admin/users','admin/users/*'); @endphp
        <li class="nav-item {{ active_class_active($users) }}">
          <a class="nav-link" data-bs-toggle="collapse" href="#users" aria-expanded="false" aria-controls="users">
            <i class="tf-icons bx bx-user-circle menu-icon"></i>
            <span class="menu-title">Users</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse {{ show_class_show($users) }}" id="users">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item {{ active_class_active(['admin/users','admin/users/*']) }}"> <a class="nav-link" href="{{ route('users.index') }}">List</a></li>
              <!-- <li class="nav-item"> <a class="nav-link" href="{{ route('users.create') }}">create</a></li> -->
            </ul>
          </div>
        </li>
        @endif
        @if($user->hasPermissionTo('view-role-permission'))
        @php $roles = array('admin/roles','admin/roles/*'); @endphp
        <li class="nav-item {{ active_class_active($roles) }}">
          <a class="nav-link" data-bs-toggle="collapse" href="#roles" aria-expanded="false" aria-controls="roles">
            <i class="tf-icons bx bx-slider menu-icon"></i>
            <span class="menu-title">Role & Permissions</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse {{ show_class_show($roles) }}" id="roles">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item {{ active_class_active(['admin/roles','admin/roles/*']) }}"> <a class="nav-link" href="{{ route('roles.index') }}">List</a></li>
              <!-- <li class="nav-item"> <a class="nav-link" href="{{ route('roles.create') }}">create</a></li> -->
            </ul>
          </div>
        </li>
        @endif
      </ul>
    </nav>
  </div>    

</aside>

<style type="text/css">
  .sidebar .nav {
    margin-left: -13px!important;
  }
  .sidebar .nav .nav-item .nav-link .menu-title2{
      color: inherit;
      display: inline-block;
      font-size: 0.875rem;
      line-height: 1;
      vertical-align: middle;
  }
  .sidebar .nav .nav-item.active > .nav-link .menu-title2{
    margin-right: 8px;
    color: #b66dff;
  }
  div.scroll { 
                  margin:4px, 4px; 
                  padding:4px; 
                  /*background-color: green; */
                  /*width: 500px; */
                  /*height: 110px; */
                  overflow-x: hidden; 
                  overflow-x: auto; 
                  text-align:justify; 
              }
  .sidebar {
    min-height: calc(100vh - 70px);
    background: #ffffff;
    font-family: "ubuntu-regular", sans-serif;
    padding: 0;
    /*width: 260px;*/
    z-index: 11;
    transition: width 0.25s ease, background 0.25s ease;
    -webkit-transition: width 0.25s ease, background 0.25s ease;
    -moz-transition: width 0.25s ease, background 0.25s ease;
    -ms-transition: width 0.25s ease, background 0.25s ease; }
    .sidebar .nav {
      overflow: hidden;
      -ms-flex-wrap: nowrap;
      flex-wrap: nowrap;
      -webkit-box-orient: vertical;
      -webkit-box-direction: normal;
      -ms-flex-direction: column;
      flex-direction: column;
      margin-bottom: 60px; }
      .sidebar .nav .nav-item {
        padding: 0 2.25rem;
        -webkit-transition-duration: 0.25s;
        transition-duration: 0.25s;
        transition-property: background;
        -webkit-transition-property: background; }
        .sidebar .nav .nav-item .collapse {
          z-index: 999; }
        .sidebar .nav .nav-item .nav-link {
          display: -webkit-box;
          display: -ms-flexbox;
          display: flex;
          -webkit-box-align: center;
          -ms-flex-align: center;
          align-items: center;
          white-space: nowrap;
          padding: 1.125rem 0 1.125rem 0;
          color: #3e4b5b;
          -webkit-transition-duration: 0.45s;
          transition-duration: 0.45s;
          transition-property: color;
          -webkit-transition-property: color; }
          .sidebar .nav .nav-item .nav-link i {
            color: inherit; }
            .sidebar .nav .nav-item .nav-link i.menu-icon {
              font-size: 1.125rem;
              line-height: 1;
              /*margin-left: auto;*/
              color: #4c424ef5; }
              .rtl .sidebar .nav .nav-item .nav-link i.menu-icon {
                margin-left: 0;
                margin-right: auto; }
              .sidebar .nav .nav-item .nav-link i.menu-icon:before {
                vertical-align: middle; }
            .sidebar .nav .nav-item .nav-link i.menu-arrow {
              font: normal normal normal 24px/1 "Material Design Icons";
              line-height: 1;
              font-size: 1.125rem;
              margin-left: auto;
              color: #9e9da0; }
              .rtl .sidebar .nav .nav-item .nav-link i.menu-arrow {
                margin-left: 0;
                margin-right: auto; }
              .sidebar .nav .nav-item .nav-link i.menu-arrow:before {
                content: "\f141";
                font-size: inherit;
                color: inherit; }
              .sidebar .nav .nav-item .nav-link i.menu-arrow + .menu-icon {
                margin-left: .25rem; }
                .rtl .sidebar .nav .nav-item .nav-link i.menu-arrow + .menu-icon {
                  margin-left: 0;
                  margin-right: .25rem; }
          .sidebar .nav .nav-item .nav-link .menu-title {
            color: inherit;
            display: inline-block;
            font-size: 0.875rem;
            line-height: 1;
            vertical-align: middle; }
          .sidebar .nav .nav-item .nav-link .badge {
            margin-right: auto;
            margin-left: 1rem; }
          .sidebar .nav .nav-item .nav-link[aria-expanded="true"] .menu-arrow:before {
            content: "\f140"; }
        .sidebar .nav .nav-item.active {
          background: #ffffff; }
         /* .sidebar .nav .nav-item.active > .nav-link .menu-title:hover{
            background-color: red;
          }*/
          .sidebar .nav .nav-item.active > .nav-link .menu-title {
            color: #b66dff;
            font-family: "ubuntu-medium", sans-serif; margin-right: 85px; }
          .sidebar .nav .nav-item.active > .nav-link i {
            color: #b66dff; }
        .sidebar .nav .nav-item:hover {
          background: #fcfcfc; }
        .sidebar .nav .nav-item.nav-profile .nav-link {
          height: auto;
          line-height: 1;
          border-top: 0;
          padding: 1.25rem 0; }
          .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-image {
            width: 44px;
            height: 44px; }
            .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-image img {
              width: 44px;
              height: 44px;
              border-radius: 100%; }
          .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-text {
            margin-left: 1rem; }
            .rtl .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-text {
              margin-left: auto;
              margin-right: 1rem; }
          .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-badge {
            font-size: 1.125rem;
            margin-left: auto; }
            .rtl .sidebar .nav .nav-item.nav-profile .nav-link .nav-profile-badge {
              margin-left: 0;
              margin-right: auto; }
        .sidebar .nav .nav-item.sidebar-actions {
          margin-top: 1rem; }
          .sidebar .nav .nav-item.sidebar-actions .nav-link {
            border-top: 0;
            display: block;
            height: auto; }
          .sidebar .nav .nav-item.sidebar-actions:hover {
            background: initial; }
            .sidebar .nav .nav-item.sidebar-actions:hover .nav-link {
              color: initial; }
      .sidebar .nav:not(.sub-menu) > .nav-item:hover:not(.nav-category):not(.nav-profile) > .nav-link {
        color: #29323d; }
      .sidebar .nav.sub-menu {
        margin-bottom: 20px;
        margin-top: 0;
        list-style: none; margin-left: 0px!important;}
        .sidebar .nav.sub-menu .nav-item {
          padding: 0; }
          .sidebar .nav.sub-menu .nav-item .nav-link {
            color: #888;
            padding: 0.75rem 2rem 0.75rem 2rem;
            position: relative;
            font-size: 0.8125rem;
            line-height: 1;
            height: auto;
            border-top: 0; }
            .sidebar .nav.sub-menu .nav-item .nav-link:before {
              content: "\F054";
              font-family: "Material Design Icons";
              display: block;
              position: absolute;
              left: 0px;
              top: 50%;
              -webkit-transform: translateY(-50%);
              transform: translateY(-50%);
              color: #a2a2a2;
              font-size: .75rem; }
              .rtl .sidebar .nav.sub-menu .nav-item .nav-link:before {
                left: auto;
                right: 0; }
            .sidebar .nav.sub-menu .nav-item .nav-link.active {
              color: #b66dff;
              background: transparent; }
            .sidebar .nav.sub-menu .nav-item .nav-link:hover {
              color: #555555; }
          .sidebar .nav.sub-menu .nav-item:hover {
            background: transparent; }

  /* style for off-canvas menu*/
  @media screen and (max-width: 991px) {
    .sidebar-offcanvas {
      display:none;
      position: fixed;
      max-height: calc(100vh - 70px);
      top: 70px;
      bottom: 0;
      overflow: auto;
      right: -254px;
      -webkit-transition: all 0.25s ease-out;
      transition: all 0.25s ease-out; }
      .sidebar-offcanvas.active {
        right: 0; } }
        .sidebar .nav{
          margin-left: -6px;
        }

</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
 $(document).ready(function() {
    // Add a click event listener to the button
    $("#toggle-button").click(function() {
        // Toggle the visibility of the div with a slide effect
        $("#sidebar").slideToggle();
    });
});
</script>