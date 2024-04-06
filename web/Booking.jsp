<%-- 
    Document   : Booking
    Created on : Feb 3, 2022, 12:49:06 PM
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
    <title>Hotel Zante - Reservation</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta content="" name="author">

    <!-- ========== FAVICON ========== -->
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png" />
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
                    <h1>Reservation</h1>
                    <ol class="breadcrumb">
                        <li><a href="Home.jsp">Home</a></li>
                        <li>Reservation</li>
                    </ol>
                </div>
            </div>
        </div>


        <main id="booking_page">
            <div class="container">
                <h1 style="text-align: center; color: #2596be;">Reservation Form</h1>
                <br><br><br>
                                <form name="book" action="booking" method="post" style="width: 50%; margin-left: auto; margin-right: auto;">
                                     <div>
                                         <label for="name" class="text-info">Name</label><label style="color: red; font-size: 20px;">*</label><br>
                                    <input type="text" name="name" class="form-control" placeholder="Your Name" required style="border: 1px solid lightblue;">
                                    </div>
                                    <br>
                                    
                                    <div>
                                    <label for="email" class="text-info">Email</label><label style="color: red; font-size: 20px;">*</label><br>
                                    <input type="email" name="email" class="form-control" placeholder="Your Email" required style="border: 1px solid lightblue;">
                                    </div>
                                    <br>
                                    
                                    <div>
                                    <label for="phone" class="text-info">Phone Number</label><label style="color: red; font-size: 20px;">*</label><br>
                                    <input type="tel" name="phone" class="form-control" placeholder="Your Phone Number" required style="border: 1px solid lightblue;">
                                    </div>
                                    <br>
                                    
                                    <div>
                                    <label for="country" class="text-info">Country</label><label style="color: red; font-size: 20px;">*</label> 
                                    <div class="form_select" style="border: 1px solid lightblue;">
                                        <select name="country" class="form-control" title="Select Your Country" data-header="Select Your Country" data-live-search="true" data-size="5" required>
                                                    <option value="Afganistan">Afghanistan</option>
                                                    <option value="Albania">Albania</option>
                                                    <option value="Algeria">Algeria</option>
                                                    <option value="American Samoa">American Samoa</option>
                                                    <option value="Andorra">Andorra</option>
                                                    <option value="Angola">Angola</option>
                                                    <option value="Anguilla">Anguilla</option>
                                                    <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                                                    <option value="Argentina">Argentina</option>
                                                    <option value="Armenia">Armenia</option>
                                                    <option value="Aruba">Aruba</option>
                                                    <option value="Australia">Australia</option>
                                                    <option value="Austria">Austria</option>
                                                    <option value="Azerbaijan">Azerbaijan</option>
                                                    <option value="Bahamas">Bahamas</option>
                                                    <option value="Bahrain">Bahrain</option>
                                                    <option value="Bangladesh">Bangladesh</option>
                                                    <option value="Barbados">Barbados</option>
                                                    <option value="Belarus">Belarus</option>
                                                    <option value="Belgium">Belgium</option>
                                                    <option value="Belize">Belize</option>
                                                    <option value="Benin">Benin</option>
                                                    <option value="Bermuda">Bermuda</option>
                                                    <option value="Bhutan">Bhutan</option>
                                                    <option value="Bolivia">Bolivia</option>
                                                    <option value="Bonaire">Bonaire</option>
                                                    <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                                                    <option value="Botswana">Botswana</option>
                                                    <option value="Brazil">Brazil</option>
                                                    <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                                                    <option value="Brunei">Brunei</option>
                                                    <option value="Bulgaria">Bulgaria</option>
                                                    <option value="Burkina Faso">Burkina Faso</option>
                                                    <option value="Burundi">Burundi</option>
                                                    <option value="Cambodia">Cambodia</option>
                                                    <option value="Cameroon">Cameroon</option>
                                                    <option value="Canada">Canada</option>
                                                    <option value="Canary Islands">Canary Islands</option>
                                                    <option value="Cape Verde">Cape Verde</option>
                                                    <option value="Cayman Islands">Cayman Islands</option>
                                                    <option value="Central African Republic">Central African Republic</option>
                                                    <option value="Chad">Chad</option>
                                                    <option value="Channel Islands">Channel Islands</option>
                                                    <option value="Chile">Chile</option>
                                                    <option value="China">China</option>
                                                    <option value="Christmas Island">Christmas Island</option>
                                                    <option value="Cocos Island">Cocos Island</option>
                                                    <option value="Colombia">Colombia</option>
                                                    <option value="Comoros">Comoros</option>
                                                    <option value="Congo">Congo</option>
                                                    <option value="Cook Islands">Cook Islands</option>
                                                    <option value="Costa Rica">Costa Rica</option>
                                                    <option value="Cote DIvoire">Cote D'Ivoire</option>
                                                    <option value="Croatia">Croatia</option>
                                                    <option value="Cuba">Cuba</option>
                                                    <option value="Curaco">Curacao</option>
                                                    <option value="Cyprus">Cyprus</option>
                                                    <option value="Czech Republic">Czech Republic</option>
                                                    <option value="Denmark">Denmark</option>
                                                    <option value="Djibouti">Djibouti</option>
                                                    <option value="Dominica">Dominica</option>
                                                    <option value="Dominican Republic">Dominican Republic</option>
                                                    <option value="East Timor">East Timor</option>
                                                    <option value="Ecuador">Ecuador</option>
                                                    <option value="Egypt">Egypt</option>
                                                    <option value="El Salvador">El Salvador</option>
                                                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                                                    <option value="Eritrea">Eritrea</option>
                                                    <option value="Estonia">Estonia</option>
                                                    <option value="Ethiopia">Ethiopia</option>
                                                    <option value="Falkland Islands">Falkland Islands</option>
                                                    <option value="Faroe Islands">Faroe Islands</option>
                                                    <option value="Fiji">Fiji</option>
                                                    <option value="Finland">Finland</option>
                                                    <option value="France">France</option>
                                                    <option value="French Guiana">French Guiana</option>
                                                    <option value="French Polynesia">French Polynesia</option>
                                                    <option value="French Southern Ter">French Southern Ter</option>
                                                    <option value="Gabon">Gabon</option>
                                                    <option value="Gambia">Gambia</option>
                                                    <option value="Georgia">Georgia</option>
                                                    <option value="Germany">Germany</option>
                                                    <option value="Ghana">Ghana</option>
                                                    <option value="Gibraltar">Gibraltar</option>
                                                    <option value="Great Britain">Great Britain</option>
                                                    <option value="Greece">Greece</option>
                                                    <option value="Greenland">Greenland</option>
                                                    <option value="Grenada">Grenada</option>
                                                    <option value="Guadeloupe">Guadeloupe</option>
                                                    <option value="Guam">Guam</option>
                                                    <option value="Guatemala">Guatemala</option>
                                                    <option value="Guinea">Guinea</option>
                                                    <option value="Guyana">Guyana</option>
                                                    <option value="Haiti">Haiti</option>
                                                    <option value="Hawaii">Hawaii</option>
                                                    <option value="Honduras">Honduras</option>
                                                    <option value="Hong Kong">Hong Kong</option>
                                                    <option value="Hungary">Hungary</option>
                                                    <option value="Iceland">Iceland</option>
                                                    <option value="India">India</option>
                                                    <option value="Indonesia">Indonesia</option>
                                                    <option value="Iran">Iran</option>
                                                    <option value="Iraq">Iraq</option>
                                                    <option value="Ireland">Ireland</option>
                                                    <option value="Isle of Man">Isle of Man</option>
                                                    <option value="Israel">Israel</option>
                                                    <option value="Italy">Italy</option>
                                                    <option value="Jamaica">Jamaica</option>
                                                    <option value="Japan">Japan</option>
                                                    <option value="Jordan">Jordan</option>
                                                    <option value="Kazakhstan">Kazakhstan</option>
                                                    <option value="Kenya">Kenya</option>
                                                    <option value="Kiribati">Kiribati</option>
                                                    <option value="Korea North">Korea North</option>
                                                    <option value="Korea Sout">Korea South</option>
                                                    <option value="Kuwait">Kuwait</option>
                                                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                                                    <option value="Laos">Laos</option>
                                                    <option value="Latvia">Latvia</option>
                                                    <option value="Lebanon">Lebanon</option>
                                                    <option value="Lesotho">Lesotho</option>
                                                    <option value="Liberia">Liberia</option>
                                                    <option value="Libya">Libya</option>
                                                    <option value="Liechtenstein">Liechtenstein</option>
                                                    <option value="Lithuania">Lithuania</option>
                                                    <option value="Luxembourg">Luxembourg</option>
                                                    <option value="Macau">Macau</option>
                                                    <option value="Macedonia">Macedonia</option>
                                                    <option value="Madagascar">Madagascar</option>
                                                    <option value="Malaysia">Malaysia</option>
                                                    <option value="Malawi">Malawi</option>
                                                    <option value="Maldives">Maldives</option>
                                                    <option value="Mali">Mali</option>
                                                    <option value="Malta">Malta</option>
                                                    <option value="Marshall Islands">Marshall Islands</option>
                                                    <option value="Martinique">Martinique</option>
                                                    <option value="Mauritania">Mauritania</option>
                                                    <option value="Mauritius">Mauritius</option>
                                                    <option value="Mayotte">Mayotte</option>
                                                    <option value="Mexico">Mexico</option>
                                                    <option value="Midway Islands">Midway Islands</option>
                                                    <option value="Moldova">Moldova</option>
                                                    <option value="Monaco">Monaco</option>
                                                    <option value="Mongolia">Mongolia</option>
                                                    <option value="Montserrat">Montserrat</option>
                                                    <option value="Morocco">Morocco</option>
                                                    <option value="Mozambique">Mozambique</option>
                                                    <option value="Myanmar">Myanmar</option>
                                                    <option value="Nambia">Nambia</option>
                                                    <option value="Nauru">Nauru</option>
                                                    <option value="Nepal">Nepal</option>
                                                    <option value="Netherland Antilles">Netherland Antilles</option>
                                                    <option value="Netherlands">Netherlands (Holland, Europe)</option>
                                                    <option value="Nevis">Nevis</option>
                                                    <option value="New Caledonia">New Caledonia</option>
                                                    <option value="New Zealand">New Zealand</option>
                                                    <option value="Nicaragua">Nicaragua</option>
                                                    <option value="Niger">Niger</option>
                                                    <option value="Nigeria">Nigeria</option>
                                                    <option value="Niue">Niue</option>
                                                    <option value="Norfolk Island">Norfolk Island</option>
                                                    <option value="Norway">Norway</option>
                                                    <option value="Oman">Oman</option>
                                                    <option value="Pakistan">Pakistan</option>
                                                    <option value="Palau Island">Palau Island</option>
                                                    <option value="Palestine">Palestine</option>
                                                    <option value="Panama">Panama</option>
                                                    <option value="Papua New Guinea">Papua New Guinea</option>
                                                    <option value="Paraguay">Paraguay</option>
                                                    <option value="Peru">Peru</option>
                                                    <option value="Phillipines">Philippines</option>
                                                    <option value="Pitcairn Island">Pitcairn Island</option>
                                                    <option value="Poland">Poland</option>
                                                    <option value="Portugal">Portugal</option>
                                                    <option value="Puerto Rico">Puerto Rico</option>
                                                    <option value="Qatar">Qatar</option>
                                                    <option value="Republic of Montenegro">Republic of Montenegro</option>
                                                    <option value="Republic of Serbia">Republic of Serbia</option>
                                                    <option value="Reunion">Reunion</option>
                                                    <option value="Romania">Romania</option>
                                                    <option value="Russia">Russia</option>
                                                    <option value="Rwanda">Rwanda</option>
                                                    <option value="St Barthelemy">St Barthelemy</option>
                                                    <option value="St Eustatius">St Eustatius</option>
                                                    <option value="St Helena">St Helena</option>
                                                    <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                                                    <option value="St Lucia">St Lucia</option>
                                                    <option value="St Maarten">St Maarten</option>
                                                    <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                                                    <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                                                    <option value="Saipan">Saipan</option>
                                                    <option value="Samoa">Samoa</option>
                                                    <option value="Samoa American">Samoa American</option>
                                                    <option value="San Marino">San Marino</option>
                                                    <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                                                    <option value="Saudi Arabia">Saudi Arabia</option>
                                                    <option value="Senegal">Senegal</option>
                                                    <option value="Serbia">Serbia</option>
                                                    <option value="Seychelles">Seychelles</option>
                                                    <option value="Sierra Leone">Sierra Leone</option>
                                                    <option value="Singapore">Singapore</option>
                                                    <option value="Slovakia">Slovakia</option>
                                                    <option value="Slovenia">Slovenia</option>
                                                    <option value="Solomon Islands">Solomon Islands</option>
                                                    <option value="Somalia">Somalia</option>
                                                    <option value="South Africa">South Africa</option>
                                                    <option value="Spain">Spain</option>
                                                    <option value="Sri Lanka">Sri Lanka</option>
                                                    <option value="Sudan">Sudan</option>
                                                    <option value="Suriname">Suriname</option>
                                                    <option value="Swaziland">Swaziland</option>
                                                    <option value="Sweden">Sweden</option>
                                                    <option value="Switzerland">Switzerland</option>
                                                    <option value="Syria">Syria</option>
                                                    <option value="Tahiti">Tahiti</option>
                                                    <option value="Taiwan">Taiwan</option>
                                                    <option value="Tajikistan">Tajikistan</option>
                                                    <option value="Tanzania">Tanzania</option>
                                                    <option value="Thailand">Thailand</option>
                                                    <option value="Togo">Togo</option>
                                                    <option value="Tokelau">Tokelau</option>
                                                    <option value="Tonga">Tonga</option>
                                                    <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                                                    <option value="Tunisia">Tunisia</option>
                                                    <option value="Turkey">Turkey</option>
                                                    <option value="Turkmenistan">Turkmenistan</option>
                                                    <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                                                    <option value="Tuvalu">Tuvalu</option>
                                                    <option value="Uganda">Uganda</option>
                                                    <option value="Ukraine">Ukraine</option>
                                                    <option value="United Arab Erimates">United Arab Emirates</option>
                                                    <option value="United Kingdom">United Kingdom</option>
                                                    <option value="United States of America">United States of America</option>
                                                    <option value="Uraguay">Uruguay</option>
                                                    <option value="Uzbekistan">Uzbekistan</option>
                                                    <option value="Vanuatu">Vanuatu</option>
                                                    <option value="Vatican City State">Vatican City State</option>
                                                    <option value="Venezuela">Venezuela</option>
                                                    <option value="Vietnam">Vietnam</option>
                                                    <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                                                    <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                                                    <option value="Wake Island">Wake Island</option>
                                                    <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                                                    <option value="Yemen">Yemen</option>
                                                    <option value="Zaire">Zaire</option>
                                                    <option value="Zambia">Zambia</option>
                                                    <option value="Zimbabwe">Zimbabwe</option>   
                                        </select>
                                    </div>
                                    </div>
                                    <br>
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="arrival" class="text-info">Arrival
                                                <a href="#" title="Arrival" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Check In from 11:00 am"> <i class="label_icon_info fa fa-info-circle"></i></a>
                                            </label><label style="color: red; font-size: 20px;">*</label> 
                                            <div class="form_date">
                                                <input type="date" name="arrival" required style="border: 1px solid lightblue; width: 100%; padding:10px;" required>
                                                <br><br>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="departure" class="text-info">Departure
                                                <a href="#" title="Departure" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Check Out from 12:00 am"> <i class="label_icon_info fa fa-info-circle"></i></a>
                                            </label><label style="color: red; font-size: 20px;">*</label> 
                                            <div class="form_date">
                                                <input type="date" name="departure" required style="border: 1px solid lightblue; width: 100%; padding:10px;" required>
                                                <br><br>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="adult" class="text-info">Adults
                                                <a href="#" title="Adults" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="+18 years"> <i class="label_icon_info fa fa-info-circle"></i></a>
                                            </label><label style="color: red; font-size: 20px;">*</label> 
                                            <div class="form_select" style="border: 1px solid lightblue;">
                                                <select name="adult" class="form-control" title="Adults" data-header="Adults" required>
                                                    <option value="0">0</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="children" class="text-info">Children
                                                <a href="#" title="Children" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="0-18 years"> <i class="label_icon_info fa fa-info-circle"></i></a>
                                            </label><label style="color: red; font-size: 20px;">*</label> 
                                            <div class="form_select" style="border: 1px solid lightblue;">
                                                <select name="children" class="form-control" title="Children" data-header="Children" required>
                                                    <option value="0">0</option>
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    
                                    
                                    <div>
                                    <label for="room" class="text-info">Room Type</label><label style="color: red; font-size: 20px;">*</label> 
                                            <div class="form_select" style="border: 1px solid lightblue;">
                                                <select name="room" class="form-control" title="Select Room Type" data-header="Select Room Type" required>
                                                    <option value="Room - Deluxe Room" data-subtext="<span class='label label-info'>20,000 LKR / night</span>">Room - Deluxe Room</option>
                                                    <option value="Room - Premier Room" data-subtext="<span class='label label-info'>25,000 LKR / night</span>">Room - Premier Room</option>
                                                    <option value="Room - Studio Room" data-subtext="<span class='label label-info'>32,000 LKR / night</span>">Room - Studio Room</option>
                                                    <option value="Suite - Premium Suite" data-subtext="<span class='label label-info'>40,000 LKR / night</span>">Suite - Premium Suite </option>
                                                    <option value="Suite - Executive Suite" data-subtext="<span class='label label-info'>45,000LKR / night</span>">Suite - Executive Suite</option>
                                                    <option value="Suite - Presidential Suite" data-subtext="<span class='label label-info'>60,000 LKR / night</span>">Suite - Presidential Suite</option>
                                                    <option value="Beach Villa" data-subtext="<span class='label label-info'>70,000 LKR / night</span>">Beach Villa</option>
                                                    <option value="Bungalow" data-subtext="<span class='label label-info'>80,000 LKR / night</span>">Bungalow</option>
                                                    <option value="Sky House" data-subtext="<span class='label label-info'>90,000 LKR / night</span>">Sky House</option>
                                                </select>
                                            </div>
                                    </div>
                                    <br>
                                    
                                    <div>
                                    <label for="comment" class="text-info">Your Comments</label>
                                            <textarea class="form-control" name="comment" placeholder="Your Comments..." style="border: 1px solid lightblue;"></textarea>
                                    </div>
                                    <br>
                                    
                                    <div> 
                                    <input type="submit" name="reserve" class="btn btn-info btn-md" value="Reserve">
                                    </div>
                                </form>
            </div>
        </main>
        
        <br>

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