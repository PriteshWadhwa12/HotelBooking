<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
        <title>Hotels Billing Page</title>
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
          String FullName=(String)session.getAttribute("fName"); 
          String CID=(String)session.getAttribute("date1"); 
          String COD=(String)session.getAttribute("date2"); 
          String RoomN=(String)session.getAttribute("name"); 
          String RoomP=(String)session.getAttribute("place"); 
          int GrossPrice=(Integer)session.getAttribute("price"); 
          int NumRoom=(Integer)session.getAttribute("NumDays");
          long NetPrice=(Long)session.getAttribute("Calc");
          String Address=(String)session.getAttribute("address");
          long Phone=(Long)session.getAttribute("mobile2");
          String Email=(String)session.getAttribute("email2");
          
        %>
       
        
        
        
        
        
        
        
        
        
  <div class="container-fluid col-md-12 text-center"style="background-color: black">
          <form class="well form-horizontal" action="Payment.jsp" method="post"  id="search" >
          <legend><center><h2><b>INVOICE/BILLING DETAILS</b></h2></center></legend><br>
          <label class="col-md-5 control-label" style='font-size:16px'>User_id:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%=user%>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Full-Name:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%=FullName%>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Check-In-Date:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%=CID%>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Check-Out-Date:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%=COD%>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Room-Name:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= RoomN %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Room-Place:</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= RoomP %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Gross-Price</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= GrossPrice %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>No.-of-Days</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= NumRoom %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Net-Price</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= NetPrice %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>User-Address</label>
          <div class='input-group'>
          <textarea class="form-control" type="text" row="4" cols="50" readonly="readonly"><%= Address %></textarea><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Contact-No.</label>
          <div class='input-group'>
          <input class="form-control" type="text" value='<%= Phone %>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Email</label>
          <div class='input-group'>
          <input class="form-control" size="45" type="text" value='<%= Email%>' readonly="readonly"/><br/>
          </div><br/>
          <label class="col-md-5 control-label" style='font-size:16px'>Image:</label>
          <div class="input-group">
          <image src=<%=image%> width='196' height='100'/>
          </div><br/>
          <center><div class="btn-group btn-group-lg">
          <button type="submit" class="btn btn-success">Final Booking</button>
          </div>  
          <div class="btn-group btn-group-lg">
          <a href='book.jsp' class="btn btn-danger">Any Changes</a>
          </div>
          </center>
                    
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
