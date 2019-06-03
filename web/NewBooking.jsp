<!DOCTYPE html>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
        <title>New Booking</title>
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
              String id=request.getParameter("Id");
              String name=request.getParameter("name");
              String price=request.getParameter("Price");
              String image=request.getParameter("image");
              String place=request.getParameter("place");
              String user_id=(String) session.getAttribute("username");
                               
                               
              
        %>
        <div class="container-fluid col-md-4 text-center"></div>
        <div class="container-fluid col-md-4 text-center">
            <form class="well form-horizontal" action="BookServlet" method="post"  id="search" >
                <fieldset style='background-image :url()'> 
                 <legend><center><h2><b>Booking Details</b></h2></center></legend><br>
                 <label class="col-md-4 control-label" style='font-size:16px'>User_id:</label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="userid" value='<%=user_id%>' readonly="readonly"/><br/>
                 </div>
                 <label class="col-md-4 control-label" style='font-size:16px'>Product_id:</label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="id1" value='<%=id%>' readonly="readonly"/><br/>
                 </div>
                 <label class="col-md-4 control-label" style='font-size:16px'>Name :</label>
                 <div class='input-group'>
                 <input class ="form-control" type="text" name="nm1" value='<%=name%>' readonly="readonly"/><br/>
                 </div>
                 <label class="col-md-4 control-label" style='font-size:16px'>Price : </label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="pr1" value='<%=price%>' readonly="readonly"/><br/>
                 </div>
                 <label class="col-md-4 control-label" style='font-size:16px'>Place : </label>
                 <div class='input-group'>
                 <input class="form-control" type="text" name="pl1" value='<%=place%>' readonly="readonly"/><br/>
                 </div>
                 <input type="hidden" name="image" value="<%=image%>">
                <label class="col-md-4 control-label" style='font-size:16px'>Image: </label>
                 <div class='input-group'>
                     <image src="<%=image%>" width="196" height="100"/>
                 </div> 
                 <br/>
                 
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:16px'>Checkin Date</label>  
                 <div class='input-group date' id='datetimepicker2'>
                        <input  class="form-control" type="text" placeholder=" Checkin Date"  id="indate" name="date1" required="">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>

                 
                 <div class="form-group">
                 <label class="col-md-4 control-label" style='font-size:15px'>Checkout Date</label>  
                 <div class='input-group date' id='datetimepicker2'>
                        <input  class="form-control" type="text" placeholder=" Checkout Date" name="date2" id="outdate" required="">
                     
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
                </fieldset> 
                 
                 
             
                <center><div class="btn-group btn-group-lg">
                <button type="submit" class="btn btn-success">BOOK</button>
             </div>  
             <div class="btn-group btn-group-lg">
                <button type="reset" class="btn btn-success">Clear</button>
             </div>
                </center>
            </form>
           </div>
        
                 <script type="text/javascript">
            $(document).ready(function () {
                
                var dt = new Date();
                dt.setDate(dt.getDate() + 91);
                $('#indate').datepicker({                   
                    autoclose: true,
                    startDate: new Date(),
                    endDate: dt,
                    todayHighlight: true,
                    format: "dd/mm/yyyy"
                    }).on('changeDate', function (selected) {
                var minDate = new Date(selected.date.valueOf() + (1000 * 60 * 60 * 24));
                $('#outdate').datepicker('setStartDate', minDate);
                var endDate = new Date(selected.date.valueOf() + (1000 * 60 * 60 * 24 * 31));
                $('#outdate').datepicker('setEndDate',endDate);
                $( "#outdate" ).datepicker( "option", "disabled", false);
                });  
                
                
                
                 $('#outdate').datepicker({
                    autoclose: true,
                    disabled: true,
                    format: "dd/mm/yyyy"
                }).on('changeDate', function (selected) {
                var maxDate = new Date(selected.date.valueOf());
                $('#indate').datepicker('setEndDate', maxDate);
                });  

            
            
            });


        </script>
    </body>
      

</html>
       