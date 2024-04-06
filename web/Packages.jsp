<%-- 
    Document   : Packages
    Created on : Feb 4, 2022, 3:28:51 PM
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
    <title>Hotel Zee - Packages</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta content="" name="author">

    <!-- ========== FAVICON ========== -->
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png" >
    <link rel="icon" href="images/favicon.png">

    <!-- ========== STYLESHEETS ========== -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="revolution/css/layers.css" rel="stylesheet" type="text/css" >
    <link href="revolution/css/settings.css" rel="stylesheet" type="text/css" >
    <link href="revolution/css/navigation.css" rel="stylesheet" type="text/css" >
    <link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
    <link href="css/animate.min.css" rel="stylesheet" type="text/css">
    <link href="css/famfamfam-flags.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="css/owl.carousel.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">

    <!-- ========== ICON FONTS ========== -->
    <link href="fonts/font-awesome.min.css" rel="stylesheet">
    <link href="fonts/flaticon.css" rel="stylesheet">

    <!-- ========== GOOGLE FONTS ========== -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900%7cRaleway:400,500,600,700" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
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

                        <li class="active">
                            <a href="#">Packages</a>
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
                    <h1>Packages</h1>
                    <ol class="breadcrumb">
                        <li><a href="Home.jsp">Home</a></li>
                        <li>Packages</li>
                    </ol>
                </div>
            </div>
        </div>
        
        <br><br><br>
        <!-- ========== REVOLUTION SLIDER ========== -->
        <div id="hero_restaurant" class="rev_slider gradient_slider" data-version="5.0.7">
            <ul>
                <!-- SLIDE  -->
                <li data-transition="fade">
                    <!-- MAIN IMAGE -->
                    <img src="images/Packages/restaurant_hero.jpg" 
                         alt="Image" 
                         data-bgposition="center center" 
                         data-bgfit="cover" 
                         data-bgrepeat="no-repeat" 
                         data-bgparallax="5" 
                         class="rev-slidebg" 
                         data-no-retina>
                    <!-- LAYER NR. 1 -->
                    <div class="tp-caption" 
                         data-x="['center','center','center','center']" 
                         data-hoffset="" 
                         data-y="['250','250','350','350']" 
                         data-voffset=""
                         data-responsive_offset="on" 
                         data-fontsize="['40','32','28','22']" 
                         data-lineheight="['40','32','28','22']"
                         data-whitespace="nowrap" 
                         data-frames='[{"delay":0,"speed":1500,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"Power3.easeInOut"}]'
                         style="color: #fff; font-weight: 700; font-family: 'Raleway', sans-serif;">HOTEL ZEE PACKAGES
                    </div>
                </li>
            </ul>
        </div>

        <!-- ========== MAIN ========== -->
        <main id="restaurant_page">
           <div class="container">
              <div class="row">
                 <div class="col-md-7">
                    <div class="main_title">
                        <h2> OUR PACKAGES</h2>
                    </div>
                    <p>Our Hotel Zee packages consists of various activities for everyone from Honeymoon packages to pool parties, Amazing Deals and many more fun activities and discounts for customer's.
                    <ul>
                      <li>Wedding Packages includes High End Cuisine with variety of food items, Professional photographers and an aftermovie covering the whole wedding.</li>
                      <li>Pool Party Packages includes Pool bar, Champagne, Dj's, Professional Photographers and an aftermovie covering the whole wedding.</li>
                      <li>High Tea Packages Pastry Buffet Cuisine with Tea, Coffee and many more Beverages to choose from...</li>
                      <li>Individual Packages includes Half Board, Full Board packages for Deals & Promotions please Visit the amazing.</li>
                       </ul>
                    </p>
                 </div>
                 <div class="col-md-5">
                    <div class="row">
                       <div class="col-md-6 col-sm-6 restaurant_img md_pr5">
                         <img src="images/Packages/2.jpg" class="img-responsive full_width" alt="Image">
                   </div>
                       <div class="col-md-6 col-sm-6 restaurant_img md_pl5">
                          <img src="images/restaurant/restaurant2.jpg" class="img-responsive full_width" alt="Image">
                       </div>
                       <div class="col-md-6 col-sm-6 restaurant_img md_pr5">
                          <img src="images/Packages/3.jpg" class="img-responsive full_width" alt="Image">
                       </div>
                       <div class="col-md-6 col-sm-6 restaurant_img md_pl5">
                          <img src="images/Packages/4.jpg" class="img-responsive full_width" alt="Image">
                       </div>
                    </div>
                 </div>
              </div>
              
             
            
           </div>
        </main>

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

    <!-- ========== JAVASCRIPT ========== -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js"></script>
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
    <script type="text/javascript" src="js/jquery.smoothState.js"></script>
    <script type="text/javascript" src="js/main.js"></script>

    <!-- ========== REVOLUTION SLIDER ========== -->
    <script type="text/javascript" src="revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="revolution/js/extensions/revolution.extension.video.min.js"></script>

</body>
</html>
