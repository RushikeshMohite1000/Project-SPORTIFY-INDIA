<!DOCTYPE html>
<%@page import="com.pojo.ProductImage"%>
<%@page import="com.pojo.Category"%>
<%@page import="com.pojo.Product"%>
<%@page import="java.util.List"%>
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
                <form method="get" action="/getprodbykeyword">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for sports products" id="keyword" name="keyword">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <button class="btn-primary fa fa-search" style="color: rgba(58, 52, 49, 0.884);">
                                </button>
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
     <%List<Category> clist=(List<Category>)request.getAttribute("category"); %>
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                    <%for(Category cat:clist) {%>
                        <div class="nav-item dropdown dropright">
                            <a href="/procategory?id=<%=cat.getCategoryId()%>" class="nav-link dropdown-toggle"><%=cat.getCatrgoryName() %> <i class="fa fa-angle-right float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                <!-- <a href="" class="dropdown-item">Equipements</a>
                                <a href="" class="dropdown-item">Wearables</a>
                                <a href="" class="dropdown-item">Footware</a> -->
                            </div>
                        </div>
                        <%} %>
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
                            <a href="/index" class="nav-item nav-link">Home</a>
                            <a href="/getallproducts" class="nav-item nav-link active">Products</a>
                            <!--<a href="detail.html" class="nav-item nav-link">Shop Detail</a>-->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Inventory</a>
                                <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                    <% HttpSession sess=request.getSession();
                                	if(sess.getAttribute("customer")!=null) {%><a href="/cartitems" class="dropdown-item">Cart</a><%}else{%> 
                                	<a href="/index" class="dropdown-item">Cart</a><%} %>
                                </div>
                            </div>
                            <%if(sess.getAttribute("customer")!=null) {%>
                            <a href="/getcustorders" class="nav-item nav-link">Orders</a>
                            <%}else{%>
                            <a href="/index" class="nav-item nav-link">Orders</a>
                            <%} %>
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
                                	<%
                                	if(sess.getAttribute("customer")==null) {%>
                                    <a class="dropdown-item" data-toggle="modal" data-target="#loginModal">Log In</a>
                                    <a href="/customer" class="dropdown-item">Sign Up</a>
                                    <%} else {%>
                                     <a href="/signout" class="dropdown-item">Sign Out</a><%} %>
                                </div>
                            </div>
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <!-- <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a> -->
                            <a  class="btn px-0 ml-3">
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
 	<%if(sess.getAttribute("customer")==null) {%>
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
                <form action="signin" method="post">
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
                  <a style="margin-left: 20px;" class="btn btn-primary">Forgot Password</a>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
    <%} %>
    <!-- partial Pop Up end -->
    <!-- Breadcrumb Start -->
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Home</a>
                    <a class="breadcrumb-item text-dark" href="#">Shop</a>
                    <span class="breadcrumb-item active">Shop Detail</span>
                </nav>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Shop Detail Start -->
    <div class="container-fluid pb-5">
    <%Product p=(Product)request.getAttribute("product"); %>
        <div class="row px-xl-5">
            <div class="col-lg-5 mb-30">
                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner bg-light">
                        <div class="carousel-item active">
                            <img class="w-100 h-100" src=<%=p.getProductImages().get(0).getProdImageImage()%> alt="Image">
                        </div>
                        <div class="carousel-item">
                            <img class="w-100 h-100" src=<%=p.getProductImages().get(1).getProdImageImage()%> alt="Image">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                        <i class="fa fa-2x fa-angle-left text-dark"></i>
                    </a>
                    <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                        <i class="fa fa-2x fa-angle-right text-dark"></i>
                    </a>
                </div>
            </div>

            <div class="col-lg-7 h-auto mb-30">
                <div class="h-100 bg-light p-30">
                    <h3><%=p.getProdName() %></h3>
                    <div class="d-flex mb-3">    
                    </div>
                    <h3 class="font-weight-semi-bold mb-4">&#8377;<%=p.getProdPrice() %></h3>
                    <p class="mb-4"><%=p.getCategory().getCatrgoryName() %></p>
                    <div class="d-flex align-items-center mb-4 pt-2">
                    <form method="get" action="/addtocart">
                        <div class="input-group quantity mr-3" style="width: 130px;">
                            <div class="input-group-btn">
                            <h3>Quantity</h3>
                            </div>
                            <input type="text" name="quantity" class="form-control bg-secondary border-0 text-center" value="1">
                            <div class="input-group-btn">
                            </div>
                            <input type="text" name="id" value=<%=p.getProdId() %> readonly hidden>
                        </div>  
                    </div>
                     <%if(sess.getAttribute("customer")==null) {%>
                     <a href="/prodetails?id=<%=p.getProdId() %>" class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Add To Cart</a>
                     <%}else { %>
                     <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Add To Cart</button>
                     <%} %>
               </form> 
                    </div>
                </div>
            </div>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="bg-light p-30">
                    <div class="nav nav-tabs mb-4">
                        <a class="nav-item nav-link text-dark active" data-toggle="tab" href="#tab-pane-1">Description</a>
                        <a class="nav-item nav-link text-dark" data-toggle="tab" href="#tab-pane-2">Information</a>
                        
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <h4 class="mb-3">Product Description</h4>
                            <p><%=p.getProdDesc()%></p>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-2">
                            <h4 class="mb-3">Additional Information</h4>
                            <p>       In this application order management for both customers and vendors. Inventory is automatically managed as per purchase of the products. Customer and vendor billing service is also available. Admin can view overall reports of profit and loss statement and all orders.</p>
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item px-0">
                                            Local Sport Club
                                        </li>
                                        <li class="list-group-item px-0">
                                            Sport News 
                                        <li class="list-group-item px-0">
                                            Sport Team page
                                        </li>
                                        <li class="list-group-item px-0">
                                            Sports Equipment Store 
                                        </li>
                                      </ul> 
                                </div>
                                <div class="col-md-6">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item px-0">
                                            Local Sport Club
                                        </li>
                                        <li class="list-group-item px-0">
                                            Sport News 
                                        </li>
                                        <li class="list-group-item px-0">
                                            Sport Team page
                                        </li>
                                        <li class="list-group-item px-0">
                                            Sports Equipment Store 
                                        </li>
                                      </ul> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->
    <!-- Products Start -->
    <!-- <div class="container-fluid py-5">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">You May Also Like</span></h2>
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel related-carousel">
                    <div class="product-item bg-light">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                               
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>???123.00</h5><h6 class="text-muted ml-2"><del>???123.00</del></h6>
                            </div>
                        </div>
                    </div>
                    <div class="product-item bg-light">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="img/product-2.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>???123.00</h5><h6 class="text-muted ml-2"><del>???123.00</del></h6>
                            </div>
                        </div>
                    </div>
                    <div class="product-item bg-light">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="img/product-3.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a> 
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>???123.00</h5><h6 class="text-muted ml-2"><del>???123.00</del></h6>
                            </div>
                        </div>
                    </div>
                    <div class="product-item bg-light">
                        <div class="product-img position-relative overflow-hidden">
                            <img class="img-fluid w-100" src="img/product-4.jpg" alt="">
                            <div class="product-action">
                                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                            </div>
                        </div>
                        <div class="text-center py-4">
                            <a class="h6 text-decoration-none text-truncate" href="">Product Name Goes Here</a>
                            <div class="d-flex align-items-center justify-content-center mt-2">
                                <h5>???123.00</h5><h6 class="text-muted ml-2"><del>???123.00</del></h6>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- Products End -->
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