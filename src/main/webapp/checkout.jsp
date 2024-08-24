<%@ page import="com.java.chandanahotelandlodging.entities.Room" %>
<%@ page import="java.util.List" %>
<%@ page import="com.java.chandanahotelandlodging.dataaccessobject.RoomDao" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.Month" %>
<%@ page import="com.java.chandanahotelandlodging.helper.Utilities" %>
<%@ page import="com.java.chandanahotelandlodging.entities.Customer" %>
<%@ page import="com.java.chandanahotelandlodging.dataaccessobject.CustomerDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<%--Auth part--%>
<%

    //    Customer customer = (Customer)session.getAttribute("currentUser");
    Customer customer = CustomerDAO.findCustomerByEmailAndPwd("ghosharindam195@gmail.com", "Arindam9@");
    if (customer == null) {
        response.sendRedirect("login.jsp");
    } else {
%>

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <%--    Extra Css--%>
    <link rel="stylesheet" href="style/book.css">
    <link rel="stylesheet" href="style/lightbox.css">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/icon.jpg">
    <link rel="stylesheet" href="style/button.css">

    <!-- Font Awesome Icon Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        @font-face {
            font-family: "Aileron";
            src: url('fonts/Aileron-UltraLight.otf') format('opentype');
        }

        .checked {
            color: orange;
        }
    </style>
    <%--    Extra Css ends --%>

    <title>CHL | checkout</title>
</head>
<body>

<%
    String inp_in_date = null;
    String inp_out_date = null;
    int roomnumber = 0;
    Room room = null;

    Date op_out_date = null;
    Date op_in_date = null;
    long nights = 0;
    Month in_month = null;
    int in_day = 0;
    Month out_month = null;
    int out_day = 0;
    String days[] = new String[]{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
    int maxAdult = 1;
    int maxChild = 0;
    String op_in_date_str = "";
    String op_out_date_str = "";
    try {

        inp_in_date = request.getParameter("in_date");
        inp_out_date = request.getParameter("out_date");
        roomnumber = Integer.parseInt(request.getParameter("room"));

        if (inp_in_date == null || inp_out_date == null || roomnumber == 0) {
            response.sendRedirect("booknow.jsp");
        }

        DateFormat inputFormat = new SimpleDateFormat("yyyyMMdd");
        DateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date date = inputFormat.parse(inp_in_date);
        op_in_date_str = outputFormat.format(date);

        date = inputFormat.parse(inp_out_date);
        op_out_date_str = outputFormat.format(date);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        nights = ChronoUnit.DAYS.between(LocalDate.parse(op_in_date_str, formatter), LocalDate.parse(op_out_date_str, formatter));

        op_in_date = outputFormat.parse(op_in_date_str);
        op_out_date = outputFormat.parse(op_out_date_str);


        LocalDate local_in_date = LocalDate.parse(op_in_date_str);
        in_day = local_in_date.getDayOfMonth();
        in_month = local_in_date.getMonth();


        LocalDate local_out_date = LocalDate.parse(op_out_date_str);
        out_day = local_out_date.getDayOfMonth();
        out_month = local_out_date.getMonth();


        room = RoomDao.getRoomByRoomnumber(roomnumber);
        if (room == null) {
            response.sendRedirect("booknow.jsp");
        }


        if (room.getType().equalsIgnoreCase("single")) {
            maxAdult = 1;
        } else {
            maxAdult = 2;
            maxChild = 2;
        }

    } catch (Exception e) {
        response.sendRedirect("booknow.jsp");
    }

%>

<%--Nav Bar--%>
<section class="top">
    <nav class="navbar navbar-expand-lg  navbar-dark bg-dark container-fluid"
         style="width: 100%; cursor: pointer;">
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
                    <a class="nav-link item6" href="booknow.jsp"
                       style="font-family: 'Merriweather', serif; color: white;">Book
                        Now</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" style="display: flex; justify-content: center;">
                <div class="button-1" style="padding-left: 1vw;">
                    <button type="button" class="btn btn-primary d-flex align-items-center button"
                            style="color: white;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
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
<%--Navbar Ends--%>

<div class="container mt-5">

    <div class="row mb-3">
        <div class="col-sm-12">
            <a class="h5" href="booknow.jsp">< Modify your booking</a>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-7">
            <div class="row">
                <div class="col-sm-12">
                    <div class="alert alert-warning" role="alert">
                        <span class="h6"><i class="fa fa-exclamation-triangle"></i> Dear Customer, At most <%=maxAdult%> Adults <% if (maxChild > 0) {%>and <%= maxChild %> Children<% } %> can be allowed for this room</span>
                    </div>
                </div>
            </div>

            <%--            Work in progress--%>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card p-2">
                        <%--Primary Guest--%>
                        <div class="card-body">
                            <form id="reg-form" class="mx-1 mx-md-4" method="post" onsubmit="return submitForm(this)">
                                <hr>
                                <span class="h3">Guest 1</span>
                                <hr>

                                <div class="d-flex flex-row align-items-center my-4">
                                    <i class="fa fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="user_name" name="user_name" class="form-control"
                                               placeholder="Your Name" required value="<%= customer.getC_name() %>"
                                               readonly/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="email" id="user_email" name="user_email" class="form-control"
                                               placeholder="Your Email" value="<%= customer.getC_email() %>" required
                                               readonly/>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-phone fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0 d-flex">
                                        <input type="text" id="user_country_code" name="user_country_code"
                                               class="form-control"
                                               value="+91" style="width: 30%;"
                                               value="<%= customer.getC_phone().substring(0,3) %>" required readonly/>
                                        &nbsp;
                                        <input type="text" id="user_phone" name="user_phone" class="form-control"
                                               placeholder="Your Phone" style="width: 70%;"
                                               value="<%= customer.getC_phone().substring(3) %>" required readonly/>
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-list fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">

                                        <%
                                            String id_type = customer.getC_id_type();
                                        %>

                                        <select id="" name="user_type" class="form-select" required>
                                            <% if (id_type.equalsIgnoreCase("Aadhaar")) {%>
                                            <option>Aadhaar</option>
                                            <%} else {%>
                                            <option>PAN</option>
                                            <%}%>
                                        </select>
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i id="" class="fa fa-key fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="" name="aadhaarnumber"
                                               class="form-control" value="<%= customer.getC_id_number() %>" required
                                               readonly/>
                                    </div>
                                </div>
<%--                                <input type="text" value="<%= customer.getC_id() %>" name="g_pay_id" hidden>--%>

                                <button type="submit" class="btn btn-primary">Save</button>

                            </form>
                        </div>
                        <%--Primary Guest End--%>

                        <%
                            if (--maxAdult > 0) {

                        %>
                        <div class="card-body">
                            <form id="reg-form" class="mx-1 mx-md-4" method="post" onsubmit="return submitForm(this)">
                                <hr>
                                <span class="h3">Guest 2</span>
                                <hr>

                                <div class="d-flex flex-row align-items-center my-4">
                                    <i class="fa fa-user fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="user_name" name="user_name" class="form-control"
                                               placeholder="Your Name" required
                                        />
                                    </div>
                                </div>

                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-envelope fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="email" id="user_email" name="user_email" class="form-control"
                                               placeholder="Your Email" required
                                        />
                                    </div>
                                </div>
                                <div class="d-flex flex-row align-items-center mb-4">
                                    <i class="fa fa-phone fa-lg me-3 fa-fw"></i>
                                    <div class="form-outline flex-fill mb-0 d-flex">
                                        <input type="text" id="user_country_code" name="user_country_code"
                                               class="form-control"
                                               value="+91" style="width: 30%;"
                                               required/>
                                        &nbsp;
                                        <input type="text" id="user_phone" name="user_phone" class="form-control"
                                               placeholder="Your Phone" style="width: 70%;"
                                               required/>
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
                                    <i id="extra-icon" class="fa fa-key fa-lg me-3 fa-fw" style="display: none;"></i>
                                    <div class="form-outline flex-fill mb-0">
                                        <input type="text" id="aadhaarnumber" name="aadhaarnumber"
                                               class="form-control" placeholder="Aadhaar Number" required
                                               style="display: none;"/>
                                    </div>
                                </div>
<%--                                <input type="text" value="<%= customer.getC_id() %>" name="g_pay_id" hidden>--%>
                                <button type="submit" class="btn btn-primary">Save</button>

                            </form>
                        </div>

                        <%}%>


                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card p-2">
                        <h4>Chandana Hotel & Lodging</h4>
                        <p style="opacity: 0.5;">Mini Bus Terminal, Keshab Road, Cooch Behar, 736101, West Bengal</p>
                        <div class="row">
                            <div class="col-sm-8">
                                <h5 id="room-number">Room Number : <%=room.getNumber()%>
                                </h5>
                                <div class="">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star-half-o checked"></span>
                                    <span class="bg-success text-white p-1"><b>Excellent</b></span>

                                </div>
                                <span><b><%=nights%> Nights</b></span>
                            </div>
                            <div class="col-sm-4">
                                <img src="room_pics/<%=room.getRoom_img()%>" class="img-fluid">
                            </div>
                        </div>
                        <hr>
                        <div class="row p-1">
                            <div class="col-sm-8 p-1">
                                <span class="fa fa-address-card-o"></span>
                                <input type="text" id="checkin-date" value="<%= op_in_date_str %>" hidden>
                                <input type="text" id="checkout-date" value="<%= op_out_date_str %>" hidden>
                                <b><span><%=days[op_in_date.getDay()]%>, <%=in_day + " " + in_month.toString().substring(0, 3)%> - <%=days[op_out_date.getDay()]%>, <%=out_day + " " + out_month.toString().substring(0, 3)%> </span></b>
                            </div>
                            <div class="col-sm-4 p-1">
                                <span><b>1 Room,</b></span>
                                <b><span id="guestNum"> 1 Guest</span></b>
                            </div>
                        </div>
                        <hr>
                        <div class="row text-center mb-1">
                            <div class="col-sm-6">
                                <b><span>Room price for <%=nights%> Nights</span></b>
                            </div>
                            <div class="col-sm-6">
                                <b><span>&#8377; <%=nights * 5000%></span></b>
                            </div>
                        </div>

                        <div class="row text-center mt-1">
                            <div class="col-sm-6">
                                <b><span>Instant discount</span></b>
                            </div>
                            <div class="col-sm-6">
                                <b><span>- &#8377; <%=(nights * 5000) - (nights * Integer.parseInt(room.getPrice()))%></span></b>
                            </div>
                        </div>
                        <hr>
                        <div class="row text-center mt-1">
                            <div class="col-sm-6">
                                <span class="h5">Payable Amount</span>
                                <label class="h6">inclusive of all taxes</label>
                            </div>
                            <div class="col-sm-6">
                                <span class="h4">&#8377; <span
                                        id="final-amount"><%=nights * Integer.parseInt(room.getPrice())%></span></span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="alert alert-danger" role="alert">
                                <span class="h6" style="color: red;"><i
                                        class="fa fa-bolt"></i> Hurry!! <%=Utilities.generateRandomNumber(1)%> people chasing this room in last 60 Seconds  </span>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="text-center mt-4">
                        <button id="checkout-button" class="btn btn-success btn-lg" type="button">Check out</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<%--Sweet Alert--%>
<%--<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<%--Extra Script--%>
<script src="javascript/width_top.js"></script>
<script src="javascript/lightbox-plus-jquery.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="javascript/active.js"></script>

<!--Razor Pay Script-->
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script>
    AOS.init();
</script>
<%--Extra Script End--%>

<script>
    $(document).ready(function () {
        let guestList = [];
        let guestJsonString = JSON.stringify(guestList);
        sessionStorage.setItem('guestList', guestJsonString);
    });
</script>

<script>
    document.getElementById('user_type').addEventListener('change', (event) => {
        let aadhaarno = document.getElementById('aadhaarnumber');
        aadhaarno.style = 'display: initial';
        document.getElementById('extra-icon').style = 'display: initial';
        if (document.getElementById('user_type').value === 'Aadhaar') {
            aadhaarno.placeholder = 'Aadhaar Number';
        } else if (document.getElementById('user_type').value === 'PAN') {
            aadhaarno.placeholder = 'PAN Number';
        } else {
            aadhaarno.style = 'display: none';
            document.getElementById('extra-icon').style = 'display: none';
        }
    })
</script>


<script>
    function submitForm(form) {
        let name = form.user_name.value;
        let email = form.user_email.value;
        let user_phone = form.user_phone.value;
        let user_type = form.user_type.value;
        let id_ref = form.aadhaarnumber.value;
        // let g_pay_id = form.g_pay_id.value;


        // Do something with the form data, such as send it to a server
        // console.log(name, email, user_phone, user_type, id_ref, g_pay_id);


        // get all the form inputs
        const inputs = form.querySelectorAll('input, select, textarea');
        const submitButton = form.querySelector('button[type="submit"]');


        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to edit guest details!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Save it!'
        }).then((result) => {
            if (result.isConfirmed) {
                // disable all the inputs of the current form
                inputs.forEach(input => {
                    input.disabled = true;
                });
                submitButton.disabled = true;

                //sessionstorage part...............
                const guest = {
                    guest_name: name,
                    guest_email: email,
                    guest_phone: user_phone,
                    guest_type: user_type,
                    guest_id_ref: id_ref,
                    // guest_g_pay_id: g_pay_id
                }

                let guestJsonString = sessionStorage.getItem('guestList');
                let guestList = JSON.parse(guestJsonString);

                guestList.push(guest);

                guestJsonString = JSON.stringify(guestList);
                sessionStorage.setItem('guestList', guestJsonString);


                Swal.fire(
                    'Saved!',
                    'The guest details has been deleted.',
                    'success'
                )
            }
        })


        return false; // Prevent form from submitting normally
    }
</script>


<script>
    $(document).ready(function (e) {

        $("#checkout-button").on("click", function (event) {
            // alert("clicked");

            let guestJsonString = sessionStorage.getItem('guestList');
            let guestList = JSON.parse(guestJsonString);
            let roomNumber = document.getElementById("room-number").innerText.split(": ")[1];
            let checkInDate = $("#checkin-date").val();
            let checkOutDate = $("#checkout-date").val();
            let bill = document.getElementById("final-amount").innerText;

            //console.log(roomNumber, checkInDate, checkOutDate, bill);

            if (guestList.length < 1) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: "Seems, you haven't saved any guests",
                });

                return false;
            } else {
                //console.log("Else me achuka hu...")
                const d={
                    "guestJsonString" : guestJsonString,
                    "checkInDate" : checkInDate,
                    "checkOutDate" : checkOutDate,
                    "bill" : bill
                }

                $.ajax({
                    type: "post",
                    url: "guestServlet",
                    dataType: 'json',
                    data: d,
                    success: function (response,textStatus, jqXHR) {
                        console.log("response success pe aya hain")
                        console.log(response)
                        if (response.status == "created")
                        {
                            //open payment form.....................
                            let options = {
                                "key": "rzp_test_ZnrDw2paOVbmsr",
                                "amount": response.amount,
                                "currency": "INR",
                                "name": "Test",
                                "description": "Test",
                                "order_id": response.id,
                                "handler": function (payment_response) {
                                    /*
                                    alert(payment_response.razorpay_payment_id);
                                    alert(payment_response.razorpay_order_id);
                                    alert(payment_response.razorpay_signature);
                                    alert("Payment Successfull");
                                     */

                                    const dt = {
                                        "roomNumber" : roomNumber,
                                        "checkInDate" : checkInDate,
                                        "checkOutDate" : checkOutDate,
                                        "paymentId" : payment_response.razorpay_payment_id,
                                        "orderId" : payment_response.razorpay_order_id
                                    }


                                    $.ajax({
                                        type: "post",
                                        url: "reservationServlet",
                                        data: dt,
                                        success: function (response, textStatus, jqXHR)
                                        {
                                            console.log(response)
                                            console.log(typeof response)
                                            if(response === "success")
                                            {
                                                console.log("Hum andar aa chuke hain bhaiya ji")
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: 'Your room has been successfully reserved',
                                                    showConfirmButton: false,
                                                    timer: 1500
                                                })
                                            }
                                        },
                                        error: function (errorData, textStatus, errorThrown) {
                                            console.log("inner AJAX response error section pe aya hain")
                                            console.log(errorData);
                                        }
                                    });



                                },
                                "prefill": {
                                    "name": "A G",
                                    "email": "arindam.ghosh@example.com",
                                    "contact": "7001290785"
                                },
                                "notes": {
                                    "address": "CHL-Razorpay Testing"
                                },
                                "theme": {
                                    "color": "#3399cc"
                                }

                            };
                            let rzp = new Razorpay(options);
                            rzp.on('payment.failed', function (response) {
                                alert(response.error.code);
                                alert(response.error.description);
                                alert(response.error.source);
                                alert(response.error.step);
                                alert(response.error.reason);
                                alert(response.error.metadata.order_id);
                                alert(response.error.metadata.payment_id);
                            });
                            rzp.open();
                        }
                    },
                    error: function (errorData, textStatus, errorThrown) {
                        console.log("response error pe aya hain")
                        console.log(errorData);
                    }
                });

            }


        });
    });
</script>


</body>
</html>
<%}%>