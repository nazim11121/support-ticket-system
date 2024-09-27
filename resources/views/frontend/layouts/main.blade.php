<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>SBDMS - Smart Blood Donor Management System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="Supported by ideSHi" name="keywords" />
    <meta content="Supported by ideSHi" name="description" />

    <!-- Favicon -->
    <!-- <link href="{{asset('public/assets/frontend/img/favicon.ico')}}" rel="icon" /> -->
    <link rel="icon" type="image/x-icon" href="{{asset('/storage/uploads/logo/logo.png')}}" />
    <!-- Font awesome  -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="{{asset('/assets/frontend/lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet" />
    <link
      href="{{asset('/assets/frontend/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css')}}"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="{{ asset('/assets/css/select2-4.0.1.min.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('/assets/jquery-toast-plugin/jquery.toast.min.css') }}" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{asset('/assets/frontend/css/bootstrap.min.css')}}" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="{{asset('/assets/frontend/css/style.css')}}" rel="stylesheet" />
  </head>

  <body>

    @yield('content')
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('public/assets/frontend/lib/easing/easing.min.js')}}"></script>
    <script src="{{asset('public/assets/frontend/lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{asset('public/assets/frontend/lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <script src="{{asset('public/assets/frontend/lib/tempusdominus/js/moment.min.js')}}"></script>
    <script src="{{asset('public/assets/frontend/lib/tempusdominus/js/moment-timezone.min.js')}}"></script>
    <script src="{{asset('public/assets/frontend/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/select2-4.0.1.min.js') }}" defer></script>
    <script src="{{ asset('public/assets/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
    <script src="{{ asset('public/assets/jquery-toast-plugin/toastDemo.js') }}"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script> -->
    <!-- Template Javascript -->
    <script src="{{asset('public/assets/frontend/js/main.js')}}"></script>
    <script>
    $(document).ready(function () {
      $('.select2').select2();
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
  <script type="text/javascript">

      function updateCountdown(element) {  
        const now = new Date();
        
        const startDateTime = new Date(element.dataset.start);
        const endDateTime = new Date(element.dataset.end);

        if (now >= startDateTime && now <= endDateTime) {
            element.textContent = 'Running';
            return;
        } if (now > startDateTime && now > endDateTime) {
            element.textContent = 'End';
            return;
        }

        const timeDifference = endDateTime - now;

        const seconds = Math.floor(timeDifference / 1000) % 60;
        const minutes = Math.floor(timeDifference / (1000 * 60)) % 60;
        const hours = Math.floor(timeDifference / (1000 * 60 * 60)) % 24;
        const days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));

        const countdownText = `${days}d ${hours}h ${minutes}m ${seconds}s`;
        element.textContent = countdownText;

        setTimeout(function () {
            updateCountdown(element);
        }, 1000);
        
      }

      document.addEventListener('DOMContentLoaded', function() {
        const countdownElements = document.querySelectorAll('.countdown-timer');
          countdownElements.forEach(function(element) {
            updateCountdown(element);
        });
    });
  </script>
  </body>
</html>
