<!doctype html>
<html lang="en">

<head>
  <title>Smart Blood Donor</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.0-beta1 -->
    <!-- Google fonts link -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <!-- font-awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Silk slider css link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.css">
    <!-- CSS link -->
    <link rel="stylesheet" href="{{asset('assets/frontend/style.css')}}">
    <!-- <link rel="stylesheet" href="{{asset('assets/css/bootstrap.min.css')}}"> -->

</head>

<body>
<!-- NAVber section -->
<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-lg">
  <div class="container">
    <a class="navbar-brand" href="{{url('/')}}" id="#home">
      <img src="{{asset('storage/uploads/images/logo.png')}}" alt="">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="{{url('/')}}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('blood-request.post')}}">Blood Req</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('events')}}">Event</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('unused-products')}}">Unused item</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('health-card')}}">Health card</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{route('donors')}}">Donor</a>
        </li>
      </ul>
      @php $var = Auth::check(); @endphp
      @if($var=='true')
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-list-4" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="" id="navbar-list-4">
          <ul class="navbar-nav">
              <li class="nav-item">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                @if(Auth::user()->donorDetails->image!='')
                  <img src="{{asset('storage/uploads/donor')}}/{{Auth::user()->donorDetails->image}}" width="40" height="40" class="rounded-circle">
                @else
                <img src="{{asset('storage/uploads/donor/default.jpg')}}" width="40" height="40" class="rounded-circle">
                @endif
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="{{route('dashboard')}}">Dashboard</a>
                <a class="dropdown-item" href="{{route('logout')}}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                  @csrf
                </form>
              </div>
            </li>   
          </ul>
        </div>
      @else
        <a href="{{url('/donor')}}" class="btn btn-success ms-lg-3">Registration</a>
        <a href="{{url('/login')}}" class="btn btn-brand ms-lg-3">Login</a>
      @endif
    </div>
  </div>
</nav>

@yield('content')

<!-- Footer Section -->

<section class="footer pt-5">
  <div class="footer-top">
    <div class="container">
      <div class="row ">
        <div class="col-lg-3">
          <div class="footer-logo pb-4">
            <img class="footer-main-logo" src="{{asset('storage/uploads/images/logo.png')}}" alt="">
          </div>
          <div class="footer-text">
            <p>Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
              dolore magna aliqua.</p>
          </div>
          <div class="footer-social">

            <ul>
              <li><span>Follow us:</span></li>
              <li><a href="https://www.facebook.com/HUPBD/"><i class="fab fa-facebook"></i></a></li>
              <li><a href="#"><i class="fab fa-twitter"></i></a></li>
              <li><a href="#"><i class="fab fa-youtube"></i></a></li>
              <li><a href="#"><i class="fab fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="fotter-text px-3">
            <h4>Quick Links</h4>
            <div class="totter-text-dd">
              <ul>
                <li><a href="#">About</a></li>
                <li><a href="#">Our Performance</a></li>
                <li><a href="#">Help (FAQ)</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="fotter-text px-3">
            <h4>Other Resources</h4>
            <div class="totter-text-dd">
              <ul>
                <li><a href="#">Support</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="{{route('terms-and-conditions')}}">Terms of Service</a></li>
                <li><a href="#">Business Loans</a></li>
                <li><a href="#">Loan Services</a></li>
              </ul>
            </div>
          </div>
        </div>

        <div class="col-lg-3">
          <div class="fotter-text px-3">
            <h4>Contact Us</h4>
            <div class="footer-contuct-item d-flex">
              <span><i class="fas fa-map-marker-alt"></i></span>
              <a href="https://goo.gl/maps/iM8Quo5HoQ9BJrTx8">Mirpur 12, Pallabi Dhaka- 1216</a>
            </div>
            <div class="footer-contuct-item d-flex">
              <span><i class="far fa-envelope"></i></span>
              <a href="mailto:info@hupbd.org">info@hupbd.org</a>
            </div>
            <div class="footer-contuct-item d-flex">
              <span><i class="fas fa-phone-volume"></i></span>
              <a href="tel:+1(514)312-5678">01970248241</a>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">

      <div class="row">
        <div class="col-lg-12">
          <div class="coppywright-part text-center">
            <p>Copyright © <script>document.write( new Date().getFullYear() );</script>. Developed By <strong>N&N Co.</strong> </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
  <!-- <script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script> -->
  <script src="{{ asset('assets/js/select2-4.0.1.min.js') }}" defer></script>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
  </script>

  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
  </script> -->
  <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  <!-- <script src="{{asset('assets/frontend/main.js')}}"></script> -->
  <script src="{{asset('assets/admin/js/main.js')}}"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <script>
    $(document).ready(function () {
      $('.select2').select2();
    });
  </script>
  <script src="{{ asset('assets/jquery-toast-plugin/jquery.toast.min.js') }}"></script>
  <script src="{{ asset('assets/jquery-toast-plugin/toastDemo.js') }}"></script>
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