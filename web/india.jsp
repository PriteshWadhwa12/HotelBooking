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
        <title>India Rooms</title>
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
          <li><a href="Welcome.jsp#myPage">Home</a></li>
          <li><a href="india.jsp">India Rooms</a></li>
          <li><a href="Welcome.jsp#about">ABOUT</a></li>
          <li><a href="Welcome.jsp#service">Services</a></li>
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
                    <img src="images/in8.jpg" style="height: 580px;width: 100%">                  
                </div>
                <div class="item">
                    <img src="images/in10.jpg" style="height: 580px;width: 100%">
                </div>
                  <div class="item">
                      <img src="images/in11.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                         <img src="images/in1.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                    <img src="images/in12.jpg" style="height: 580px;width: 100%">
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
        
        
                    <div class="row" style="background-color: black">
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/in4.jpg">
                  <img src='images/in4.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 9,999/-</i><b> Mumbai</b><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="Taj_Hotel">
                    <input type="hidden" name="Price" value="9999">
                     <input type='hidden' name='image' value='images/in4.jpg'>
                     <input type='hidden' name='place' value='Mumbai'>
                     <input type="hidden" name="Id" value="i1">
                 
               </div>
               
           </div>
             </form>    
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/in2.jpg">
                   
                  <img src='images/in2.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 19,999/-</i><b>Delhi</b><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="DreamLand_Hotel">
                    <input type="hidden" name="Price" value="19999">
                    <input type='hidden' name='image' value='images/in2.jpg'>
                    <input type='hidden' name='place' value='Delhi'>
                    <input type="hidden" name="Id" value="i2">
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/in3.jpg">
                  <img src='images/in3.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 15,000/-</i><b>Jaipur</b><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="Hilton_Jaipur">
                    <input type="hidden" name="Price" value="15000">
                    <input type='hidden' name='place' value='Jaipur'>
                    <input type='hidden' name='image' value='images/in3.jpg'>
                    <input type="hidden" name="Id" value="i3">
               </div>
               
           </div>
             </form>
       </div>
        
         

         
                    <div class="row" style="background-color: black">
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href='images/in13.jpg'>
                  <img src='images/in13.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 19,000/-</i><b>Kashmir</b><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="Golden_Residency">
                    <input type="hidden" name="Price" value="19000">
                    <input type='hidden' name='image' value='images/in13.jpg'>
                    <input type='hidden' name='place' value='Kashmir'>
                    <input type="hidden" name="Id" value="i4">
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href='images/in14.jpg'>
                  <img src='images/in14.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 15,000/-</i><b>Chennai</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="LemonTree_Hotel">
                    <input type="hidden" name="Price" value="15000">
                    <input type='hidden' name='place' value='Chennai'>
                    <input type='hidden' name='image' value='images/in14.jpg'>
                    <input type="hidden" name="Id" value="i5">
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href='images/in15.jpg'>
                    
                    <img src='images/in15.jpg'>
                   <div class='caption'>
                       <h3><i class="fas fa-rupee-sign"> 15,000/-</i><b>Bengalore</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                   </div>
                   </a>
                    <input type="hidden" name="name" value="ThePride_Hotel">
                    <input type="hidden" name="Price" value="15000">
                    <input type='hidden' name='place' value='Bengalore'>
                    <input type='hidden' name='image' value='images/in15.jpg'>                       </div>
                   <input type="hidden" name="Id" value="i6">
           </div>
                 </form>
           </div>
             
        <footer class="container-fluid text-center">
         <a href="#myPage" title="TOP">
         <span class="glyphicon glyphicon-chevron-up"></span>
         </a>
             <h2>Thank You So Much For Visting </h2>
             <h2><a href="Terms.html">Terms and conditions</a></h2>
                <h4>© Copyright 2017 Hotel Group</h4>
        </footer>
     </body>
</html>