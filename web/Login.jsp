<%-- 
    Document   : Login
    Created on : 17 Feb, 2019, 1:28:44 PM
    Author     : Pritesh Wadhwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

</head>
        <body class="" style="background-image: url(images/Safari-Court-Hotel-Pool.jpg)">
        <div class="row">
        <div class="col-md-12">
        <h2 class="text-center text-white mb-4"> Login </h2>
        <div class="row">
        <div class="col-md-6 mx-auto">
        <div class="card rounded-0">
        <div class="card-header">
        <h3 class="mb-0">Login</h3>
                            </div>
                            <div class="card-body">
                                <form  method="Post" action="LoginServlet">
                                    <div class="form-group">
                                        <label>UserID</label>
                                        <input type="text" class="form-control form-control-lg rounded-0" name="Userid" required=" "> 
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control form-control-lg rounded-0" id="pass" name="password" required="">
                                        <input type="checkbox" onclick="showPassword()">Show Password
                                     </div>
                                    <div>
                                        <h3 align="center"> New User ?</h3>
                                        <h4 align="center"><a href="RegisterPage.jsp">Register</a></h4>
                                    </div>
                                    <button type="submit" class="btn btn-success btn-lg float-right">Login</button>
                                </form>
                            </div>
        </div>
        </div>
        </div>    
        </div>
             
</div>
       
            <script type="text/javascript">
                function showPassword()
                {
                    var x=document.getElementById("pass")
                    if(x.type ==="password")
                    {
                     x.type="text";   
                    }
                    else
                    {
                        x.type="password";
                    }
                }
            </script>


    </body>
</html>
