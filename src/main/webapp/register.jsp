<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style/register.css">
    <link rel="stylesheet" href="style/lightbox.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <title>Chandana Hotel & Lodging</title>
    <link rel="shortcut icon" href="img/icon.jpg">
    <link rel="stylesheet" href="style/button.css">
    <link rel="stylesheet" href="style/fonts.css">
    <style>
        @font-face {
            font-family: "Aileron";
            src: url('fonts/Aileron-UltraLight.otf') format('opentype');
        }
    </style>
</head>

<body>
<section class="top">
    <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark container-fluid"
         style="width: 100%; position: fixed; cursor: pointer;">
        <a class="navbar-brand" href="index.jsp"
           style="font-family: 'Aileron', sans-serif; font-weight: 500;">Chandana Hotel & Lodging</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto" style=" text-align: center;">
                <li class="nav-item ">
                    <a class="nav-link item1" href="index.jsp#"
                       style="font-family: 'Merriweather', serif; color: white;">Home</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link item2" href="index.jsp#about"
                       style="font-family: 'Merriweather', serif; color: white;">About Us</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link item3" href="index.jsp#gallery"
                       style="font-family: 'Merriweather', serif; color: white;">Gallery</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link item4" href="index.jsp#reviews"
                       style="font-family: 'Merriweather', serif; color: white;">Customer
                        Reviews</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link item5" href="index.jsp#contactus"
                       style="font-family: 'Merriweather', serif; color: white;">Contact Us</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link item6" href="booknow.jsp#"
                       style="font-family: 'Merriweather', serif; color: white;">Book
                        Now</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" style="display: flex; justify-content: center;">
                <div class="button-1" style="padding-left: 1vw;">
                    <button type="button" onclick="location.href = 'register.jsp'" class="btn btn-primary d-flex align-items-center button"
                            style="color: white;">
                        <svg xmlns="http://www.w3.org/2000/svg"  width="16" height="16"
                             fill="white" class="bi bi-pen-fill" viewBox="0 0 16 16">
                            <path
                                    d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z"/>
                        </svg>&nbsp;Register
                    </button>
                </div>
                <div class="button-2">
                    <button type="button" onclick="location.href = 'login.jsp'" class="btn btn-info d-flex align-items-center button"
                            style="color: white;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                             fill="white" class="bi bi-key-fill" viewBox="0 0 16 16">
                            <path
                                    d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                        </svg>&nbsp;Login
                    </button>
                </div>
            </form>
        </div>
    </nav>

</section>

<div class="container py-4">
    <div class="row">
        <div class="col-lg-12">
            <div class="card text-black">
                <div class="card-body mt-5">

                    <div class="row">
                        <div class="col-sm-6 d-flex align-items-center justify-content-center" >
                            <img src="https://rukminim1.flixcart.com/image/416/416/kyq62kw0/sticker/x/r/y/medium-welcome-hands-image-24-45-956-walldecors-original-imafwe3zzbbj38nd.jpeg?q=70"
                                 class="rounded img-fluid" alt="Sample image">
                        </div>
                        <div class="col-sm-6">

                            <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4" style="font-family: 'fanfarron';">
                                REGISTER</p>

                            <form id="reg-form" class="mx-1 mx-md-4" method="post">

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="user_name" name="user_name" class="form-control"
                                               placeholder="Your Name" required/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="email" id="user_email" name="user_email" class="form-control"
                                               placeholder="Your Email" required/>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0 d-flex">
                                        <input type="text" id="user_country_code" name="user_country_code" class="form-control"
                                               value="+91" style="width: 30%;" required/> &nbsp;
                                        <input type="text" id="user_phone" name="user_phone" class="form-control"
                                               placeholder="Your Phone" style="width: 70%;" required/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="user_address" name="user_address" class="form-control"
                                               placeholder="Your Address" required/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-lock fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="password" id="user_pwd" class="form-control" name="user_pwd"
                                               placeholder="Password" required/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-key fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="password" id="repeat_user_pwd" name="repeat_user_pwd"
                                               class="form-control" placeholder="Repeat Password" required/>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-list fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <select id="user_type" name="user_type" class="form-select" required>
                                            <option>Please select your id proof</option>
                                            <option>Aadhaar</option>
                                            <option>PAN</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-key fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="aadhaarnumber" name="aadhaarnumber"
                                               class="form-control" placeholder="Aadhaar Number" required style="display: none;"/>
                                    </div>
                                </div>
                                <div class="form-check d-flex justify-content-center mb-5">
                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c"
                                           required/>
                                    <label class="form-check-label" for="form2Example3">
                                        I agree all statements in <a href="#!">Terms of Service</a>
                                    </label>
                                </div>

                                <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                    <button type="submit" id="submit-btn" class="btn btn-primary btn-lg">Register
                                    </button>
                                </div>

                            </form>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<script>
    window.addEventListener('scroll', () =>{
        var off = window.pageYOffset;
        var navbar = document.querySelector('nav')
        if(navbar.clientHeight<=off){
            navbar.classList.remove('bg-dark')
            navbar.classList.add('bg-*');
            navbar.setAttribute('style', 'width: 100%; position: fixed; cursor: pointer; background-color: rgba(0, 0, 0, 0.6);width: 100%; backdrop-filter: blur(8px);')

        } else {
            navbar.classList.remove('bg-*');
            navbar.classList.add("bg-dark");
            navbar.classList.remove('transparent');
            navbar.setAttribute('style', 'width: 100%; position: fixed; cursor: pointer;')

        }
    })
</script>

<script src="javascript/width_top.js"></script>
<script src="javascript/lightbox-plus-jquery.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="javascript/active.js"></script>
<script>
    AOS.init();
</script>
<script>
    document.getElementById('user_type').addEventListener('change', (event) => {
        let aadhaarno = document.getElementById('aadhaarnumber');
        aadhaarno.style = 'display: initial';
        if(document.getElementById('user_type').value === 'Aadhaar'){
            aadhaarno.placeholder = 'Aadhaar Number';
        }
        else if(document.getElementById('user_type').value === 'PAN'){
            aadhaarno.placeholder = 'PAN Number';
        } else {
            aadhaarno.style = 'display: none';
        }
    })
</script>

<script src="https://smtpjs.com/v3/smtp.js"></script>
<script src="javascript/variable.js"></script>
<script>
    $(document).ready(function () {
        $("form").submit(function (event) {
            // Data
            let name = $('#user_name').val();
            let email = $('#user_email').val();
            let phone = $('#user_phone').val();
            let address = $('#user_address').val();
            let password = $('#user_pwd').val();
            let r_password = $('#repeat_user_pwd').val();
            let country_code = $('#user_country_code').val();
            let type = $('#user_type').val();
            let idno = $('#aadhaarnumber').val();

            let sp_chars = "!@#$%^&*()_-+={[}}|\/?.>,<:;";
            let nums = '0123456789';
            let has_numbers = false;
            let has_sp_chars = false;

            for(let i = 0; i<password.length; i++) {
                for(let j = 0; j<sp_chars.length; j++) {
                    if(password.charAt(i) === sp_chars.charAt(j)) {
                        has_sp_chars = true; break;
                    }
                }
            }
            for(let i = 0; i<password.length; i++) {
                for(let j = 0; j<nums.length; j++) {
                    if(password.charAt(i) === nums.charAt(j)) {
                        has_numbers = true; break;
                    }
                }
            }

            if(name.includes('1') || name.includes('2') || name.includes('3') || name.includes('4') || name.includes('5') || name.includes('6') || name.includes('7') || name.includes('8') || name.includes('9') || name.includes('0')){
                alert("name not valid")
                return;
            } else if(phone.length !== 10){
                alert("phone not valid")
                return;
            } else if(country_code.length > 3 || country_code.length < 3 || country_code.charAt(0) !== '+' || country_code.charAt(1).toLowerCase() !== country_code.charAt(1).toUpperCase() || country_code.charAt(2).toLowerCase()!== country_code.charAt(2).toUpperCase()){
                alert('country code not valid')
                return;
            } else if(phone.charAt(0).toLowerCase() !== phone.charAt(0).toUpperCase() || phone.charAt(1).toLowerCase() !== phone.charAt(1).toUpperCase() || phone.charAt(2).toLowerCase() !== phone.charAt(2).toUpperCase() || phone.charAt(3).toLowerCase() !== phone.charAt(3).toUpperCase() || phone.charAt(4).toLowerCase() !== phone.charAt(4).toUpperCase() || phone.charAt(5).toLowerCase() !== phone.charAt(5).toUpperCase() | phone.charAt(6).toLowerCase() !== phone.charAt(6).toUpperCase() || phone.charAt(7).toLowerCase() !== phone.charAt(7).toUpperCase() || phone.charAt(8).toLowerCase() !== phone.charAt(8).toUpperCase() || phone.charAt(9).toLowerCase() !== phone.charAt(9).toUpperCase() ){
                alert('phone not valid')
                return;
            } else if (password.length < 6 || has_numbers==false || has_sp_chars==false) {
                alert('invalid password'); return;
            } else if (password != r_password){
                alert('password and repeat password are not matching')
                return;
            }

            let data = {
                'name' : name,
                'email': email,
                'phone' : phone,
                'address' : address,
                'password' : password,
                'r_password' : r_password,
                'country_code': country_code,
                'type' : type,
                'idno': idno
            }

            // Ajax
            $.ajax({
                type: "POST",
                url: "registerServlet",
                data: data,
                success: function (data, textStatus, jqXHR) {
                    if (data.trim() === "Failure") {
                        $('form').trigger('reset');
                        swal({
                            title: "Oops! Something went wrong",
                            text: "We are sorry for the inconvenience",
                            icon: "error",
                            button: "Close",
                        });
                    } else{
                        $('form').trigger('reset');
                        const url = "?"+email+"_register";
                        window.location.href = 'otp.jsp'+url;
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log(data);
                }
            });
            event.preventDefault();
        });

    });
</script>
</body>

</html>