<%-- 
    Document   : Reset-Pass-Nomatch
    Created on : Feb 5, 2022, 6:00:59 PM
    Author     : adala_06k8xra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>     
   
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">

    <!-- ========== SEO ========== -->
    <title>Hotel Zee - Reset Password No Match</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta content="" name="author">

    <!-- ========== FAVICON ========== -->
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png">
	<link rel="icon" href="images/favicon.png">

   <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"><!--required-->
    <!--<link href="revolution/css/layers.css" rel="stylesheet" type="text/css" />-->
    <link href="revolution/css/settings.css" rel="stylesheet" type="text/css"><!--Required if deleted the footer copyrights will not stand at the end-->
    <!--<link href="revolution/css/navigation.css" rel="stylesheet" type="text/css" />-->
    <!--<link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css">-->
    <!--<link href="css/animate.min.css" rel="stylesheet" type="text/css">-->
    <!--<link href="css/famfamfam-flags.css" rel="stylesheet" type="text/css">-->
    <!--<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">-->
    <!--<link href="css/owl.carousel.min.css" rel="stylesheet" type="text/css">-->
    <link href="css/style.css" rel="stylesheet" type="text/css"><!--REQUIRED the sticky coming down menu -->
    <!--<link href="css/responsive.css" rel="stylesheet" type="text/css">  THERES SOME RESPONSIVE.CSS HERE SO CHECK IF THE WEB PAGE LOADS ON ALL PC LAP AND MOBILE IF NOT UNCOMMENT THIS-->

    <!-- ========== ICON FONTS ========== -->
    <link href="fonts/font-awesome.min.css" rel="stylesheet"><!--Required-->
    <link href="fonts/flaticon.css" rel="stylesheet"><!--Required-->

    <!-- ========== MY CSS ========== -->
    <link href="css/mycss.css" rel="stylesheet" type="text/css">
    
    <!-- ========== GOOGLE FONTS ========== -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900%7cRaleway:400,500,600,700" rel="stylesheet"><!--Required for the footer-- >

    <!-- ========== sign-in form ========== -->
    <link href="css/sign-in.css" rel="stylesheet" type="text/css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <%
        String Email = request.getParameter("mail");
    %>
    
    <!-- ========== PRELOADER ========== -->
    <div id="loading">
        <div class="inner">
            <div class="loading_effect">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>
            </div>
        </div>
    </div>
    
    <div id="smoothpage" class="wrapper">

        <!-- ========== HEADER ========== -->
        <header class="fixed">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle mobile_menu_btn" data-toggle="collapse" data-target=".mobile_menu" aria-expanded="false">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.svg" height="32" alt="Logo">
                    </a>
                </div>
                <nav id="main_menu" class="mobile_menu navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="mobile_menu_title" style="display:none;">MENU</li>
                        
                        <li>
                            <a href="Home.jsp">Home</a>
                        </li>

                        <li class="dropdown simple_menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Accommodation<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Room.jsp">Rooms</a></li>
                                <li><a href="Villas.jsp">Villas</a></li>
                                <li><a href="Suites.jsp">Suites</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="Restaurant.jsp">Dining</a>
                        </li>

                        <li>
                            <a href="Gallery.jsp">Gallery</a>
                        </li>

                        <li class="dropdown simple_menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Wellness <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Spa.jsp">Our Spa</a></li>
                                <li><a href="Sports.jsp">Sports</a></li>
                            </ul>
                        </li>

                        <li class="dropdown simple_menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Events <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="Special-Events.jsp">Special Events</a></li>
                                <li><a href="Wedding.jsp">Weddings & Celebrations</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="Packages.jsp">Packages</a>
                        </li>

                        <li>
                            <a href="display">PROFILE</a>
                        </li>

                        <li>
                            <a href="Contact.jsp">CONTACT US</a>
                        </li>  

                        <li>
                            <a href="About-us.jsp">About us</a>
                        </li>                        
                    </ul>
                </nav>
            </div>
        </header>

        <!-- ========== PAGE TITLE ========== -->
        <div class="page_title gradient_overlay" style="background: url(images/page_title_bg.jpg);">
            <div class="container">
                <div class="inner"> 
                    <h1>Forgot Password</h1>
                    <ol class="breadcrumb">
                        <li><a href="Home.jsp">Home</a></li>
                        <li><a href="Sign-In.jsp">Sign In</a></li>
                        <li>Forgot Password</li>
                    </ol>
                </div>
            </div>
        </div>


        <br><br><br><br><br><br><br><br>
        <h1 style="text-align: center; color: #2596be;">Update Password</h1>
        <br><br><br>

        <!-- ========== Sign-In ========== -->
            <div class="container-sign">
                    <div class="inner-sign">
                        <form action="resetpass" method="post">
                                <div>
                                    <input type="hidden" name="email" id="email" class="form-control" value="<%=Email%>">
                                    <label for="pass1" class="text-info">New Password:</label><br>
                                    <input type="Password" name="pass1" required id="password" class="form-control" placeholder="********"><br>
                                </div>
                                <div>
                                    <label for="pass2" class="text-info">Retype Password:</label><br>
                                    <input type="Password" name="pass2" required id="password" class="form-control" placeholder="********">
                                </div>
                                <br>
                                    <div style="float: right;">
                                    </div>
                                    <div> 
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="Submit">
                                    </div>
                        </form>
                    </div>    
            </div>
        <br><br><br>
        <h4 style="text-align: center; color: red;">Please Enter Matching Passwords!!!</h4>                          
          
       <br><br><br><br><br><br><br><br><br><br><br><br><br>

         <!-- ========== FOOTER ========== -->
        <footer>
            <div class="inner" style="background-color: #2596be; color: white;">
                <div class="container">
                    <div class="row" style="display: flex; justify-content: space-between;">
                        <div class="col-md-3 col-sm-6 widget">
                            <div class="about">
                                <a href="Home.jsp"><img class="logo" src="images/logo.svg" height="32" alt="Logo"></a>
                                <p>Hotel Zee is one of the grand luxury hotel in Sri Lanka. Our property is the best place to celebrate your special events as well as to spend your vacations with friends & family members with the most affordable price packages and special discounts when compared to the other luxurious hotels that are located in Colombo city.</p>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6 ml-5 widget">
                            <h5 style="color: #21252b">Contact Us</h5>
                            <address>
                                <ul class="address_details">
                                    <li><i class="glyphicon glyphicon-map-marker"></i> 25 Lotus Road, Colombo 1, Sri Lanka</li>
                                    <li><i class="glyphicon glyphicon-phone-alt"></i> Phone: 0113567924 </li>
                                    <li><i class="fa fa-fax"></i> Fax: 573 471 9052</li>
                                    <li><i class="fa fa-envelope"></i> Email: <a href="mailto:hotelzee422@gmail.com" style="color: white">hotelzee422@gmail.com</a></li>
                                </ul>
                            </address>
                        </div>

                        <div class="col-md-3 col-sm-6 widget">
                            <h5 style="color: #21252b">Check us Out</h5>
                            <div class="">
                            <ul class="useful_links">
                                <li><a href="Amazing-Deals.jsp" style="color: white;">Amazing Deals</a></li>
                                <li><a href="Gallery.jsp" style="color: white;">Gallery</a></li>
                                <li><a href="display" style="color: white;">Profile</a></li>
                                <li><a href="About-us.jsp" style="color: white;">About us</a></li>
                                <li><a href="Contact.jsp" style="color: white;">Contact us</a></li>
                            </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="subfooter" style="background-color: #2596be; color: white;">
                <div class="container">
                    <div style="text-align: center;">
                        Copyright 2022 <a href="Home.jsp" style="color: white;">HotelZee</a> All Rights Reserved.
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- ========== BACK TO TOP ========== -->
    <div id="back_to_top">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ========== NOTIFICATION ========== -->
    <div id="notification"></div>
    
    <!-- ========== JAVASCRIPT ========== -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="js/jquery.smoothState.js"></script>
    <script type="text/javascript" src="js/moment.min.js"></script>
    <script type="text/javascript" src="js/morphext.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.thumbs.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jPushMenu.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="js/countUp.min.js"></script>
    <script type="text/javascript" src="js/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

</body> 
</html>

