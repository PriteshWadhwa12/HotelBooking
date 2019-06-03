<%-- 
    Document   : RegisterPage
    Created on : 18 Feb, 2019, 7:58:32 PM
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
        <title>Register Page</title>
    </head>
    <body style="background-image: url(images/Safari-Court-Hotel-Pool.jpg)">
        <audio autoplay loop>
            <source src='Website Background Music.mp3'>
        
        </audio>
        <div class='container'>
            <form class="well form-horizontal" action="RegisterServlet" method="post"  id="contact_form" style='background-image: url(images/592c0ece55c2b84a73aee9e0ea80639e.jpg)' >
                <fieldset style='background-image :url()'> 
                 <legend><center><h2><b>Registration Form</b></h2></center></legend><br>
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:20px'>First Name</label>  
                 <div class="col-md-4 inputGroupContainer">
                 <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                 <input  name="first_name" placeholder="First Name" class="form-control"  type="text" required="">           
                </div>
                </div>
                </div>

                 
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:20px'>Last Name</label>  
                 <div class="col-md-4 inputGroupContainer">
                 <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input  name="last_name" placeholder="Last Name" class="form-control"  type="text" required="">           
                </div>
                </div>
                </div>
                 
                 
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:20px'>User ID</label>  
                 <div class="col-md-4 inputGroupContainer">
                 <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input  name="user_id" placeholder="User_ID" class="form-control"  type="text" required="">           
                </div>
                </div>
                </div>
                 
                 
                  <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:20px'>Password</label>  
                 <div class="col-md-4 inputGroupContainer">
                 <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input  name="password" placeholder="Password" class="form-control"  type="password" required="">           
                </div>
                </div>
                </div>
                
                 
                 
                 
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:20px'>Email</label>  
                 <div class="col-md-4 inputGroupContainer">
                 <div class="input-group">
                 <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                <input  name="email" placeholder="E-Mail" class="form-control"  type="text" required="" pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$" title="Enter Valid Email Address">           
                </div>
                </div>
                </div>              
              

             </fieldset>
               <center>  <div class="btn-group btn-group-lg">
                       <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-send"></span>..SUBMIT</button>
                   </div>  
                   </center>
            </form>
            <form action="Login.jsp" method="post">
                <center> <div class="btn-group btn-group-lg">
                <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-user"></span>Login IN</button>
                    </div>
                </center>
            </form>
            
           </div>
        
        
        
    </body>
</html>
