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
        <link href='css/datepicker.css' rel="stylesheet">
        <script src=js/bootstrap-datepicker.js'></script>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <title>Abroad Rooms</title>
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
          <li><a href="abroad.jsp">Abroad Rooms</a></li>
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
      
         <div class="row">
              <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_1.jpg">
                       <img src="images/img_1.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 10000</i><b> Dubai</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                       </div>
                   </a>
                    <input type="hidden" name="name" value="Taj_Dubai">
                    <input type="hidden" name="place" value="Dubai">
                    <input type="hidden" name="Price" value="10000">
                    <input type='hidden' name='image' value='images/img_1.jpg'>
                    <input type='hidden' name='Id' value='a1'>
                 </div>
               
           </div>
             </form>    
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_2.jpg">
                       <img src="images/img_2.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 12000</i><b> New-York</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                       </div>
                   </a>
                   <input type="hidden" name="name" value="Paramount_Hotel">
                   <input type="hidden" name="place" value="New_York">
                   <input type="hidden" name="Price" value="12000">
                   <input type='hidden' name='image' value='images/img_2.jpg'>
                   <input type='hidden' name='Id' value='a2'>
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_3.jpg">
                       <img src="images/img_3.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 15000</i><b> Paris</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                       </div>
                   </a>
                   <input type="hidden" name="name" value="Castille_Paris">
                   <input type="hidden" name="place" value="Paris">
                   <input type="hidden" name="Price" value="15000">
                   <input type='hidden' name='image' value='images/img_3.jpg'>
                   <input type='hidden' name='Id' value='a3'>
               </div>
               
           </div>
             </form>
       </div>
        
         

         
         <div class="row">
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_4.jpg">
                       <img src="images/img_4.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 18000</i><b> Bangkok</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                       </div>
                   </a>
                   <input type="hidden" name="name" value="Dream_Hotel">
                   <input type="hidden" name="place" value="Bangkok">
                   <input type="hidden" name="Price" value="18000">
                   <input type='hidden' name='image' value='images/img_4.jpg'>
                   <input type='hidden' name='Id' value='a4'>
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_5.jpg">
                       <img src="images/img_5.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 20000</i><b> Phuket</b><button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>
                       </div>
                       <input type="hidden" name="name" value="Royal_Phuket_City_Hotel">
                       <input type="hidden" name="place" value="Phuket">
                       <input type="hidden" name="Price" value="20000">
                       <input type='hidden' name='image' value='images/img_2.jpg'>
                       <input type='hidden' name='Id' value='a5'>
                   </a>
               </div>
               
           </div>
             </form>
             <form action="NewBooking.jsp" method="post">
           <div class="col-md-4">
               <div class="thumbnail">
                   <a href="images/img_6.jpg">
                       <img src="images/img_6.jpg" alt="Rooms" style="width: 100%">
                       <div class="caption">
                           <h3><i class="fas fa-rupee-sign"> 22000</i><b> London</b>
                               <button type="submit" class="btn btn-primary pull-right">Book Now</button></h3>  
                       </div>
                   </a>
                   <input type="hidden" name="name" value="The_Bailey's_Hotel">
                   <input type="hidden" name="place" value="London">
                   <input type="hidden" name="Price" value="22000">
                   <input type='hidden' name='image' value='images/img_2.jpg'>
                   <input type='hidden' name='Id' value='a6'>
           </div>
           </div>
             </form>
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
