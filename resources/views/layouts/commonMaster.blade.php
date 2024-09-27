<!DOCTYPE html>

<html class="light-style layout-menu-fixed" data-theme="theme-default" data-assets-path="{{ asset('/assets') . '/' }}" data-base-url="{{url('/')}}" data-framework="laravel" data-template="vertical-menu-laravel-template-free">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <!-- <title>@yield('title')</title> -->
   <title>STS - Support Ticket System</title>
  <meta name="description" content="{{ config('variables.templateDescription') ? config('variables.templateDescription') : '' }}" />
  <meta name="keywords" content="{{ config('variables.templateKeyword') ? config('variables.templateKeyword') : '' }}">
  <!-- laravel CRUD token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <!-- Canonical SEO -->
  <link rel="canonical" href="{{ config('variables.productPage') ? config('variables.productPage') : '' }}">
  <!-- Favicon -->
  <!-- <link rel="icon" type="image/x-icon" href="{{ asset('assets/img/favicon/favicon.ico') }}" /> -->
  <link rel="icon" type="image/x-icon" href="{{asset('/storage/uploads/logo/logo.png')}}" />
  <link href="{{ asset('/assets/css/select2-4.0.1.min.css') }}" rel="stylesheet" />
<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> -->
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+J4xAcMEfPD5fjt6EI8C5foop5lDK5y5zmxnO5r5B0EZPZ2Y" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="{{ asset('/assets/admin/vendors/mdi/css/materialdesignicons.min.css') }}">
  <!-- <link rel="stylesheet" href="{{ asset('public/assets/admin/vendors/css/vendor.bundle.base.css') }}"> -->
  <!-- Include Styles -->
  @include('layouts/sections/styles')

  <!-- Include Scripts for customizer, helper, analytics, config -->
  @include('layouts/sections/scriptsIncludes')
</head>

<body>
  <!-- Layout Content -->
  @yield('layoutContent')
  <!--/ Layout Content -->

  {{-- remove while creating package --}}
  <!-- <div class="buy-now">
    <a href="{{config('variables.productPage')}}" target="_blank" class="btn btn-danger btn-buy-now">Upgrade To Pro</a>
  </div> -->
  {{-- remove while creating package end --}}

  <!-- Include Scripts -->
  @include('layouts/sections/scripts')

  <script src="{{ asset('/assets/js/select2-4.0.1.min.js') }}" defer></script>
  <script>
    $(document).ready(function () {
      $('.select2').select2();
    });
  </script>

  <!-- <script src="{{ asset('public/assets/admin/vendors/js/vendor.bundle.base.js') }}"></script> -->
<!--   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-qBVBs5NSFf4X/y6Ft5aYcZu2PUnM5Yz27YB8l5KT7K+txFZ+t5z5vz5Og59lR5vR6" crossorigin="anonymous"></script> -->
  <script src="{{ asset('/assets/admin/vendors/chart.js/Chart.min.js') }}"></script>
  <script src="{{ asset('/assets/admin/js/jquery.cookie.js') }}" type="text/javascript"></script>
  <script src="{{ asset('/assets/admin/js/off-canvas.js') }}"></script>
  <script src="{{ asset('/assets/admin/js/hoverable-collapse.js') }}"></script>
  <script src="{{ asset('/assets/admin/js/misc.js') }}"></script>
</body>

</html>
