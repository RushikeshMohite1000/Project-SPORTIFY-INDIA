<!DOCTYPE html>
<%@page import="org.springframework.boot.web.servlet.server.Session"%>

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
            <div class="col-lg-4 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for sports products">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <a href="shop.html">
                                <i class="fa fa-search"></i>
                                </a>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                    <!-- <i class="fa fa-angle-down text-dark"></i>    -->  <!-- Arrow for drop down -->
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Cricket <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <a href="" class="dropdown-item">Equipements</a>
                                <a href="" class="dropdown-item">Wearables</a>
                                <a href="" class="dropdown-item">Footware</a>
                            </div>
                        </div>
                    <div class="nav-item dropdown dropright">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Football <i class="fa fa-angle-right float-right mt-1"></i></a>
                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                            <a href="" class="dropdown-item">Equipements</a>
                            <a href="" class="dropdown-item">Wearables</a>
                            <a href="" class="dropdown-item">Footware</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown dropright">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Tennis<i class="fa fa-angle-right float-right mt-1"></i></a>
                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                            <a href="" class="dropdown-item">Equipements</a>
                            <a href="" class="dropdown-item">Wearables</a>
                            <a href="" class="dropdown-item">Footware</a>
                        </div>
                    </div>
                    </div>
                </nav>
            </div>
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
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="shop.html" class="nav-item nav-link">Products</a>
                            <!--<a href="detail.html" class="nav-item nav-link">Shop Detail</a>-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Inventory</a>
                                <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                    <a href="cart.html" class="dropdown-item">Cart</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Orders</a>
                            <!-- <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class='far fa-user-circle' style="font-size: 24px;"></i></a>
                                    <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                        <a href="CustomerSignUp1.html" class="dropdown-item">Sign In</a>
                                        <a href="" class="dropdown-item">Sign Up</a>
                                    </div>
                                </div>
                            </div>                             -->
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block" style="padding-left: 550px;">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class='far fa-user-circle' style="font-size: 20px;"></i></a>
                                <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                	<% HttpSession sess=request.getSession();
                                	if(sess.getAttribute("customer")==null) {%>
                                    <a class="dropdown-item" data-toggle="modal" data-target="#loginModal">Log In</a>
                                    <a href="/customer" class="dropdown-item">Sign Up</a>
                                    <%} else {%>
                                     <a href="/customer" class="dropdown-item">Sign Out</a><%} %>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <!-- <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a> -->
                            <a href="shop.html" class="btn px-0 ml-3">
                                <i class="fas fa-shopping-cart text-primary" style="font-size: large;padding-bottom: 2px"></i>
                                <!-- <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;color: red;">5</span> -->
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
    <!-- partial Pop Up start -->
    <div class="modal fade" id="loginModal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header border-bottom-0" style="height: 5px;">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="form-title text-center">
                <h4>Welcome</h4>
              </div>
              <div class="d-flex flex-column">
                <form action="index.html" method="post">
                  <div class="form-group">
                    <label for="username">User Name<i style="color: red;">*</i></label>
                    <input type="text" class="form-control" id="username" placeholder="User Name" name="uname">
                  </div>
                  <div class="form-group">
                    <label for="password">Password<i style="color: red;">*</i></label>
                    <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                  </div>
                  <div class="text-center">
                  <button type="submit" class="btn btn-primary">Login</button>
                  <a href="" style="margin-left: 20px;" class="btn btn-primary">Forgot Password</a>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
    <!-- partial Pop Up end -->
    <!-- Carousel Start -->
    <div class="container-fluid mb-3">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div id="header-carousel" class="carousel slide carousel-fade mb-30 mb-lg-0" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item position-relative active" style="height: 430px;">
                            <img class="position-absolute w-100 h-100" src="img/carousel-1.jpg" style="object-fit: cover;">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <div class="p-3" style="max-width: 700px;">
                                    <h1 class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Cricket Items</h1>
                                    <p class="mx-md-5 px-5 animate__animated animate__bounceIn">Cricket Items Very Good</p>
                                    <a class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp" href="#">Shop Now With Coupon</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/offer-1.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 30%</h6>
                        <h3 class="text-white mb-3">Sports Equipements</h3>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
                <div class="product-offer mb-30" style="height: 200px;">
                    <img class="img-fluid" src="img/offer-2.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 40%</h6>
                        <h3 class="text-white mb-3">Wearables</h3>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Categories</span></h2>
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="">
                    <div class="cat-item d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-1.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Cricket</h6>
                            <small class="text-body">100 Products</small>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="">
                    <div class="cat-item img-zoom d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-2.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Football</h6>
                            <small class="text-body">100 Products</small>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="">
                    <div class="cat-item img-zoom d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="img/cat-3.jpg" alt="">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>Tennis</h6>
                            <small class="text-body">100 Products</small>
                        </div>
                    </div>
                </a>
            </div>
        </div>      
    </div>
    <!-- Categories End -->
    <!-- Products Start -->
    <div class="container-fluid pt-5 pb-3">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Trending</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Puma FootBall Studs</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>&#8377;2800.00</h5><h6 class="text-muted ml-2"><del>&#8377;3850.00</del></h6>
                        </div>
                    </div>
                </div>
                <div>
                    <form action="cart.html" method="post">
                    <a href="" class="btn btn-primary">Details</a>  <button class="btn btn-primary" style="margin: 10px;">Add To Cart</button>
                    </form>
                </div>
                <br>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-2.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">MRF Cricket Bat</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>&#8377;1500.00</h5><h6 class="text-muted ml-2"><del>&#8377;1850.00</del></h6>
                        </div>
                    </div>
                </div>
                <div>
                    <form action="cart.html" method="post">
                    <a href="" class="btn btn-primary">Details</a>  <button class="btn btn-primary" style="margin: 10px;">Add To Cart</button>
                    </form>
                </div>
                <br>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-3.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Nike FootBall</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>&#8377;2000.00</h5><h6 class="text-muted ml-2"><del>&#8377;2850.00</del></h6>
                        </div>
                    </div>
                </div>
                <div>
                    <form action="cart.html" method="post">
                    <a href="" class="btn btn-primary">Details</a>  <button class="btn btn-primary" style="margin: 10px;">Add To Cart</button>
                    </form>
                </div>
                <br>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="product-item bg-light mb-4">
                    <div class="product-img position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/product-6.jpg" alt="">
                        <div class="product-action">
                            <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                        </div>
                    </div>
                    <div class="text-center py-4">
                        <a class="h6 text-decoration-none text-truncate" href="">Tennis Racket</a>
                        <div class="d-flex align-items-center justify-content-center mt-2">
                            <h5>&#8377;900.00</h5><h6 class="text-muted ml-2"><del>&#8377;1050.00</del></h6>
                        </div>
                    </div>
                </div>
                <div>
                    <form action="cart.html" method="post">
                    <a href="" class="btn btn-primary">Details</a>  <button class="btn btn-primary" style="margin: 10px;">Add To Cart</button>
                    </form>
                </div>
                <br>
            </div>
        </div>
    </div>
    <!-- Products End -->
      <!-- Featured Start -->
      <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center bg-light mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->
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
    <!-- Pop Up -->
    <script>
        $(document).ready(function() {$('#loginModal').modal('show');
                $(function () {
                                $('[data-toggle="tooltip"]').tooltip()
                                 })
                                    });
    </script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>