<!DOCTYPE html>
<%@page import="com.pojo.Product"%>
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
                    <span class="breadcrumb-item active">Product</span>
                </nav>
            </div>
        </div>
    </div>
<!-- Breadcrumb End -->
<!-- Product Add Start -->
<div class="container-fluid">
    <div class="row px-xl-5">
        <div class="col-md-10">
        <% Product p=(Product)request.getAttribute("product"); %>
            <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Update Product</span></h5>
            <form action="/updateproduct" method="post">
                <div class="row">
                <div class="form-group col">
                        <label for="name">Product ID </label>
                        <input id="id" name="id" class="form-control" placeholder="product name" value=<%=p.getProdId()%> readonly="readonly" >
                    </div>
                    <div class="form-group col">
                        <label for="name">Product name </label>
                        <input id="name" name="name" class="form-control" placeholder="product name" value=<%=p.getProdName()%> >
                    </div>
                    <div class="form-group col">
                        <label for="desc"> Discription</label>
                        <input type="text" id="desc" class="form-control" name="desc" value=<%=p.getProdDesc()%> >
                    </div>     
                </div>
                <div class="row">
                    <div class="form-group col">
                        <label for="disc">Discount</label>
                        <input type="text" id="disc" name="disc" class="form-control" value=<%=p.getProdDiscount() %> >
                    </div>
                    <div class="form-group col">
                        <label for="quantity">Quantity</label>
                        <input type="text" id="quantity" name="quantity"class="form-control" placeholder="Quantity" value=<%=p.getProdQuantity() %>>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col">
                        <label for="price">Price</label>
                        <input type="text" id="price" name="price" class="form-control" value=<%=p.getProdPrice()%> >
                    </div>
                    <div class="form-group col">

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
<!-- Product Add End -->
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
                        <h5 class="text-secondary text-uppercase mb-4">ADMINISTRATION</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="http://localhost:3000"><i class="fa fa-angle-right mr-2"></i>ADMIN</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Be Seller</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="/sellerlanding"><i class="fa fa-angle-right mr-2"></i>Register</a>
                            <a class="text-secondary mb-2" href="/sellerlanding"><i class="fa fa-angle-right mr-2"></i>Sign In</a>
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
<script src="js/main.js"></script>
</body>
</html>