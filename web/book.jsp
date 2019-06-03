
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="datepicker.css">
        <link rel='stylesheet' href='style.css'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
        <title>Final Booking</title>
    </head>
    <body>
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
            </div>
        </nav>
        
      <%
          String user=(String)session.getAttribute("user");
          String image=(String)session.getAttribute("image");
       %>
       <fieldset style="background-image: url(<%=image%>);background-repeat: no-repeat;background-size: cover  ">
       <div class="container-fluid col-md-4 text-center"></div>
        <div class="container-fluid col-md-4 text-center">
            <form class="well form-horizontal" action="SemiFinal" method="post"  id="search" >
                <fieldset style='background-image :url()'> 
                 <legend><center><h2><b>Personal Details</b></h2></center></legend><br>
                 <label class="col-md-4 control-label" style='font-size:16px'>User_id:</label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="userid" value='<%=user%>' readonly="readonly"/><br/>
                 </div><br/>
                 <label class="col-md-4 control-label" style='font-size:16px'>Full-Name</label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="Fname" value=""/><br/>
                 </div><br/>
                 <label class="col-md-4 control-label" style='font-size:16px'>Address</label>
                 <div class='input-group'>
                     <textarea class ="form-control" type="text" name="address" value="" row='4' cols="50"></textarea><br/>
                 </div><br/>
                 <label class="col-md-4 control-label" style='font-size:16px'>Mobile-No.</label>
                 <div class='input-group'>
                     <input class="form-control" type="text" name="phoneNo" value="" pattern="[0-9]{10}" title="Enter Valid Phone Number"/><br/>
                 </div><br/>
                 <label class="col-md-4 control-label" style='font-size:16px'>Email</label>
                 <div class='input-group'>
                     <input class="form-control" type="email" name="emailAdd" value="" pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$" title="Enter valid Email-Address"/><br/>
                 </div><br/>
                 <label class="col-md-4 control-label" style='font-size:16px'>Image</label>
                 <div class='input-group'>
                     <image src="<%=image%>" width="196" height="100"/>
                 </div>
                 <br/>
                 
                <center><div class="btn-group btn-group-lg">
                <button type="submit" class="btn btn-success">BOOK</button>
             </div>  
             <div class="btn-group btn-group-lg">
                <button type="reset" class="btn btn-danger">Clear</button>
             </div>
                </center>
 
                </fieldset>
            </form>
        </div>
       </fieldset>
    </body>
        
    <footer class="container-fluid text-center">
         <a href="#myPage" title="TOP">
         <span class="glyphicon glyphicon-chevron-up"></span>
         </a>
             <h2>Thank You So Much For Visting </h2>
             <h2><a href="Terms.html">Terms and conditions</a></h2>
                <h4>© Copyright 2017 Hotel Group</h4>
        </footer>
   
</html>
