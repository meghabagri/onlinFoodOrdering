<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Delicious</title>
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Satisfy|Bree+Serif|Candal|PT+Sans">

<style type="text/css">
  <%@include file="css/font-awesome.min.css" %>
  <%@include file="css/bootstrap.min.css" %>
  <%@include file="css/style.css" %>
  <%@include file="css/imagehover.min.css" %>

</style>
  </head>
  <body>
    <!--banner-->
    
    <section id="banner">
      <div class="bg-color">
        <header id="header">
            <div class="container">
                <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                  <a href="#about">About</a>
                  <a href="#event">Event</a>
                  <a href="#menu-list">Menu</a>  
                  <a href="#contact">Book a table</a>
				  
                </div>
             
                <!-- Use any element to open the sidenav -->
                <span onclick="openNav()" class="pull-right menu-icon"><i class="fa fa-bars"></i></span>
			
            </div>
        </header>
        <%
        
        %>
        <div class="container">
        <span style="color:white; font-size:18px;"><%  
        HttpSession s=request.getSession();
        if(s.getAttribute("username").equals(null)){        	
        }
        else{
        	String str=(String)s.getAttribute("username");
        	out.print(str); 
        }%></span>
        <div class="row">
          <div class="inner text-center">
            <h1 class="logo-name">Delicious</h1>
            <h2>Food To fit your lifestyle & health.</h2>
            <p>Specialized in Indian Cuisine!!</p>
 <a href="onlineOrder.jsp"><button style="border-radius:20px;" type="button" class="btn btn-lg btn-warning"><b>Order Online</b></button></a>
 <a href="login.jsp"><button style="border-radius:20px;" type="button" class="btn btn-lg btn-warning"><b>Login</b></button></a>
            
          </div>
        </div>
        </div>
      </div>
    </section>
    <!-- / banner -->
    <!--about-->
    <section id="about" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center marb-35">
                    <h1 class="header-h">Delicious Journey</h1>
                    <p class="header-p">Journey started by my father.</p>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="col-md-6 col-sm-6">
                        <div class="about-info">
                            <h2 class="heading">History</h2>
                            <p>It was in the early 1960s, when Sh. A.P. Sen started the journey towards a brighter future. The then small sweet shop has now flourished into a family owned enterprise which consist of: 8 outlets. These outlets serve Sweets, and cuisines spanning Indian, Continental, Chinese, South Indian & Regional foods. Delicious follows the casual dining concept and provides a warm and hospitable ambience in the outlets. Today, Delicious is a food business group with special ventures focused on:
                            </p>
                            <div class="details-list">
                                <ul>
                                    <li><i class="fa fa-check"></i>Sweets</li>
                                    <li><i class="fa fa-check"></i>Multicuisine</li>
                                    <li><i class="fa fa-check"></i>Bakery </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <img src="img/res01.jpg" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </section>
    <!--/about-->
    <!-- event -->
    <section id="event">
        <div class="bg-color" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 text-center" style="padding:60px;">
                      <h1 class="header-h">Book Us</h1>
                    </div>
                    <div class="col-md-12" style="padding-bottom:60px;">
                        <div class="item active left">
                          <div class="col-md-6 col-sm-6 left-images">
                          <img src="img/res02.jpg" class="img-responsive" />

                         </div>
                         <div class="col-md-6 col-sm-6 details-text">
                          <div class="content-holder">
                            <h2>kitty parties</h2>
<p>Throw your kitty party with a comfortable space and unforgettable food. Our regional super star dishes or stylish Indian recipes help you dazzle your friends. Have fun planning your kitty party and enjoy it!</p>
                            <address>
                              <strong>Place: </strong>
                              1612 Collins Str, Delhi 8007
                              <br>
                              <strong>Time: </strong>
                              07:30pm
                            </address>
                          </div>
                        </div>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ event -->
    <!-- menu -->
    <section id="menu-list" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center marb-35">
                    <h1 class="header-h">Menu List</h1>
                <div class="col-md-12  text-center gallery-trigger">
                    <ul>
                        <li><a class="filter" data-filter="all">Show All</a></li>
                        <li><a class="filter" data-filter=".category-1">Breakfast</a></li>
                        <li><a class="filter" data-filter=".category-2">Lunch</a></li>
                        <li><a class="filter" data-filter=".category-3">Dinner</a></li>
                    </ul>
                </div>
                
                <div id="Container">
                    <div class="mix category-1 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Daal Makhani</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">120.00</span>
                      </span>
                    </div>
                    <div class="mix category-1 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Paneer Tika</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">150.00</span>
                      </span>
                    </div>
                    <div class="mix category-1 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Lutf-e-Tandoor</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">160.00</span>
                      </span>
                    </div>
                    <div class="mix category-1 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Pao Bhaji</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">220.00</span>
                      </span>
                    </div>
                    <div class="mix category-2 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Mutter Kulcha</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">320.00</span>
                      </span>
                    </div>
                    <div class="mix category-2 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Amritsari puri sabzi with halwa</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">220.00</span>
                      </span>
                    </div>
                    <div class="mix category-2 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Uttapam</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">140.00</span>
                      </span>
                    </div>
                    <div class="mix category-2 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Masala Dosa</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">180.00</span>
                      </span>
                    </div>
                    <div class="mix category-3 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Malai kofta</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">280.00</span>
                      </span>
                    </div>
                    <div class="mix category-3 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Idli Sambhar</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">120.00</span>
                      </span>
                    </div>
                    <div class="mix category-3 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Dil bahar thali</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">120.00</span>
                      </span>
                    </div>
                    <div class="mix category-3 menu-restaurant" data-myorder="2">
                        <span class="clearfix">
                        <a class="menu-title" href="#" data-meal-img="assets/img/restaurant/rib.jpg">Paneer Tikka Lababdar</a>
                        <span style="left: 166px; right: 44px;" class="menu-line"></span>
                        <span class="menu-price">80.00</span>
                      </span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ menu -->
    <!-- contact -->
    <section id="contact" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h1 class="header-h">Book Your table</h1>
                    <p class="header-p">Online table reservations are done 6hrs in advance for the current date. Table reservation can be done up to one month in advance. </p>
                </div>
            </div>
            <div class="row msg-row">
                <div class="col-md-4 col-sm-4 mr-15">
                    <div class="media-2">
                        <div class="media-left">
                            <div class="contact-phone bg-1 text-center"><span class="phone-in-talk fa fa-phone"></span></div>
                        </div>
                        <div class="media-body">
                            <h4 class="dark-blue regular">Phone Numbers</h4>
                            <p class="light-blue regular alt-p">+0124 875369 - <span class="contacts-sp">Phone Booking</span></p>
                        </div>
                    </div>
                    <div class="media-2">
                        <div class="media-left">
                            <div class="contact-email bg-14 text-center"><span class="hour-icon fa fa-clock-o"></span></div>
                        </div>
                        <div class="media-body">
                            <h4 class="dark-blue regular">Opening Hours</h4>
                            <p class="light-blue regular alt-p"> Monday to Friday 09.00 - 24:00</p>
                            <p class="light-blue regular alt-p">
                                 Friday and Sunday 08:00 - 03.00
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 col-sm-8">
                    <form action="Reserve" method="post" role="form" class="contactForm">
                    <div id="sendmessage">Your booking request has been sent. Thank you!</div>
                    <div id="errormessage"></div>
                    <div class="col-md-12 col-sm-6 contact-form pad-form">
                        <div class="form-group label-floating is-empty">
                           <select class="form-control label-floating is-empty" id="focusedInput" name="region" placeholder="Region" data-rule="required"><br> 
                          <option value="">Please Select your Region</option><br>
                           <option value="Delhi NCR">Delhi NCR.</option><br>
                           <option value="Punjab">Punjab</option>
                           <option value="Bihar">Bihar</option>
                           <option value="Jaipur">Jaipur</option>
                           </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form pad-form">
                        <div class="form-group label-floating is-empty">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                        </div>
                        
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form">
                        <div class="form-group">
                            <input type="date" class="form-control label-floating is-empty" name="date" id="date" placeholder="Date" data-rule="required" data-msg="This field is required" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form pad-form">
                        <div class="form-group">
                            <input type="email" class="form-control label-floating is-empty" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form">
                        <div class="form-group">
                            <input type="time" class="form-control label-floating is-empty" name="time" id="time" placeholder="Time" data-rule="required" data-msg="This field is required" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 contact-form">
                        <div class="form-group">
                            <input type="phone" class="form-control label-floating is-empty" name="phone" id="phone" placeholder="Phone" data-rule="required" data-msg="This field is required" />
                            <div class="validation"></div>
                        </div>
                    </div>
              
                    <div class="col-md-6 col-sm-6 contact-form">
                        <div class="form-group">
                            <input type="number" class="form-control label-floating is-empty" name="people" id="people" placeholder="People" data-rule="required" data-msg="This field is required" />
                            <div class="validation"></div>
                        </div>
                    </div>
                    
                        
                    </div>
                    <div class="col-md-12 btnpad">
                        <div class="contacts-btn-pad">
                            <center><button class="contacts-btn">Book Table</button></center>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- / contact -->
    <!-- footer -->
    <footer class="footer text-center">
        <div class="footer-top">
            <div class="row">
                <div class="col-md-offset-3 col-md-6 text-center">
                    <div class="widget">
                        <h4 class="widget-title">Delicious</h4>
                        <address>324 Ellte Road<br>Delhi, DL 110013</address>
                        <div class="social-list">
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        </div>
                        <p class="copyright clear-float">
                            <div class="credits">
            
                            </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- / footer -->
    
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.mixitup.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>