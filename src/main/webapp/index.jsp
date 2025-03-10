<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/lightbox.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <title>Chandana Hotel & Lodging</title>
    <link rel="shortcut icon" href="img/icon.jpg">
    <link rel="stylesheet" href="style/button.css">
    <link rel="stylesheet" href="style/button-outline.css">
    <link rel="stylesheet" href="style/fonts.css">
</head>

<body>
    <section class="top" id="parallax">
        <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-* container-fluid"
            style="background-color: rgba(0, 0, 0, 0.6);width: 100%; backdrop-filter: blur(8px); position: fixed; cursor: pointer;">
            <a class="navbar-brand" href="index.jsp"
                style="font-family: 'Aileron', sans-serif;">Chandana Hotel & Lodging</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
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
                        <a class="nav-link item6" href="booknow.jsp"
                            style="font-family: 'Merriweather', serif; color: white;">Book
                            Now</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" style="display: flex; justify-content: center;">
                    <div class="button-1" style="padding-left: 1vw;">
                        <button onclick = "location.href = 'register.jsp'" type="button" class="btn btn-primary d-flex align-items-center button" style="color: white;"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                height="16" fill="white" class="bi bi-pen-fill" viewBox="0 0 16 16" >
                                <path
                                    d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001z" />
                            </svg>&nbsp;Register</button>
                    </div>
                    <div class="button-2">

                        <button onclick = "location.href = 'login.jsp'" type="button" class="btn btn-info d-flex align-items-center button" style="color: white;"><svg xmlns="http://www.w3.org/2000/svg" width="16"
                                height="16" fill="white" class="bi bi-key-fill" viewBox="0 0 16 16">
                                <path
                                    d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                            </svg>&nbsp;Login</button>
                    </div>
                </form>
            </div>
        </nav>
        <div class="hero container-fluid" style="width: 100%">
            <center>
                <h1 class="hero-heading">Enjoy your stay with us</h1><br>
                <div class="container" style="font-family: 'Merriweather', serif;">
                    <span style="background-color: #FFF9A6; padding: 2vh 2vw; border-radius: 10px;">&bull;&nbsp;15% off
                        on our Deluxe room for a limited period of time&nbsp;&bull;</span>
                </div><br>
                <button type="button" class="btn btn-warning button">Book Now</button>
            </center>
        </div>

    </section>
    <hr>

    <section class="container-fluid xyz" id="about" style="width: 100%">
        <div class="hid">
            <center>
                <h1 data-aos="fade-out" style="font-family: 'Aileron', sans-serif;">About Us</h1>
            </center><br>
        </div>
        <div class="abt-us">
            <div class="abt-us-img" data-aos="fade-up">
                <img src="img/floor.jpeg" alt="img/floor.jpg"
                    style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;">
            </div>
            <div class="abt-us-text">
                <h1 data-aos="fade-out" style="font-family: 'Aileron', sans-serif; font-weight: 100;">About Us</h1>
                <p data-aos="fade-up" style="font-family: 'Merriweather', serif;">Situated in Cooch Behar, Chandana
                    Hotel and Lodging is located in one of the cities most popular
                    locations. Beside the world-famous Cooch Raj Bari, designed with LW Design Group LCC, the hotel
                    features 12 guestrooms and suites. This property is also home to multiple food and beverage
                    outlets.</p>
                <strong data-aos="fade-up">Services provided by us:</strong><br><br>
                <ul class="list-group list-group-flush" data-aos="fade-up">
                    <li class="list-group-item" style="font-family: 'Merriweather', serif;">Restaurant</li>
                    <li class="list-group-item" style="font-family: 'Merriweather', serif;">Room Service</li>
                    <li class="list-group-item" style="font-family: 'Merriweather', serif;">Laundry Service</li>
                    <li class="list-group-item" style="font-family: 'Merriweather', serif;">Direct Dialing Facility</li>
                    <li class="list-group-item" style="font-family: 'Merriweather', serif;">Travel Assistance</li>
                    <li class="list-group-item"></li>
                </ul>
            </div>
        </div>
    </section>

    <hr>


    <section class="yciotp" style="width: 100%;">
        <div class="yciotp-div" data-aos="fade-up">
            <div class="yciotp-text">
                <center>
                    <h1 style="font-weight: 100;">Your comfort is our topmost priority</h1>
                    <br>
                    <button type="button" class="btn button btn-warning">Book Now</button>
                </center>
            </div>
        </div>
    </section>
    <hr>

    <section class="container" id="gallery">
        <center>
            <h1 data-aos="fade-out" style="font-family: 'Aileron', sans-serif;font-weight: 100;">Gallery</h1>
        </center>
        <br>
        <div class="row" data-aos="fade-up">
            <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                <a href="img/front.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/front.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>
                <a href="img/galary6.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/galary6.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>

            </div>

            <div class="col-lg-4 mb-4 mb-lg-0">
                <a href="img/galary8.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/galary8.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>
                <a href="img/galary1.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/galary1.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>

            </div>

            <div class="col-lg-4 mb-4 mb-lg-0">
                <a href="img/delux1.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/delux1.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>

                <a href="img/galary7.jpeg" data-lightbox="models" data-caption="Caption1">
                    <img src="img/galary7.jpeg" class="w-100 shadow-1-strong rounded mb-4"
                        style="box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;" />
                </a>

            </div>
        </div>
    </section>
    <hr>

    <section class="customer-reviews xyz container-fluid" id="reviews">
        <div class="" style="background-color: white;">
            <center>
                <h1 data-aos="fade-out" class="cr-heading" style="font-family: 'Aileron', sans-serif;font-weight: 100;">
                    Customer Reviews</h1>
            </center><br>
            <div class="card-deck" data-aos="fade-up">
                <div class="card review1"
                    style="width: 18rem; box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;">
                    <div class="cr-img">
                        <img src="img/ArindamSir.jpg" class="card-img-top" alt="...">
                    </div><br>
                    <div class="star">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg>
                    </div>
                    <br>
                    <h3 style="padding: 0; margin:0; font-family: 'Merriweather', serif;">Arindam Ghosh</h3>
                    <div class="card-body" style="display: flex; align-items: center;justify-content: center;">
                        <p class="card-text" style="font-family: 'Merriweather', serif;">The food and the services they
                            provide is more valuable than the price they take, hygienic food and probably the best food
                            and lodging service in Cooch Behar</p>
                    </div>
                </div>
                <div class="card review2"
                    style="width: 18rem; box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;">
                    <div class="cr-img">
                        <img src="img/face1.jpg" class="card-img-top " alt="...">
                    </div><br>
                    <div class="star">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg>
                    </div>
                    <br>
                    <h3 style="padding: 0; margin:0; font-family: 'Merriweather', serif;">Urmilla Rao</h3>
                    <div class="card-body" style="display: flex; align-items: center;justify-content: center;">
                        <p class="card-text" style="font-family: 'Merriweather', serif;">I usually visit this hotel for
                            Lunch,their food is the best in town,they are known for good service quality & authentic
                            food. The place does not offer parking but a paid parking area is near. They have rooms also
                            and they are good too.</p>
                    </div>
                </div>
                <div class="card review3"
                    style="width: 18rem; box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;">
                    <div class="cr-img">
                        <img src="img/face3.jpg" class="card-img-top" alt="...">
                    </div><br>
                    <div class="star">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-star-fill" viewBox="0 0 16 16">
                            <path
                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z" />
                        </svg>
                    </div>
                    <br>
                    <h3 style="padding: 0; margin:0; font-family: 'Merriweather', serif;">Saatwik Sen</h3>
                    <div class="card-body" style="display: flex; align-items: center;justify-content: center;">
                        <p class="card-text" style="font-family: 'Merriweather', serif;">The food is really very good,
                            absolutely Bengali food, and the conversation is also great. I usually visit this hotel for
                            Lunch,their food is the best in town,they are known for good service quality & authentic
                            food. The hotel a crowded in lunch time so have some patience.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr>

    <section class="contact-us-bg xyz" id="contactus" style="padding-bottom: 0;">
        <div class="container">
            <div class="contact">
                <br>
                <center>
                    <h1 data-aos="fade-up" style="font-family: 'Aileron', sans-serif;font-weight: 100;">Contact Us</h1>
                    <br>
                    <p data-aos="fade-out" style="font-family: 'Merriweather', serif;">
                        We would like to hear from you. Please share your review or questions with us and our team will
                        reach out to you at the earliest possible time.
                    </p>
                </center>
                <div class="contact-bottom">
                    <div class="contact-items">
                        <ul class="contact-list" data-aos="fade-up">
                            <li>
                                <h3><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-telephone-fill" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
                                            d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                    </svg>&nbsp;Phone</h3>
                                (+91) 7551063781 / 9735019857
                            </li>
                            <br><br>
                            <li>
                                <h3><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-house-door-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5Z" />
                                    </svg>&nbsp;Address</h3>
                                Raj Rajendra Narayan Road Near to Coochbehar Bus Stand, West Bengal 736101, Located near
                                Mini Bus Station
                            </li>
                            <br><br>
                            <li>
                                <h3><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-envelope-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                                    </svg>&nbsp;Email</h3>
                                ghosharindam195@gmail.com
                            </li>
                        </ul>
                    </div>
                    <div class="contact-form">
                        <form data-aos="zoom-out" id="feedback-form">
                            <div class="form-group">
                                <h4><label for="name">Name</label></h4>
                                <input type="name" class="form-control" id="name" name="name"
                                    placeholder="Name Surname">
                                <p id="nameLabel" class="text-danger align-items-center"
                                    style="text-align: left; display: none;"><svg xmlns="http://www.w3.org/2000/svg"
                                        width="16" height="16" fill="currentColor" class="bi bi-exclamation-square-fill"
                                        viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>&nbsp;Please enter name</p>
                            </div>
                            <div class="form-group">
                                <h4><label for="email">Email address</label></h4>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="name@example.com">
                                <p class="text-danger email-text" style="text-align: left; display: none;">&nbsp;Invalid
                                    Email</p>
                                <p id="emailLabel" class="text-danger" style="text-align: left; display: none;"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-exclamation-square-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>&nbsp;Please enter email address</p>
                            </div>
                            <div class="form-group">
                                <h4><label for="subject">Subject</label></h4>
                                <input type="subject" class="form-control" id="subject" name="subject"
                                    placeholder="Subject">
                                <p id="subjectLabel" class="text-danger" style="text-align: left; display: none;"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-exclamation-square-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>&nbsp;Please enter subject</p>
                            </div>
                            <div class="form-group">
                                <h4><label for="radio_button">Query Type</label></h4>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="radio_button" id="radio_button_1"
                                        value="question">
                                    <label class="form-check-label" for="radio_button_1"
                                        style="color: black; ">Question</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="radio_button" id="radio_button_2"
                                        value="review">
                                    <label class="form-check-label" for="radio_button_2"
                                        style="color: black; ">Review</label>
                                </div><br>
                                <p id="queryTypeLabel" class="text-danger" style="text-align: left; display: none;"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-exclamation-square-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>&nbsp;Please select one of these</p>
                            </div>
                            <div class="form-group">
                                <h4><label for="content">Question or Review</label></h4>
                                <textarea class="form-control" id="content" name="content" rows="5"
                                    placeholder="Write Something Here..."></textarea>
                                <p id="contentLabel" class="text-danger" style="text-align: center; display: none;"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-exclamation-square-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6 4c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995A.905.905 0 0 1 8 4zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                                    </svg>&nbsp;Please elaborate on the subject so that we can help you better</p>
                            </div>
                            <center><button type="submit" class="btn btn-info button" style="color: white;">Submit</button></center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div
            style="padding: 2vh 0; background-color: rgba(0, 0, 0, 0.6);width: 100%; backdrop-filter: blur(8px); cursor: pointer; ">
            <div class="container d-flex align-items-center footer1" style="justify-content: space-between;">
                <strong style="color: lightgrey; font-family: 'Merriweather', serif; text-align: center;">&copy; - 2022
                    -
                    ChandanaHotelAndLodging - Privacy</strong><br>
                <div class="button" style="display: flex; gap: 1vw;">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-facebook"
                        viewBox="0 0 16 16" onclick="alert('facebook');">
                        <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-messenger"
                        viewBox="0 0 16 16" onclick="alert('messenger');">
                        <path
                            d="M0 7.76C0 3.301 3.493 0 8 0s8 3.301 8 7.76-3.493 7.76-8 7.76c-.81 0-1.586-.107-2.316-.307a.639.639 0 0 0-.427.03l-1.588.702a.64.64 0 0 1-.898-.566l-.044-1.423a.639.639 0 0 0-.215-.456C.956 12.108 0 10.092 0 7.76zm5.546-1.459-2.35 3.728c-.225.358.214.761.551.506l2.525-1.916a.48.48 0 0 1 .578-.002l1.869 1.402a1.2 1.2 0 0 0 1.735-.32l2.35-3.728c.226-.358-.214-.761-.551-.506L9.728 7.381a.48.48 0 0 1-.578.002L7.281 5.98a1.2 1.2 0 0 0-1.735.32z" />
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-whatsapp"
                        viewBox="0 0 16 16" onclick="alert('whatsapp');">
                        <path
                            d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z" />
                    </svg>
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="white" class="bi bi-instagram"
                        viewBox="0 0 16 16" onclick="alert('instagram');">
                        <path
                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                    </svg>
                </div>
            </div>
        </div>
    </section>


    <script src="javascript/parallax.js"></script>
    <script src="javascript/lightbox-plus-jquery.js"></script>
    <script src="javascript/aos.js"></script>
    <script src="javascript/active.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="javascript/ajax.js"></script>
    <script>
        AOS.init();
    </script>
</body>

</html>