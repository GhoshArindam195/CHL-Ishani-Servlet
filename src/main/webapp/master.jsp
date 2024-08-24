<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <title>Master | CHL</title>
</head>
<body>
<%--Navbar--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#" data-target="#addroommodal" data-toggle="modal">Add Room<span
                        class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>
<%--Navbar Ends--%>


<!-- Add Room Modal -->
<div class="modal fade" id="addroommodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Room</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="AddRoomForm" action="addRoomServlet" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="roomnumber">Room number</label>
                        <input type="text" class="form-control" id="roomnumber" name="roomnumber"
                               aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="RoomType">Room Type</label>
                        <select class="form-control" id="RoomType" name="RoomType">
                            <option value="SINGLE">Single</option>
                            <option VALUE="DOUBLE">Double</option>
                            <option value="DELUXE">Deluxe</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="beds">Beds</label>
                        <input type="number" class="form-control" id="beds" aria-describedby="emailHelp" name="beds">
                    </div>

                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="HasAc" name="HasAc" value="y">
                        <label class="form-check-label" for="HasAc">Has AC</label>
                    </div>
                    <div class="form-group">
                        <label for="price">Price</label>
                        <input type="text" class="form-control" id="price" aria-describedby="emailHelp" name="price">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" id="description" name="description" rows="5"
                                  placeholder="Enter Room Description.."></textarea>
                    </div>
                    <div class="form-group">
                        <input type="file" id="roomImg" name="roomImg">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary m-auto">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Add Room Modal Ends -->


<!-- Optional JavaScript; choose one of the two! -->
<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<script
        src="https://code.jquery.com/jquery-3.6.4.min.js"
        integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<%--Sweet Alert CDN--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    $(document).ready(function (e) {

        $("#AddRoomForm").on("submit", function (event) {
            //This code gets called when form is submitted....

            event.preventDefault();

            // console.log("submitted")

            let form = new FormData(this);

            // console.log(Array.from(form))


            //now requesting to server using AJAX
            $.ajax({
                url: "addRoomServlet",
                type: 'POST',
                data: form,
                processData: false,
                contentType: false,
                success: function (data, textStatus, jqXHR) {
                    //success
                    if (data.trim() == 'Success') {
                        //Sweet alert
                        swal("Hurray!!", "The Room successfully Added", "success");
                        //alert(data.trim())
                    } else {
                        //error Sweet alert
                        swal(data)
                        //alert(data.trim())
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //error Sweet alert
                    //swal(data)
                }
            })


        })

    })

</script>

</body>
</html>
