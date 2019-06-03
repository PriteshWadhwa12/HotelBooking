<%-- 
    Document   : Foods
    Created on : 26 Apr, 2019, 2:31:26 PM
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
                <ul class="nav navbar-nav">
                    <li style="font-size: 30px;font-weight: bold" ><a href="Foods2.jsp">Menus</a></li>
                    
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
                    <img src="images/chicken1.jpg" style="height: 580px;width: 100%">                  
                </div>
                <div class="item">
                    <img src="images/chicken2.jpg" style="height: 580px;width: 100%">
                </div>
                  <div class="item">
                      <img src="images/chicken3.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                         <img src="images/chicken4.jpg" style="height: 580px;width: 100%">
                </div>
                     <div class="item">
                         <img src="images/chickn5.jpg" style="height: 580px;width: 100%">
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
            
            
            
        