
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="style/fonts.css">
    <link rel="stylesheet" href="style/register.css">
    <title>Login - CHAL</title>
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
                    <button type="button" class="btn btn-info d-flex align-items-center button"
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

<div class="container my-4" style = "position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);">
    <div class="row">
        <div class="offset-sm-3 col-sm-6">
            <div class="card">
                <div class="card-header text-center display-6 bg-dark text-light" style="">
                    <p><span class="fa fa-key"></span> <b>Login</b></p>
                </div>

                <form id="loginForm" method="post">
                    <%
                        if (session.getAttribute("msg") != null) {
                            String str = session.getAttribute("msg").toString();
                        }
                        if (session.getAttribute("msg") != null && session.getAttribute("msg").toString().contains("_")) {
                            String msg = session.getAttribute("msg").toString().split("_")[0];
                            String cssClass = session.getAttribute("msg").toString().split("_")[1];
                            session.removeAttribute("msg");
                    %>

                    <div class="alert alert-success text-center" role="alert">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                        </svg>&nbsp;&nbsp;<b><%= msg%></b>
                    </div>
                    <%}%>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="pwd" class="form-label">Password</label>
                            <input type="password" class="form-control" id="pwd" name="pwd">
                        </div>
                    </div>

                    <div class="card-footer text-center ">
                        <button type="button" class="btn bg-warning text-light" data-toggle="modal" data-target="#exampleModal">Forget Password</button>

                        <button type="submit" class="btn bg-success text-light">Submit</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Remember Your Password</h1>
            </div>
            <div class="modal-body">
                <div clas="card">
                    <div class="card-body">
                        <label for="user_email" class="form-label">Enter Your Verified Email Address</label>
                        <input type="email" class="form-control" id="user_email" name="user_email" aria-describedby="emailHelp">
                        <button type="button" class="btn btn-success mt-2" id="forget_pwd_button">Get A Password</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://smtpjs.com/v3/smtp.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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

    $(document).ready(function () {
        $("#loginForm").submit(function (event) {
            // Data
            let email = $('#email').val();
            let pwd = $('#pwd').val();
            // Ajax
            const url = "?"+email+"="+pwd+"_login";
            window.location.href = 'otp.jsp'+url;
            event.preventDefault();
        });

        $("#forget_pwd_button").click(function () {

            var eml = $('#user_email').val();

            const d = {'email': eml};

            $.ajax({
                url: "forgetPwdResetServlet",
                data: d,
                success: function (data, textStatus, jqXHR) {
                    // alert(data)
                    if (data.trim() === "not exist")
                    {
                        swal({
                            title: "Failed",
                            text: "Email doesn't Exist!! Please provide correct email.",
                            icon: "error",
                            button: "Close",
                        });
                    } else if (data.trim() === "Failed")
                    {
                        swal({
                            title: "Failed",
                            text: "Something Went Wrong!! Plase try gain after sometime.",
                            icon: "error",
                            button: "Close",
                        });
                    } else if (data.trim().includes("Success"))
                    {
                        let randomPWd = data.split("_")[1];
                        //Mail part
                        Email.send({
                            Host: "smtp.elasticemail.com",
                            Username: "amogh.shri2009@gmail.com",
                            Password: "5E5D4CA5D2B672A06714C64EE611F66F57EC",
                            To: eml,
                            From: "amogh.shri2009@gmail.com",
                            Subject: "Your Auto-generated password",
                            Body: randomPWd,
                        })
                            .then(function (message) {
                                console.log(message);
                            });
                        swal({
                            title: "Success",
                            text: "Hurray!! Password got reset",
                            icon: "success",
                            button: "Close",
                        }).then(function () {
                            window.location = "login.jsp";
                        });

                    }
                },
                error: function (data, textStatus, errorThrown) {
                    console.log(data);
                }
            })


        });
    });

</script>
</body>
</html>
