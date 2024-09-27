@extends('frontend/layouts/main')
<style type="text/css">
  .card{
    border-radius: 20px;
    height: 550px;
    background-image: linear-gradient(to right, #dc0c0a, #1acb30);
    border: none;
    overflow: hidden;
    box-shadow: 0 5px 8px #414141;
    z-index: 0;
    box-sizing: border-box;
}
.circle{
    position: absolute;
    bottom: -230px;
    left: 50%;
    transform: translate(-50%, -50%);
    background: #fff;
    clip-path: circle(50%);
    height: 700px;
    width: 700px;
    z-index: -1;
    overflow: hidden;
}
.my-header{
    margin: 30px;
    font-size: 32px;
    margin-bottom: 10px;
    font-weight: 700;
    background-image: linear-gradient(to right, #0084ff, #00f2ff);
    color: transparent;
    -webkit-background-clip: text;
    background-clip: text;
}
.icon-user{
    font-size: 40px;
}
.icons{
    position: relative;
    display: block;
    left: -87px;
    top: 30px;
    color: rgb(255, 255, 255);
}
.button{
    width: 250px;
    border-radius: 25px;
    background-image: linear-gradient(to right, #0084ff, #00f2ff);
    color: #fff;
    font-weight: 700;
    cursor: pointer;
}
.myinput{
    width: 220px;
    padding: 10px;
    padding-left: 40px;
    border-radius: 25px;
    background-image: linear-gradient(to right, #0084ff, #00f2ff);
    color: #fff;
    border: none;
    display: block;
}
.myinput::placeholder{
    color: white;
    opacity: 0.6;
}
.myinput:focus{
    border: none;
    outline: none;
}
.check_1{
    font-weight: 500;
    color: black;
    font-size: 12px;
    margin: 15px auto;
    cursor: pointer;
}

.check_2{
    font-weight: 500;
    color: white;
    font-size: 14px;
    margin: 15px auto;
    cursor: pointer;
}

.btn-forget{
    color: white;
    text-decoration: auto;
}

.btn-forget:hover{
    color: #dc0c0a;
}

/* responsive  css */

@media (max-width: 768){
    .container{
        max-width: 100%;
    }
}
</style>
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card my-4">
                <div class="card-body">
                    <div class="circle"></div>
                    <header class="my-header text-center">
                        <i class="far fa-user icon-user"></i>
                        <p>LOGIN</p>
                    </header>
                    <form class="main-form text-center" method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="form-group my-0 mb-2">
                            <label class="my-0">
                                <i class="fas fa-user  icons"></i>
                                <input class="myinput @error('email') is-invalid @enderror" id="email" type="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus> 
                            </label>
                        </div> 
                        <div class="form-group my-0 mb-4">
                            <label class="my-0">
                                <i class="fas fa-lock icons"></i>
                                <input class="myinput @error('password') is-invalid @enderror" id="password" type="password" name="password" required autocomplete="current-password"> 
                            </label>
                        </div>  
                        
                        <label class="check_1">
                            <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                            Remember Me
                        </label>
                        <div class="form-group">
                           <label>
                               <input type="submit" class="form-control button" value="LOGIN">
                           </label>
                        </div> 
                        <!-- <span class="check_1"><a href="{{ route('password.request') }}"class="btn-forget">Forget Password</a></span><br> -->
                        <!-- <span class="check_2">Don't Have Account? <a href=""class="btn-forget">Click to Registration Now. </a></span> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
