@extends('frontend/layouts/main')

@section('content')
<!-- slide Start -->
<div
      id="carouselExampleIndicators"
      class="carousel slide"
      data-bs-ride="carousel"
    >
      <div class="carousel-inner">
        @foreach($slider as $key=>$value)
          <div class="carousel-item {{$key == 1 ? 'active' : ''}} c-item">
            <img
              src="{{asset('public/storage/uploads/slider')}}/{{$value->image ?? ''}}"
              class="d-block w-100 c-img"
              alt="Slide-image"
            />
            <div class="carousel-caption top-0 mt-4">
              <p class="mt-5 fs-3 text-uppercase text-white">
                {{ $value->slider_title ?? ''}}
              </p>
              <h1 class="display-1 fw-bolder text-capitalize c-heading">
                {{ $value->description ?? ''}}
              </h1>
            </div>
          </div>
        @endforeach
        <!-- Add more carousel items as needed -->
      </div>
      <button
        class="carousel-control-prev"
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button
        class="carousel-control-next"
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    <!-- slide End -->

    <!-- About Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="row gx-5">
          <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px">
            <div class="position-relative h-100">
              <img
                class="position-absolute w-100 h-100 rounded"
                src="{{asset('public/assets/frontend/img/about.jpg')}}"
                style="object-fit: cover"
              />
            </div>
          </div>
          <div class="col-lg-7">
            <div class="mb-4">
              <h5
                class="d-inline-block text-primary text-uppercase border-bottom border-5"
              >
                About Us
              </h5>
              <h1 class="display-8">
                HUPBD: Holistic Well-Being Through Blood Donation
              </h1>
            </div>
            <p>
              Help Unity Program Bangladesh (HUPBD) is a non-profit organization
              inspired by the legacy of DU Professor Dr. Salehin Qadri, a
              renowned Bangladeshi geneticist and pioneer in thalassemia
              research. HUPBD is committed to holistic well-being, supporting
              patients, championing health education, and saving lives.HUPBD
              multifaceted approach includes carrier screening and blood tests,
              venturing to remote areas, and implementing a Smart Blood Donor
              Management System. By embedding advanced techniques, persistent
              on-ground efforts, and modern technology into its projects, HUPB
              is continuously evolving to address the dynamic needs of the
              communities it serves. HUPBD endeavors aim not just at immediate
              relief but at building a resilient and informed society ready to
              face health challenges head-on.
            </p>
            <div class="row g-3 pt-3">
              <div class="col-sm-2 col-6">
                <div class="bg-light text-center rounded-circle py-4">
                  <i
                    class="fa-solid fa-person fa-beat fa-2xl mb-4"
                    style="color: #076e1c"
                  ></i>
                  <h6 class="mb-0">Blood Donor</h6>
                </div>
              </div>
              <div class="col-sm-2 col-6">
                <div class="bg-light text-center rounded-circle py-4">
                  <i
                    class="fa-solid fa-hospital fa-beat fa-2xl mb-4"
                    style="color: #076e1c"
                  ></i>
                  <h6 class="mb-0">Hospital</h6>
                </div>
              </div>
              <div class="col-sm-2 col-6">
                <div class="bg-light text-center rounded-circle py-4">
                  <i
                    class="fa-solid fa-school-flag fa-beat fa-2xl mb-4"
                    style="color: #076e1c"
                  ></i>
                  <h6 class="mb-0">University</h6>
                </div>
              </div>
              <div class="col-sm-2 col-6">
                <div class="bg-light text-center rounded-circle py-4">
                  <i
                    class="fa-solid fa-fire-flame-simple fa-beat fa-2xl mb-4"
                    style="color: #076e1c"
                  ></i>
                  <h6 class="mb-0">Blood Bank</h6>
                </div>
              </div>
              <div class="col-sm-2 col-6">
                <div class="bg-light text-center rounded-circle py-4">
                  <i
                    class="fa-solid fa-users-between-lines fa-beat fa-2xl mb-4"
                    style="color: #076e1c"
                  ></i>
                  <h6 class="mb-0">Our Friends</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Services Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5 heading-title"
          >
            Our Support
          </h5>
        </div>
        <div class="row g-5">
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-person fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>
              <h4 class="mb-3">Blood Donor</h4>
              <p class="m-0">
                SBDMS efficiently manages blood donors, ensuring swift matching and donations 
                using innovative technology.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-signal fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>
              <h4 class="mb-3">Facilities</h4>
              <p class="m-0">
                SBDMS rewards regular donors with diverse discounts through 
                health cards, promoting consistent blood donations.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-stethoscope fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>
              <h4 class="mb-3">AI Doctor Support</h4>
              <p class="m-0">
                AI Doctor aids SBDMS donors by diagnosing symptoms and recommending 
                specialist doctors after one donation.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-hospital-user fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>
              <h4 class="mb-3">Health Card</h4>
              <p class="m-0">
                Health card incentivizes SBDMS donors with discounts on education, 
                travel, and healthcare after multiple donations.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-person-booth fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>

              <h4 class="mb-3">Used Item</h4>
              <p class="m-0">
                Unused Item feature in SBDMS allows users to offer 
                products/services for free to the needy.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center"
            >
              <div class="service-icon mb-4">
                <i
                  class="fa-solid fa-fire-flame-curved fa-beat fa-2xl"
                  style="color: #076e1c"
                ></i>
              </div>
              <h4 class="mb-3">Thelasemia Program</h4>
              <p class="m-0">
                SBDMS streamlines blood donations, vital for thalassemia patients, supporting 
                Bangladesh's mission to eradicate the disease.
              </p>
              <a class="btn btn-lg btn-primary rounded-pill" href="">
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Services End -->

    <!-- professor Dr Salehin Qadri Start -->
    <div class="container-fluid bg-primary my-5 py-5 ">
      <div class="container py-5 " style='height: 100vh;'>
        <div class="row gx-5">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="mb-4">
              <h5
                class="d-inline-block text-white text-uppercase border-bottom border-5"
              >
                professor Dr Saleheen Qadri
              </h5>
              <h5 class="display-7">
                Bangladesh's Thalassemia Visionary: Dr. Saleheen Qadri
              </h5>
              <p class= "text-white"> Professor Syed Saleheen Qadri (1947-2021) was a distinguished figure in the field of Biochemistry and Molecular Biology in Bangladesh. He dedicated his life to academic research, teaching, and the advancement of scientific knowledge. He was the Co-founder and Scientific Co-Ordinator of ideSHi.
Dr. Qadri’s dream was to leave a lasting legacy for the future generations of Bangladeshi Scientists. Born in 1947, Professor Qadri embarked on a lifelong journey of academic and intellectual exploration. Throughout his career, Professor Qadri held prominent positions at several esteemed institutions. He was a Professor of Biochemistry and Molecular Biology at Dhaka University, where he made significant contributions to the field through his research and teaching. His work had a profound impact on the understanding of molecular processes and their applications.
Later in his career, Professor Qadri continued to share his expertise as a faculty member at Independent University, Bangladesh. He mentored and educated numerous students, nurturing the next generation of scientists and researchers.
His visionary dream was to ensure “no child in Bangladesh would be born with Thalassemia.” His wishes were to eliminate thalassemia from Bangladesh. Prof. Syed Saleheen Qadri’s dream was not only ambitious but profoundly meaningful – to create a thalassemia-free Bangladesh.</p>
            </div>
            <!-- <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href=""
              >Find Doctor</a
            >
            <a class="btn btn-outline-dark rounded-pill py-3 px-5" href=""
              >Read More</a
            > -->
          </div>
          <div class="col-lg-6">
            <div class="text-center rounded" style="    position: relative;
    padding-bottom: 56.25%; /* 16:9 aspect ratio */
    height: 0;
    overflow: hidden;
    max-width: 100%;
    background: #000;" >
    <iframe
            class="rounded video"
            src="https://www.youtube.com/embed/pMommEwAP9Q?autoplay=1&mute=1&rel=0&modestbranding=1"
            style = "  position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>

            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- professor Dr Salehin Qadri End -->

    <!-- Blood Request Section Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Requested Blood
          </h5>
          <h4 class="display-8">We invite all blood donors to donate blood</h4>
        </div>
        <div
          class="owl-carousel price-carousel position-relative"
          style="padding: 0 45px 45px 45px"
        >
          <!-- Card-1 -->
          @foreach($bloodRequest as $value)
          <div class="bg-light rounded text-center">
            <div class="position-relative">
              @if($value->hospital->image!=null)
              <img
                class="img-fluid rounded-top"
                src="{{asset('public/storage/uploads/hospital/')}}/{{$value->hospital->image ??''}}"
                alt="{{$value->hospital->name ??''}}"
              />
              @else
              <img
                class="img-fluid rounded-top"
                src="{{asset('public/storage/uploads/hospital/default.jpg')}}"
                alt="{{$value->hospital->name ??''}}"
              />
              @endif
              <div
                class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                style="background: rgba(29, 42, 77, 0.342)"
              >
                <h3 class="date-position text-white">{{ date('d/m/Y', strtotime($value->created_at ??'')) }}</h3>
                <h1 class="display-4 text-white mb-0"></h1>
              </div>
            </div>
            <div class="text-center py-5">
              <h5>Patient: {{$value->patient_name ??''}}</h5>
              <ul class="text-start list-none">
                <li>
                  <span class="fw-bolder">Patient Problem:</span> {{$value->patient_problem ??''}}
                </li>
                <li><span class="fw-bolder">Blood Group:</span> {{$value->blood_group ??''}}</li>
                <li><span class="fw-bolder">Blood Quantity:</span> {{$value->blood_quantity ??''}}</li>
                <li>
                  <span class="fw-bolder">Hospital:</span> {{$value->hospital->name ??''}} , {{$value->district->name ??''}} , {{$value->division->name ??''}}
                </li>
                <li><span class="fw-bolder">Refered By:</span> {{$value->user->name ??''}}</li>
              </ul>
              @if(Auth::user())
              <a href="{{route('dashboard')}}" class="btn btn-primary rounded-pill py-3 px-5 my-2"
                >Donate Now</a
              >
              @else
              <a href="{{route('login')}}" class="btn btn-primary rounded-pill py-3 px-5 my-2"
                >Donate Now</a
              >
              @endif
            </div>
          </div>
          @endforeach
        </div>
      </div>
    </div>
    <!-- Blood Request Section End -->

    <!-- Donor Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Our Blood Donors
          </h5>
          <h4 class="display-8"></h4>
          <a class="btn btn-primary rounded-pill py-3 px-5 my-2" href="{{route('donors')}}">
            See All Donor</a
          >
        </div>
        <div class="owl-carousel team-carousel position-relative">
          @foreach($donor as $value)
            <div class="team-item">
              <div class="row g-0 bg-light rounded overflow-hidden">
                <div class="col-12 col-sm-5 h-150">
                  @if($value->image!=null)
                    <img src="{{asset('public/storage/uploads/donor')}}/{{$value->image ??''}}" class="card-img-top" style="object-fit: cover" alt="{{$value->first_name ??''}} {{$value->last_name ??''}}">
                  @else
                    <img src="{{asset('public/storage/uploads/donor/default.jpg')}}" class="card-img-top" style="object-fit: cover" alt="donor-image">
                  @endif
                </div>
                <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                  <div class="mt-auto p-1">
                    <h3>{{$value->first_name ??''}} {{$value->last_name ??''}} ({{$value->age ??''}})</h3>
                    <h6>{{$value->blood_group ??''}}</h6>
                    <h6 class="fw-normal fst-italic text-primary mb-4">
                      {{$value->occupation ??''}}
                    </h6>
                    <p class="m-0">{{$value->thana->name??''}}@if($value->thana_id!=null){{','}}@endif {{$value->district->name??''}}@if($value->district_id!=null){{','}}@endif {{ $value->division->name}}</p>
                  </div>
                  <div class="d-flex mt-auto border-top p-1">
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{ $value->instagram_id }}"
                      ><i class="fab fa-instagram"></i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{ $value->facebook_id }}"
                      ><i class="fab fa-facebook-f"></i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle"
                      href="{{ $value->linkedIn_id }}"
                      ><i class="fab fa-linkedin-in"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          @endforeach  
          <!-- <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-2.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h3>Donor Name (Age)</h3>
                  <h6>Blood Group</h6>
                  <h6 class="fw-normal fst-italic text-primary mb-4">
                    Profession
                  </h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle"
                    href="#"
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h3>Donor Name (Age)</h3>
                  <h6>Blood Group</h6>
                  <h6 class="fw-normal fst-italic text-primary mb-4">
                    Profession
                  </h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle"
                    href="#"
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h3>Donor Name (Age)</h3>
                  <h6>Blood Group</h6>
                  <h6 class="fw-normal fst-italic text-primary mb-4">
                    Profession
                  </h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle"
                    href="#"
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h3>Donor Name <span class="red">(Age)</span></h3>
                  <h6>Blood Group: <span class="fw-bold">O+</span></h6>
                  <h6 class="fw-normal fst-italic text-primary mb-4">
                    Profession
                  </h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-twitter"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fab fa-facebook-f"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle"
                    href="#"
                    ><i class="fab fa-linkedin-in"></i
                  ></a>
                </div>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
    <!-- Donor End -->

    <!-- Hospital Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Our Hospital
          </h5>
          <h4 class="display-8"></h4>
          <a class="btn btn-primary rounded-pill py-3 px-5 my-2" href="{{route('hospitals')}}">
            See All Hospital</a
          >
        </div>
        <div class="owl-carousel team-carousel position-relative">
          @foreach($hospital as $value)
            <div class="team-item">
              <div class="row g-0 bg-light rounded overflow-hidden">
                <div class="col-12 col-sm-5 h-150">
                  @if($value->image!='')
                    <img
                      class="img-fluid h-100"
                      src="{{asset('public/storage/uploads/hospital')}}/{{$value->image ??''}}"
                      style="object-fit: cover" alt="{{$value->name}}"
                    />
                  @else
                    <img
                      class="img-fluid h-100"
                      src="{{asset('public/storage/uploads/hospital/default.jpg')}}"
                      style="object-fit: cover" alt="hospital_image"
                    />
                  @endif
                </div>
                <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                  <div class="mt-auto p-1 ">
                    <h4 class="">{{$value->name}}</h4>
                    <h6 class="fw-normal">{{$value->mobile}}</h6>
                    <h6 class="fw-normal">Discount: {{$value->discount ??''}}% </h6>
                    <h6 class="fw-normal">Blood Bank: {{$value->blood_bank ??''}}</h6>
                    <h6 class="fw-normal">Near Donor:
                      @php
                        $count = App\Models\Registration::where('hospital_id', $value->id)->get()->count();
                      @endphp
                      {{$count ??'0'}}
                    </h6>
                    <p class="m-0">{{$value->address ??''}}</p>
                  </div>
                  <div class="d-flex mt-auto border-top p-4">
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{$value->website_url ?? ''}}"
                      ><i class="fa fa-globe"></i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="tel:{{$value->mobile ?? ''}}"
                      ><i class="fa fa-phone"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
          <!-- <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-2.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h4 >Hospital name</h4>
                  <h6 class="fw-normal">Mobile Number</h6>
                  <h6 class="fw-normal">Discount</h6>
                  <h6 class="fw-normal">Blood Bank</h6>
                  <h6 class="fw-normal">Near Donor</h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-globe"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-phone"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h4 >Hospital name</h4>
                  <h6 class="fw-normal">Mobile Number</h6>
                  <h6 class="fw-normal">Discount</h6>
                  <h6 class="fw-normal">Blood Bank</h6>
                  <h6 class="fw-normal">Near Donor</h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-globe"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-phone"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h4 >Hospital name</h4>
                  <h6 class="fw-normal">Mobile Number</h6>
                  <h6 class="fw-normal">Discount</h6>
                  <h6 class="fw-normal">Blood Bank</h6>
                  <h6 class="fw-normal">Near Donor</h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-globe"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-phone"></i
                  ></a>
                </div>
              </div>
            </div>
          </div>
          <div class="team-item">
            <div class="row g-0 bg-light rounded overflow-hidden">
              <div class="col-12 col-sm-5 h-150">
                <img
                  class="img-fluid h-100"
                  src="{{asset('assets/frontend/img/team-3.jpg')}}"
                  style="object-fit: cover"
                />
              </div>
              <div class="col-12 col-sm-7 h-150 d-flex flex-column">
                <div class="mt-auto p-1">
                  <h4 >Hospital name</h4>
                  <h6 class="fw-normal">Mobile Number</h6>
                  <h6 class="fw-normal">Discount</h6>
                  <h6 class="fw-normal">Blood Bank</h6>
                  <h6 class="fw-normal">Near Donor</h6>
                  <p class="m-0">Address</p>
                </div>
                <div class="d-flex mt-auto border-top p-4">
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-globe"></i
                  ></a>
                  <a
                    class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                    href="#"
                    ><i class="fa fa-phone"></i
                  ></a>
                </div>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </div>
    <!-- Hospital End -->

     <!--University Section Start -->
     <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            University
          </h5>
          <h4 class="display-8">Live Blood Donor Support</h4>
        </div>
        <div
          class="owl-carousel price-carousel bg-none position-relative"
          style="padding: 0 45px 45px 45px"
        >
          @foreach($university as $value)
            <div class="bg-light rounded text-center">
              <div class="position-relative">
                @if($value->image!='')
                  <img
                    class=" rounded-top  p-2"
                    src="{{asset('public/storage/uploads/university')}}/{{$value->image ??''}}"
                    width="300px"
                    height="300px"
                    alt="{{$value->name ??''}}"
                  />
                @else
                  <img
                    class=" rounded-top  p-2"
                    src="{{asset('public/storage/uploads/university/default.jpg')}}"
                    width="300px"
                    height="300px"
                    alt="Hospital Image"
                  />
                @endif
                <div
                  class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                  
                >
                </div>
              </div>
              <div class="text-center py-2">
                <h5>{{$value->name ??''}}</h5>
                <div class="mt-auto py-2 px-4 text-start">
                  <ul class="text-start black fw-bolder">
                    <li> <i class="fa fa-envelope me-1" ></i>@if(!empty($value->email)){{$value->email}}@endif</li>
                    <li><i class="fa fa-tag me-1" ></i> {{$value->discount ??'0'}}% Waiver</li>
                    <li>
                      @php
                        $count = App\Models\Registration::where('university_id', $value->id)->get()->count();
                      @endphp
                      Near Donor: {{$count ??'0'}}</li>
                    <li class="m-0"><i class="fas fa-hospital me-1"></i>{{$value->address ??''}}</li>
                  </ul>
            
                  
                </div>
                <div class="d-flex mt-auto border-top py-2 px-2">
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{$value->website_url??''}}"
                      ><i class="fa fa-globe"> </i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="tel:{{$value->mobile??''}}"
                      ><i class="fa fa-phone"></i
                    ></a>
                  </div>
              </div>
            </div>
          @endforeach
        </div>
      </div>
    </div>
    <!-- University Section End -->

     <!--Blood group Section Start -->
     <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            FREE SOFTWARE SUPPORT
          </h5>
          <h4 class="display-8">Live Blood Donor Support</h4>
        </div>
        <div
          class="owl-carousel price-carousel bg-none position-relative"
          style="padding: 0 45px 45px 45px"
        >
          @foreach($bloodGroup as $value)
            <div class="bg-light rounded text-center">
              <div class="position-relative">
                @if($value->image!='')
                  <img
                    class=" rounded-top"
                    src="{{asset('public/storage/uploads/group')}}/{{$value->image ??''}}"
                    alt="{{$value->name ??''}}"
                  />
                @else
                  <img
                    class=" rounded-top"
                    src="{{asset('public/storage/uploads/group/default.jpg')}}"
                    alt=""
                  />
                @endif  
                <div
                  class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                  
                >
                </div>
              </div>
              <div class="text-center py-2">
                <h5>{{$value->name}}</h5>
                <div class="mt-auto py-2 px-4 text-start">
                  <ul class="text-start black fw-bolder">
                    <li class="m-0"><i class="fas fa-hospital me-1"></i>{{$value->address ??''}}</li>
                  </ul>
                </div>
                <div class="d-flex mt-auto border-top py-2 px-2">
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{$value->website ??''}}"
                      ><i class="fa fa-globe"> </i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="tel: {{$value->mobile ??''}}"
                      ><i class="fa fa-phone"></i
                    ></a>
                  </div>
              </div>
            </div>
          @endforeach  
        </div>
      </div>
    </div>
    <!-- Blood Group Section End -->

     <!--Blood Bank Section Start -->
     <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Blood Bank
          </h5>
          <h4 class="display-8">Near Blood Bank</h4>
        </div>
        <div
          class="owl-carousel price-carousel bg-none position-relative"
          style="padding: 0 45px 45px 45px"
        >
          @foreach($bloodBank as $value)
            <div class="bg-light rounded text-center">
              <div class="position-relative">
                @if($value!='')
                  <img
                    class=" rounded-top"
                    src="{{asset('public/storage/uploads/bloodbank')}}/{{$value->image ??''}}"
                    alt="{{$value->name ??''}}"
                  />
                @else
                  <img
                    class=" rounded-top"
                    src="http://blood.kikinbo.com/public/storage/uploads/bloodbank/1692419555-IMG_5249.jpg"
                    alt=""
                  />
                @endif
                <div
                  class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                >
                </div>
              </div>
              <div class="text-center py-2">
                <h5>{{$value->name ??''}}</h5>
                <div class="mt-auto py-2 px-4 text-start">
                  <ul class="text-start black fw-bolder">
                    <li> <i class="fa fa-envelope me-1" ></i>{{$value->email ??''}}</li>
                    <!-- <li>Near Donor: </li> -->
                    <li class="m-0"><i class="fas fa-hospital me-1"></i>{{$value->address ??''}}</li>
                  </ul>
                  
                </div>
                <div class="d-flex mt-auto border-top py-2 px-2">
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="{{$value->website_url ??''}}"
                      ><i class="fa fa-globe"> </i
                    ></a>
                    <a
                      class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3"
                      href="tel: {{$value->mobile ??''}}"
                      ><i class="fa fa-phone"></i
                    ></a>
                  </div>
              </div>
            </div>
          @endforeach
        </div>
      </div>
    </div>
    <!-- Blood Bank Section End -->    

    <!-- Event Area Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Our Event
          </h5>
          <h4 class="display-8"></h4>
          <a class="btn btn-primary rounded-pill py-3 px-5 my-2" href="{{route('events')}}">
            See All Event</a
          >
        </div>
        <div
          class="owl-carousel price-carousel bg-none position-relative"
          style="padding: 0 45px 45px 45px"
        >
        
          @foreach($event as $value)
          <div class="blog">
            <div class="single-news">
              <div class="news-head">
                @if($value!='')
                  <img
                    class=" rounded-top"
                    src="{{asset('public/storage/uploads/event')}}/{{$value->image ??''}}"
                    alt="{{$value->name ??''}}"
                  />
                @else
                  <img
                    class=" rounded-top"
                    src="{{asset('public/storage/uploads/event/default.jpg')}}"
                    alt="Event Image"
                  />
                @endif
                <div
                  class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center"
                >
                </div>
              </div>
              <div class="news-body">
                    <div class="news-content">
                      <div class="date">{{ date('d M, Y', strtotime($value->start_date))}}</div>
                      <div class="date" style="padding: 3px;">To</div>
                      <div class="date">{{ date('d M, Y', strtotime($value->end_date))}}</div>
                      <h2>
                        <a href="#"
                          >{{$value->name ??''}}</a
                        >
                      </h2>
                      <p class="text">
                        Lorem ipsum dolor a sit ameti, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt sed do incididunt
                        sed.
                      </p>
                    </div>
                  </div>
              </div>
            </div>
          @endforeach

        </div>
      </div>
    </div>
    <!-- Event Area End -->

    <!-- Testimonial Start -->
    <div class="container-fluid py-5">
      <div class="container">
        <div class="text-center mx-auto mb-5" style="max-width: 500px">
          <h5
            class="d-inline-block text-primary text-uppercase border-bottom border-5"
          >
            Testimonial
          </h5>
          <h4 class="display-6">Our Honorable Guest Speech</h4>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-8">
            <div class="owl-carousel testimonial-carousel">

              <div class="testimonial-item text-center">
                <div class="position-relative mb-5">
                  <img
                    class="img-fluid rounded-circle mx-auto"
                    style="object-fit: cover"
                    src="https://i.ytimg.com/vi/q1uury_DCrw/maxresdefault.jpg"
                    alt=""
                  />
                  <div
                    class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                    style="width: 60px; height: 60px"
                  >
                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                  </div>
                </div>
                <p class="fs-4 fw-normal">
                  SBDMS streamlines blood donation processes, connecting donors and recipients efficiently, 
                  ensuring timely aid for those in dire need.
                </p>
                <hr class="w-25 mx-auto" />
                <h3>Dr. Firdausi Qadri</h3>
                <h6 class="fw-normal text-primary mb-3">Senior Scientist,icddr b & Lead ideSHi</h6>
              </div>
              <div class="testimonial-item text-center">
                <div class="position-relative mb-5">
                  <img
                    class="img-fluid rounded-circle mx-auto"
                    style="object-fit: cover"
                    src="https://i.ytimg.com/vi/q1uury_DCrw/maxresdefault.jpg"
                    alt=""
                  />
                  <div
                    class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                    style="width: 60px; height: 60px"
                  >
                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                  </div>
                </div>
                <p class="fs-4 fw-normal">
                  SBDMS streamlines blood donation processes, connecting donors and recipients efficiently, 
                  ensuring timely aid for those in dire need.
                </p>
                <hr class="w-25 mx-auto" />
                <h3>Dr. Firdausi Qadri</h3>
                <h6 class="fw-normal text-primary mb-3">Senior Scientist,icddr b & Lead ideSHi</h6>
              </div>
              <div class="testimonial-item text-center">
                <div class="position-relative mb-5">
                  <img
                    class="img-fluid rounded-circle mx-auto"
                    style="object-fit: cover"
                    src="https://i.ytimg.com/vi/q1uury_DCrw/maxresdefault.jpg"
                    alt=""
                  />
                  <div
                    class="position-absolute top-100 start-50 translate-middle d-flex align-items-center justify-content-center bg-white rounded-circle"
                    style="width: 60px; height: 60px"
                  >
                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                  </div>
                </div>
                <p class="fs-4 fw-normal">
                  SBDMS streamlines blood donation processes, connecting donors and recipients efficiently, 
                  ensuring timely aid for those in dire need.
                </p>
                <hr class="w-25 mx-auto" />
                <h3>Dr. Firdausi Qadri</h3>
                <h6 class="fw-normal text-primary mb-3">Senior Scientist,icddr b & Lead ideSHi</h6>
              </div>

            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Testimonial End -->

    <!-- Sponsor Start -->
    <div class="clients overlay">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-12">
            <div class="owl-carousel clients-slider">
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/HUPBD.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/ideSHi.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/Kikinbo.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/HUPBD.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/ideSHi.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/Kikinbo.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/HUPBD.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/ideSHi.png')}}" alt="#" />
              </div>
              <div class="single-clients">
                <img src="{{asset('assets/frontend/img/Kikinbo.png')}}" alt="#" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--Sponsor End -->
@endsection