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
        <title>Foods Page</title>
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
                
                <ul class="nav navbar-nav" style="background-color: black ">
                    <li class="nav-item" style="font-size: 25px;font-weight: bold"><a class="nav-link text-dark" href="#snacks">Snacks</a></li>
                    <li class="nav-item" style="font-size: 25px;font-weight: bold"><a class="nav-link text-dark" href="#soup">Soup</a></li>
                    <li class="nav-item" style="font-size: 25px;font-weight: bold"><a class="nav-link text-dark" href="#meals">Meals</a></li>
<!--                    <li class="nav-item" style="font-size: 25px;font-weight: bold"><a class="nav-link text-dark" href="#drinks">Drinks</a></li>-->
                    
                </ul>
      <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="Welcome.jsp#myPage">Home</a>
          
              <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Rooms
              <span class="caret"></span></a>
              <ul class="dropdown-menu">
          <li><a href="abroad.jsp">Abroad Rooms</a></li>
          <li><a href="india.jsp">India Rooms</a></li>
          
          </ul>
      </li>
          
          <li><a href="Welcome.jsp#about">ABOUT</a></li>
          <li><a href="Foods.jsp">Foods</a></li>
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
        <div class="container">
                <img src="images/chicken2.jpg" style="width: 1160px; height: 550px">
                
            </div>
        
        <div id='snacks' class="contaier-fluid btn-warning">
            <h1 class="text-center text-white">---Snacks---</h1>
        </div> 
        <div class="container-fluid" style='background-color: black'>
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="1">
                   <img src='images/snack5.jpg'>
                   <div class='caption'>
<!--                       <h3><i class="fas fa-rupee-sign"> 100/-</i>Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>-->
                       <h3><center><i class="fas fa-rupee-sign"> 400/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                    <input type="hidden" name="name" value="Vegpuff">
                    <input type="hidden" name="Price" value="100">
                    
                    <input type='hidden' name='image' value='image/snack5.jpg'>
                 
                 </div>
                 </div>
                </form>
               <form action='BuyNow' method="get">        
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="2">
                    <img src="images/snack2.jpg" >
                    <div class='caption'>
<!--                       <h3><i class="fas fa-rupee-sign"> 300/-</i>Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>-->
                       <h3><center><i class="fas fa-rupee-sign"> 300/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Burger">
                    <input type="hidden" name="Price" value="300">
                    
                     <input type='hidden' name='image' value='image/snack2.jpg'>                
                </div>
                </div>
               </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="3">
                    <img src="images/snack3.jpg" >
                     <div class='caption'>
                         <h3><center><i class="fas fa-rupee-sign"> 400/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                    </div>
                   
                    <input type="hidden" name="name" value="Mini Burger">
                    <input type="hidden" name="Price" value="400">
                    
                    <input type='hidden' name='image' value='image/snack3.jpg'>
                    
                </div>
                </div>
                </form>
            </div>
            
            
            
            
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="4">
                   <img src='images/snack6.jpg'>
                    <div class='caption'>
<!--                        <h3><i class="fas fa-rupee-sign"> 400/-</i>Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button></h3>-->
<h3><center><i class="fas fa-rupee-sign"> 400/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                       
                   </div>
                   
                    <input type="hidden" name="name" value="Omelet sandwich">
                    <input type="hidden" name="Price" value="400">
                    <input type='hidden' name='image' value='image/snack6.jpg'>
     
                 </div>
               </div>
                </form>
                    <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="5">
                    <img src="images/snack7.jpg" >
                     <div class='caption'>

                         <h3><center><i class="fas fa-rupee-sign"> 600/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="large burger">
                    <input type="hidden" name="Price" value="600">
                    
                    <input type='hidden' name='image' value='image/snack7.jpg'>
                   
                </div>
                </div>
                    </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="6">
                    <img src="images/snack8.jpg" >
                     <div class='caption'>

                         <h3><center><i class="fas fa-rupee-sign"> 450/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                         
                   </div>                   
                    <input type="hidden" name="name" value="Tomato Sandwich">
                    <input type="hidden" name="Price" value="450">
                    <input type='hidden' name='quantity' value='0'>
                   <input type='hidden' name='image' value='image/snack8.jpg'>
                </div>
                </div>
                </form>
            </div>
        </div>
        
        <div id='soup' class="contaier-fluid btn-danger">
            <h1 class="text-center text-white">---Soups---</h1>
        </div> 
           
        
        <div class="container-fluid" style='background-color: white'>
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="7">
                   <img src='images/soup.jpg'>
                   <div class='caption'>
                       <h3><center><i class="fas fa-rupee-sign"> 150/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                    <input type="hidden" name="name" value="Veg_Soup">
                    <input type="hidden" name="Price" value="150">
                    <input type='hidden' name='image' value='image/soup.jpg'>
                 
                 </div>
                 </div>
                </form>
               <form action='BuyNow' method="get">        
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="8">
                    <img src="images/soup1.jpg" >
                    <div class='caption'>
                       <h3><center><i class="fas fa-rupee-sign"> 300/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Carrot & coriander soup">
                    <input type="hidden" name="Price" value="300">
                   <input type='hidden' name='image' value='image/soup1.jpg'>                
                </div>
                </div>
               </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="9">
                    <img src="images/soup2.jpg" >
                     <div class='caption'>
<h3><center><i class="fas fa-rupee-sign"> 450/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Tomato soup with pasta">
                    <input type="hidden" name="Price" value="450">
                    <input type='hidden' name='image' value='image/soup2.jpg'>
                    
                </div>
                </div>
                </form>
            </div>
            
            
            
            
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="10">
                   <img src='images/soup3.jpg'>
                    <div class='caption'>
                        <h3><center><i class="fas fa-rupee-sign"> 550/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                       
                   </div>
                   
                    <input type="hidden" name="name" value="Broccoli & stilton soup">
                    <input type="hidden" name="Price" value="550">
                    <input type='hidden' name='image' value='image/soup3.jpg'>
     
                 </div>
               </div>
                </form>
                    <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="11">
                    <img src="images/soup5.jpg" >
                     <div class='caption'>
                   <h3><center><i class="fas fa-rupee-sign"> 650/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Carrort Soup">
                    <input type="hidden" name="Price" value="650">
                    <input type='hidden' name='image' value='image/soup5.jpg'>
                   
                </div>
                </div>
                    </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="12">
                    <img src="images/soup6.jpg" >
                     <div class='caption'>
                       <h3><center><i class="fas fa-rupee-sign"> 600/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>                   
                    <input type="hidden" name="name" value="Celery soup">
                    <input type="hidden" name="Price" value="600">
                    <input type='hidden' name='image' value='image/soup6.jpg'>
                </div>
                </div>
                </form>
            </div>
        </div>
        
        
        
        <div id='meals' class="contaier-fluid btn-danger">
            <h1 class="text-center text-white">---Meals---</h1>
        </div> 
           
        
        <div class="container-fluid" style='background-color: black'>
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="13">
                   <img src='images/meal1.jpg'>
                   <div class='caption'>
<h3><center><i class="fas fa-rupee-sign"> 160/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                    <input type="hidden" name="name" value="Veg Rice Baji">
                    <input type="hidden" name="Price" value="160">
                    <input type='hidden' name='image' value='images/meal1.jpg'>
                 
                 </div>
                 </div>
                </form>
               <form action='BuyNow' method="get">        
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="14">
                    <img src="images/meal2.jpg" >
                    <div class='caption'>
           <h3><center><i class="fas fa-rupee-sign"> 220/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Panner">
                    <input type="hidden" name="Price" value="220">
                   <input type='hidden' name='image' value='images/meal2.jpg'>                
                </div>
                </div>
               </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="15">
                    <img src="images/meal3.jpg" >
                     <div class='caption'>
                       <h3><center><i class="fas fa-rupee-sign"> 360/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Chicken">
                    <input type="hidden" name="Price" value="360">
                    <input type='hidden' name='image' value='images/meal3.jpg'>
                    
                </div>
                </div>
                </form>
            </div>
            
            
            
            
            <div class='row'>
                <form action='BuyNow' method="get">
               <div class='col-md-4 bg-light'>
                 <div class='thumbnail'>   
                   <input type="hidden" name="Id" value="16">
                   <img src='images/meal4.jpg'>
                    <div class='caption'>   
                        <h3><center><i class="fas fa-rupee-sign"> 550/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                       
                   </div>
                   
                    <input type="hidden" name="name" value="Thali">
                    <input type="hidden" name="Price" value="550">
                    <input type='hidden' name='image' value='images/meal4.jpg'>
     
                 </div>
               </div>
                </form>
                    <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="17">
                    <img src="images/meal5.jpg" >
                     <div class='caption'>
                   <h3><center><i class="fas fa-rupee-sign">250/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>
                   
                    <input type="hidden" name="name" value="Rice With">
                    <input type="hidden" name="Price" value="250">
                    <input type='hidden' name='image' value='image/meal5.jpg'>
                   
                </div>
                </div>
                    </form>
                <form action='BuyNow' method="get">
                <div class='col-md-4 bg-light'>
                    <div class='thumbnail'>
                    <input type='hidden' name='Id' value="12">
                    <img src="images/meal6.jpg" >
                     <div class='caption'>
                       <h3><center><i class="fas fa-rupee-sign"> 150/-</i></center><!--  Quantity <input type='number' value='1'name='quantity' min='1' max='5'><button type="submit" class="btn btn-primary pull-right">Buy Now</button>--></h3>
                   </div>                   
                    <input type="hidden" name="name" value="Tice">
                    <input type="hidden" name="Price" value="150">
                    <input type='hidden' name='image' value='image/meal6.jpg'>
                </div>
                </div>
                </form>
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
