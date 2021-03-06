<!DOCTYPE html>
<%@page import="com.pojo.Order"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Sports</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
     <!-- Topbar Start -->
     <div class="container-fluid">
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="" class="text-decoration-none">
                    <span class="h1 text-uppercase text-primary bg-dark px-2">Sportify</span>
                    <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">India</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                     <a href="" class="text-decoration-none d-block d-lg-none">  <!-- For Responsive Name -->
                         <span class="h1 text-uppercase text-dark bg-light px-2">Sportify</span>
                        <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">India</span>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                             <a href="/sellerprofile" class="nav-item nav-link">Profile</a>
                            <a href="/allproduct" class="nav-item nav-link active">Products</a>
                            <!-- <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class='far fa-user-circle' style="font-size: 24px;"></i></a>
                                    <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                        <a href="" class="dropdown-item">Sign In</a>
                                        <a href="" class="dropdown-item">Sign Up</a>
                                    </div>
                                </div>
                            </div>                             -->
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block" style="padding-left: 1060px;">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class='far fa-user-circle' style="font-size: 20px;"></i></a>
                                <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                    <a href="/sellersignout" class="dropdown-item">Sign Out</a>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <!-- <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a> -->
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
    <!-- Breadcrumb Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Home</a>
                    <a class="breadcrumb-item text-dark" href="#">Seller</a>
                    <span class="breadcrumb-item active">Order</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
     <!-- Order Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
        <%Order o=(Order)request.getAttribute("order"); %>
            <div class="col-md-10">
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Personal Details</span></h5>
                <form action="/update1" method="post">
                    <div class="row">
                    	<div class="form-group col">
                            <label for="name">Order Id </label>
                            <input id="id" name="id" class="form-control" value=<%=o.getOrderId() %> readonly>
                        </div>
                        <div class="form-group col">
                            <label for="name">Product name </label>
                            <input id="name" name="name" class="form-control" value=<%=o.getProduct().getProdName() %> readonly>
                        </div>
                       <div class="form-group col">
                            <label for="date"> Date</label>
                            <input  class="form-control" name="date" value=<%=o.getDate() %> readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col">
                            <label for="desc">Description </label>
                            <input id="desc" name="desc" class="form-control" value=<%=o.getDesc() %>  readonly>
                        </div>
                        <div class="form-group col">
                            <label for="total cost">Total Cost</label>
                            <input id="total cost" name="totalcost" class="form-control" value=<%=o.getTotalCost() %>  readonly>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col">
                            <label for="quantity">Quantity</label>
                            <input id="quantity" name="quantity"class="form-control" value=<%=o.getQuantity() %> readonly>
                        </div>
                        <div class="form-group col">
                            <label for="status">Status</label>
                            <input type="text" id="status" name="status" value=<%=o.getStatus() %> class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col">
                            <label for="payment by">Payment By</label>
                            <input id="payment by" name="payment by" value=<%=o.getPaymentBy() %> class="form-control" readonly>
                        </div>
                        <div class="form-group col">
                            <label for="shipping adress">Shipping Adress </label>
                            <input id="shipping adress" name="shipping adress" value=<%=o.getShippingAddress() %> class="form-control" readonly>
                        </div>
                    <div class="form-group col">
                        <label for="city">City</label>
                        <input id="city" name="city" value=<%=o.getCity() %> class="form-control" readonly>
                    </div>
                </div>
                    <div class="form-group mb-0">
                        <input type="submit" value="Update" class="btn btn-primary px-3" style="margin-right: 10px;">
                        <a href="/allproduct" class="btn btn-primary">Cancel</a>
                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <!-- Order End -->
     <!-- Footer Start -->
     <div class="container-fluid bg-dark text-secondary mt-5 pt-5"><!--<center> -->
        <div class="row">
            <div class="col-md-4 mb-5">
                <h5 class="text-secondary text-uppercase mb-4">More</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <h5 class="text-secondary text-uppercase mb-4">Our Community</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Allumini</a>
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Fershers</a>
                </div>
            </div>
            <div class="col-md-4 mb-5">
                <h5 class="text-secondary text-uppercase mb-4">Be Seller</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Register</a>
                    <a class="text-secondary mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Sign In</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- Footer End -->
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="view/js/main.js"></script>
</body>

</html>