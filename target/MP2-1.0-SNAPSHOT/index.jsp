
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <title>Matrix Pharmacy Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel = "icon" href =  
              "CompanyLog/icons8-medical-bag-96.png" 
              type = "image/x-icon"> 
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            body{
                overflow-x: hidden;
            }
        </style>
    </head>

    <body>
        <div class="site-wrap">
            <div class="site-navbar py-2">
                <div class="search-wrap">
                    <div class="container">
                        <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
                        <input type="text" id="searchproduct" class="form-control" placeholder="Search product name and hit enter...">
                    </div>
                </div>
                <div class="container">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="logo">
                            <div class="site-logo">
                                <a href="homeController" class="js-logo-clone">
                                    <img src="CompanyLog/logo .png"/>
                                    <!--                                    Matrix Pharma-->
                                </a>
                            </div>
                        </div>

                        <div class="main-nav d-none d-lg-block">
                            <nav class="site-navigation text-right text-md-center" role="navigation">
                                <ul class="site-menu js-clone-nav d-none d-lg-block">
                                    <li class="active"><a href="homeController">Home</a></li>
                                    <li><a href="product">Products</a></li>
                                    <li><a href="myOrders">My Orders</a></li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li><b>${username}</b></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="icons">
                            <a href="#" id="searchwords" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                            <a href="CartShow" class="icons-btn d-inline-block bag">
                                <span class="icon-shopping-bag"></span>
                            </a>
                            <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span
                                    class="icon-menu"></span></a>

                            <a class="btn btn-primary dropdown-toggle" href="#" role="icon" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            </a>
                            <div class="dropdown-menu " aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="signin.jsp">Sign In</a>
                                <a class="dropdown-item" href="signin.jsp">Log Out</a>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>

            <div class="site-blocks-cover" id="hidetopimage" style="background-image: url('medicineimage/images/hero_1.jpg');">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
                            <div class="site-block-cover-content text-center">
                                <h2 class="sub-title">Effective Medicine, New Medicine Everyday</h2>
                                <h1>Welcome To Matrix Pharmacy</h1>
                                <p>
                                    <a href="product" class="btn btn-primary px-5 py-3">Shop Now</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="title-section text-center col-12">
                            <h2 id="heading" class="text-uppercase">Popular Company</h2>
                        </div>
                    </div>
                    <div class="row mt-4" id="inithide">
                        <div class="col-md-5 mr-auto">
                            <div class="border text-center">
                                <img id="imagecate" src="medicineimage/" alt="Image" class="img-fluid p-5">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <lk class="getidog" style="visibility: hidden;" id="id"></lk>
                            <h2 class="text-black" id="brandname"></h2>
                            <lp class="koo" style="visibility: hidden;" id="tabename"></lp>
                            <p id="medeidescription"></p>
                            <p>$<strong class="text-black h4" id="productprice"></strong></p>
                            <div class="mb-5">
                                <div class="input-group mb-3" style="max-width: 220px;">
                                    <div class="input-group-prepend">
                                        <button class="btn btn-outline-info js-btn-minus" type="button">&minus;</button>
                                    </div>
                                    <input type="text" name="quantity" class="form-control text-center" id="quantity" value="1" placeholder=""
                                           aria-label="Example text with button addon" aria-describedby="button-addon1">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-info js-btn-plus" type="button">&plus;</button>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-5">
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                        <table class="table custom-table">
                                            <thead>
                                            <th>Generic Name</th>
                                            <th>Packaging</th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td id="genericname"></td>
                                                    <td id="packagig"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row" >
                                <div class="col-lg-4 col-sm-4">
                                    <p><Button href="#" class="buy-now btn btn-sm height-auto px-4 py-3 btn-danger max-auto buy-nowo" style="padding-left: 15px">Buy Now</a></Button>
                                </div>
                                <div class="col-lg-4 col-sm-4">
                                    <p><Button href="#" class="buy-now btn btn-sm height-auto px-4 py-3 btn-black max-auto add-carto" id='supername' style="padding-left: 15px">Add To Cart</button></p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row" id="hidecategory">
                        <c:forEach items="${allvalue}" var="lp">
                            <div  class="col-lg-4 col-sm-10 col-md-6  m-l-r-auto text-center ">
                                <!--<span class="tag">Sale</span>-->
                                <a href="#"><img src="CompanyName/${lp.companyImageName}" alt="Image"></a>
                                <h3 class="text-dark text-uppercase blockproduct"><a href="#"> ${lp.companyname}</a></h3>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="row mt-5" id="pagihide">
                <div class="col-md-12 text-center">
                    <div class="site-block-27">
                        <ul>
                            <li><a href="#">&lt;</a></li>
                                <c:forEach items="${count}" var="p">    
                                <li><a href="#" class="getidof">${p.num}</a></li>
                                </c:forEach>
                            <li><a href="#">&gt;</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="site-section bg-light">
                <div class="container">
                    <div class="row">
                        <div class="title-section text-center col-12">
                            <h2 class="text-uppercase">All Categories</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 block-3 products-wrap">
                            <div class="nonloop-block-3 owl-carousel">
                                <c:forEach items="${allvalue}" var="lp">
                                    <div class="text-center item mb-4">
                                        <a href="shop-single.html"> <img src="CompanyName/${lp.companyImageName}" alt="Image"></a>
                                        <h3 class="text-dark blockproduct"><a href="#">${lp.companyname}</a></h3>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="site-section bg-secondary bg-image" style="background-image: url('medicineimage/images/bg_2.jpg');">
                <div class="container">
                    <div class="row align-items-stretch">
                        <div class="col-lg-6 mb-5 mb-lg-0">
                            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('medicineimage/images/bg_1.jpg');">
                                <div class="banner-1-inner align-self-center">
                                    <p>Life is choices, and they are relentless. No sooner have you made one choice than another is upon you.?
                                    </p>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-6 mb-5 mb-lg-0">
                            <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('medicineimage/images/bg_2.jpg');">
                                <div class="banner-1-inner ml-auto  align-self-center">
                                    <h2>Rated by Experts</h2>
                                    <p>?Declare the past, diagnose the present, foretell the future.?
                                    </p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>


            <footer class="site-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

                            <div class="block-7">
                                <h3 class="footer-heading mb-4">About Us</h3>
                                <p>A medicine cat has no time for doubt. Put your energy into today and stop worrying about the past.</p>
                            </div>

                        </div>
                        <div class="col-lg-3 mx-auto mb-5 mb-lg-0">
                            <h3 class="footer-heading mb-4">Quick Links</h3>
                            <ul class="list-unstyled">
                                <li class="active"><a href="index.jsp">Home</a></li>
                                <li><a href="myOrders">My Orders</a></li>
                                <li><a href="signin.jsp">Sign In</a></li>
                                <li><a href="about.jsp">About</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-md-6 col-lg-3">
                            <div class="block-5 mb-5">
                                <h3 class="footer-heading mb-4">Contact Info</h3>
                                <ul class="list-unstyled">
                                    <li class="phone"><a href="tel://+918887821109">+91 8887821109</a></li>
                                </ul>
                            </div>


                        </div>
                    </div>
                    <div class="row pt-5 mt-5 text-center">
                        <div class="col-md-12">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                                with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank"
                                                                                         class="text-primary">Colorlib</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>

                    </div>
                </div>
            </footer>
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/main.js"></script>
        <script src="jquery.js"></script>
        <script>
                                    $(document).ready(function () {
                                        $('#inithide').hide();
                                        $('#searchproduct').change(function () {
                                            var text = $('#searchproduct').val();
                                            $.get('getSingleProduct', {
                                                text: text
                                            }, function (responsivetext) {
                                                $('#hidecategory').hide();
                                                $('#heading').hide();
                                                $('#pagihide').hide();
                                                $('#hidetopimage').hide();
                                                $('#inithide').show();
                                                if (responsivetext !== 'No Product Found !') {
                                                    $.each(responsivetext, function (key, value) {
                                                        $('#id').text(value.id);
                                                        $('#brandname').text(value.brandname);
                                                        $('#tabename').text(value.company);
                                                        $('#imagecate').attr('src', 'medicineimage/' + value.imagename);
                                                        $('#productprice').text(value.productprice);
                                                        $('#packagig').text(value.packaging);
                                                        $('#genericname').text(value.genericname);
                                                        $('#medeidescription').text(value.productdescription);
                                                    });
                                                } else {
                                                    $('#brandname').text("No Product Found !");
                                                }
                                            });
                                        });
                                    });
                                    $('.icon-close2').click(function () {
                                        $('#hidecategory').show();
                                        $('#heading').show();
                                        $('#pagihide').show();
                                        $('#hidetopimage').show();
                                        $('#inithide').hide();
                                    });

                                    $('.blockproduct').click(function (event) {
                                        var og = event.target.innerHTML;
                                        document.location.href = "subcategorypage?subcatename=" + og;
                                    });
                                    $('.getidof').click(function (event) {
                                        document.location.href = "homeController?number=" + event.target.innerHTML;
                                    });
                                    var imp = null;
                                    $('.buy-nowo').click(function () {
                                        var fg = $(this).index();
                                        var id = document.getElementsByClassName('getidog')[fg].innerHTML;
                                        var tabnam = document.getElementsByClassName('koo')[fg].innerHTML;
                                        var qun = $('#quantity').val();
                                        var hj = document.getElementsByClassName('text-black')[fg].innerHTML;
//                                        alert("bookproduct2?tablename=" + tabnam + "&brandname=" + hj + "&id=" + id + "&qun=" + qun);
                                        document.location.href = "bookproduct2?tablename=" + tabnam + "&brandname=" + hj + "&id=" + id + "&qun=" + qun;
                                    });
                                    $('.add-carto').click(function () {
                                        $('#loadingbuffer').show();
                                        var fg = $(this).index();
                                        var id = $('.getidog').text();
                                        var tabnam = document.getElementsByClassName('koo')[fg].innerHTML;
                                        var qun = $('#quantity').val();
                                        var hj = document.getElementsByClassName('text-black')[fg].innerHTML;
                                        document.location.href = "addToCartFromSearch?tablename=" + tabnam + "&brandname=" + hj + "&qun=" + qun;
                                    });
        </script>
    </body>
</html>