<%-- 
    Document   : Welcome.jsp
    Created on : 22 Feb, 2019, 9:22:50 PM
    Author     : Pritesh Wadhwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel='stylesheet' href='style.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <title>Welcome Page</title>
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        
        <nav class='navbar navbar-inverse navbar-fixed-top'>
            <div class='container'>
                <div class='navbar-header'>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span> 
                    </button>
                    <a class='navbar-brand' href='#'>Wadhwa's</a>
                   
            </div>
                                
      <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="#myPage">Home</a>
          <li>
              <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Rooms
              <span class="caret"></span></a>
              <ul class="dropdown-menu">
          <li><a href="abroad.jsp">Abroad Rooms</a></li>
          <li><a href="india.jsp">India Rooms</a></li>
          </ul>
      </li>
      </li>
          <li><a href="#about">About</a></li>
          <li><a href="Foods.jsp">Foods</a></li>
          <li><a href="#service">Services</a></li>
          <li><a href="Contact.html">Contact</a></li>
          <li><a href="LogOut">LogOut</a></li>
                <li style="color: white; font-size: 22px;padding-top: 10px">
                        <%
                       if(session !=null)
                       {
                           if(session.getAttribute("username")!=null)
                           {
                               String name=(String) session.getAttribute("username");
                               out.print(name);
                               
                           }
                           else
                           {
                               response.sendRedirect("Login.jsp");
                           }
                       }
                   %>
                    </li>
      </ul>
            </div>
            </div>
        </nav>
        
        
        
        
        
        
        
        <div class='jumbotron text-center'>
        <h1>Wadhwa's Hotel Booking</h1>
        <h2>We be the best every time</h2>
        <form class="form-inline" action="EmailServlet" method="post">
        <div class="input-group">
        <input type="text" class="form-control" name="EmailPritesh" size="50" placeholder="Email Address" required>
        <div class="input-group-btn">
        <button type="submit" class="btn btn-danger">Subscribe</button>
        </div>
    </div>
  </form>
  </div>
        
        
        
        <div id='about' class='container-fluid text-center'>
            <div class='row'>
                <div class='col-sm-8'>
            <h2>About Wadhwa's Hotel Booking</h2>
            <br>
            <h4><b>Wadhwa's Hotel Booking is a leading online accommodation site.We’re passionate about travel.Every day we inspire and reach millions of travelers across 90 local websites in 41 languages.</b></h4>
            <p><b> So when it comes to booking the perfect hotel, vacation rental, resort, apartment, guest house or treehouse  – we’ve got you covered. With hundreds of thousands of properties in over 200 countries and territories, we provide incomparable choice with a Price Guarantee. Our site is fun and simple to use and we offer innovative online tools.</b></p>
        </div>
                <div class="col-sm-4">
                    <span><i class="fas fa-check-circle logo"></i></span>
    </div>
        </div>
        </div>
        <div class="container-fluid">
            <div class="carousel slides" data-ride="carousel" id="myCarousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>                                   
                 </ol>
                 <div class="carousel-inner">
                <div class="item active">
                    <img src="images/dubai5.jpg" style="height: 580px;width: 100%">                  
                </div>
                <div class="item">
                    <img src="images/dubai2.jpg" style="height: 580px;width: 100%">
                </div>
                  <div class="item">
                    <img src="images/dubai.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                    <img src="images/dubai3.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                    <img src="images/dubai4.jpg" style="height: 580px;width: 100%">
                </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
        </div>
        </div>
        
               <div id='service'class="container-fluid text-center">
            <h1>Facilities & Services</h1>
            <h2>What We Offer</h2>
            <br>
            <div class='row'>
                <div class='col-sm-4'>
                    <span class="glyphicon glyphicon-phone-alt logo1"></span>
                    <h2><a href="Contact.html">Call Us 24/7</a></h2>
                     <h4>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</h4>
               </div>
                <div class="col-sm-4">
                    <span class='glyphicon glyphicon-heart  logo3'></span>
                    <h2>Loved</h2>
                    <h4>Loved And Trusted Website by as many 0.5 Million Peoples</h4>
                </div>
                <div class='col-sm-4'>
                    <span class='glyphicon glyphicon-certificate logo1'></span>
                        <h2>CERTIFIED</h2>
                        <h4>The Website is Certified by NIIT & Google</h4>
               </div>
            </div>
            
            <div class="row">
            <div class="col-sm-4">
                <i class='fas fa-bread-slice logo1'></i>
                <h2>Restaurant</h2>
                <h4>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</h4>
            </div>
           
            
            <div class='col-sm-4'>
                <i class='far fa-credit-card logo1'></i>
                <h2> Accepts Every Kind of Cards</h2>
                <h4>The Website Accepts Every Kind of Cards And Online Payments For Booking The Hotels</h4>
            </div>
                <div class='col-sm-4'>
                    <i class='fas fa-wifi logo1'></i>
                    <h2>Fast & Free Wifi</h2>
                    <h4>We Assure That There is Free Internet Connection In Every Hotel Booked By Our Website</h4>
                </div>
            
         </div>
        </div>
        
        <div id="rooms" class="container-fluid" style="background-color: black;color:white ">
            <div class="text-center">
                <h1>Rooms & Suites</h1>
                <h2>Rooms Available Accross The World</h2>
            </div>
            <br>
            <div class="row">
            <div class="col-xs-6">
            <div class="panel panel-default text-center">
            <div class="panel-heading" style="background-image: url(images/bang15.jpg)">
                <img src="images/bang15.jpg" alt="Img1">
             </div>
                <div class="panel-body" style="color: black">
                    <h2><strong>Hotels In  </strong><b>Aboard</b></h2>
                    <h3><strong><b>Starting Rates at Rs:-20,000/-</b></strong></h3>
                    
                    <h1><b><a href="abroad.jsp">More Info</a></b></h1>
                </div>
            </div>
            </div>
                
                
                <div class="col-xs-6">
                  <div class="panel panel-default text-center">
            <div class="panel-heading" style="background-image: url(images/Radisson-Hotel-Delhi.jpg)">
                <img src="images/Radisson-Hotel-Delhi.jpg" alt="Img1">
             </div>
                <div class="panel-body" style="color: black">
                    <h2><strong>Hotels In  </strong><b>India</b></h2>
                    <h3><strong><b>Starting Rates at Rs:-10,000/-</b></strong></h3>             
                    
                    
                    <h1><b><a href="india.jsp">More Info</a></b></h1>
                </div>
            </div>  
                </div>
            </div>
            </div>
         <div  class='container-fluid text-center' style='background-color: #f6f6f6'>
            <div class="row">
             <div class="col-sm-4">
                 <span><i class="fa fa-globe-asia logo2"></i></span>
             </div>
             <div class="col-sm-8">
            <h2>GOALS AND VISION</h2>
            <br>
            <h4><b><strong>GOALS::</strong></b>The Goal of our hotel Website is to provide outstanding lodging facilities and services to our users. Our hotel website focuses on individual business and leisure travel, as well as travel associated with groups meetings .we emphasise high quality standards in our rooms and food and beverage divisions.</h4>
            <p><b><strong>VISION::</strong></b>
            The ideology of our vision is to continue to apply and set the highest standards of service quality and in that way justify and uphold the reputation that we have among the guests, partners, competitors and the wider community. We use and constantly introduce environmentally friendly technologies and processes in order to remain in balance with nature and also meet the needs of contemporary society.Tradition is a testament to our success but in the future we also want to embrace the changes that modern time brings and become more attractive in the market and more interesting to our guests and partners.    
            </p>
             </div>
            </div>
        </div>
        
         <footer class="container-fluid text-center">
            <a href="#myPage" title="TOP">
                <span class="glyphicon glyphicon-chevron-up"></span>
            </a>
            <h2>Thank You So Much For Visting </h2>
            <h2><a href="Terms.html">Terms and conditions</a>
                <h4>© Copyright 2017 Hotel Group</h4>
        </footer>
        
    </body>
</html>
