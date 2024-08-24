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
    <link rel="stylesheet" href="style/otp.css">
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

<section >
    <section class="wrapper" style="height: 100vh; width: 100vw; display: flex; justify-content: center; align-items: center;">
        <div class="container">
            <div class="col-sm-8 offset-sm-2 col-lg-6 offset-lg-3 col-xl-6 offset-xl-3 text-center">
                <form class="rounded bg-white shadow p-5">
                    <h3 class="text-dark fw-bolder fs-4 mb-2">Two Step Verification</h3>

                    <div class="fw-normal text-muted mb-4">
                        Enter the verification code we sent to
                    </div>

                    <div class="otp_input text-start mb-2">
                        <label for="digit">Type your 6 digit security code</label>
                        <div class="d-flex align-items-center justify-content-between mt-2">
                            <input type="text" class="form-control" id="num1" placeholder="">
                            <input type="text" class="form-control" id="num2" placeholder="">
                            <input type="text" class="form-control" id="num3" placeholder="">
                            <input type="text" class="form-control" id="num4" placeholder="">
                            <input type="text" class="form-control" id="num5" placeholder="">
                            <input type="text" class="form-control" id="num6" placeholder="">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary submit_btn my-4">Submit</button>
                </form>
            </div>
        </div>
    </section>
</section>
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
<script src="https://smtpjs.com/v3/smtp.js"></script>
<script src="javascript/variable.js"></script>
<script>
    function generateRandomNumber() {
        var minm = 100000;
        var maxm = 999999;
        return Math.floor(Math
            .random() * (maxm - minm + 1)) + minm;
    }
    let otp = generateRandomNumber();
    let email_id = (window.location.href).split('?')[1].split('_')[0];
    let token = (window.location.href).split('?')[1].split('_')[1];
    if(token === 'login'){
        let el = email_id.split('=')[0];
        // alert(el);
        Email.send({
            Host: "smtp.elasticemail.com",
            Username: "amogh.shri2009@gmail.com",
            Password: "5E5D4CA5D2B672A06714C64EE611F66F57EC",
            To: el,
            From: "amogh.shri2009@gmail.com",
            Subject: "Your One Time Password",
            Body: otp,
        }).then(function (message) {
                console.log(otp);
            });
    } else{
        Email.send({
            Host: "smtp.elasticemail.com",
            Username: "amogh.shri2009@gmail.com",
            Password: "5E5D4CA5D2B672A06714C64EE611F66F57EC",
            To: email_id,
            From: "amogh.shri2009@gmail.com",
            Subject: "Your One Time Password",
            Body: otp,
        })
            .then(function (message) {
                console.log(otp);
            });
    }

    $(document).ready(function () {
        $("form").submit(function (event) {
            // Data
            let onetimepassword = $('#num1').val()+$('#num2').val()+$('#num3').val()+$('#num4').val()+$('#num5').val()+$('#num6').val();
            // alert(onetimepassword);
            if(onetimepassword != otp){
                swal({
                    title: "Wrong OTP!",
                    text: "Try again",
                    icon: "error",
                    button: "Close",
                });
                return;
                // return;
            }

            let data = {
                'email' : email_id,
            }

            // Ajax
            if(token === 'register'){
                $.ajax({
                    type: "POST",
                    url: "verifyingServlet",
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
                            swal({
                                title: "You are registered",
                                text: "Redirecting you to the login page",
                                icon: "success",
                                button: "Close",
                            }).then((value) => {
                                window.location = "register.jsp"
                            });
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(data);
                    }
                });
            }
            if(token === 'login'){
                // alert("Going to loginServlet")
                $.ajax({
                    type: "POST",
                    url: "loginServlet",
                    data: {
                        'email' : email_id.split('=')[0],
                        'pwd' : email_id.split('=')[1]
                    },
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        if (data.trim() === "Failure") {
                            $('form').trigger('reset');
                            swal({
                                title: "Oops! Something went wrong",
                                text: "We are sorry for the inconvenience",
                                icon: "error",
                                button: "Close",
                            });
                        }else {
                            $('form').trigger('reset');
                            location.href = 'booknow.jsp';
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(data);
                    }
                });
            }
            event.preventDefault();
        });

    });
</script>
<script src="https://smtpjs.com/v3/smtp.js"></script>
</body>

</html>