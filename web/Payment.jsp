<%-- 
    Document   : Payment
    Created on : 18 May, 2019, 1:46:18 PM
    Author     : Pritesh Wadhwa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">


        
        
        <title>Payment's Page</title>
    </head>
    <body>
        <%
            long NetPrice=(Long)session.getAttribute("Calc");
         %>
        <form action="FinalBookingServlet" name="form1">
        <div class="contaier-fluid">
    <div class='row'>
        <div class='col-md-4'></div>
        <div class='col-md-4'>
            <center><h1>Payment Details</h1></center>
            <center><h1><i class="fab fa-cc-visa" style="color: blue"></i> <i class="fab fa-cc-apple-pay"style="color: red"></i> <i class="fab fa-cc-paypal" style="color: black"></i> <i class="far fa-credit-card" style="color: red"></i> </h1></center><br/>
            <div class='form-row'>
              <div class='col-xs-12 form-group required'>
                <label class='control-label'>Name on Card</label>
                <input class='form-control' size='20' type='text' name='text1' required="required" >
              </div>
            </div>
            <div class='form-row'>
              <div class='col-xs-12 form-group card required'>
                <label class='control-label'>Card Number</label>
                <input autocomplete='off' class='form-control card-number' size='20' type='text' required="required" onclick="alletter(document.form1.text1)">
              </div>
            </div>
            <div class='form-row'>
              <div class='col-xs-4 form-group cvc required'>
                <label class='control-label'>CVV</label>
                <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'required="required">
              </div>
            <div class='col-xs-4 form-group expiration required'>
                <label class='control-label'>Expiration</label>
                <input class='form-control card-expiry-month' placeholder='MM' size='2' type='text' required="required">
              </div>
              <div class='col-xs-4 form-group expiration required'>
                <label class='control-label'> </label>
                <input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text'required="required">
              </div>
            </div>
 
            <div class='form-row'>
              <div class='col-md-12'>
                <div class='form-control total btn btn-primary'>
                  Total:
                  <span class='amount'><%= "Rs "+NetPrice %></span><br/>
                </div>
              </div>
            </div>
                
            <div class='form-row'>
              <div class='col-md-12 form-group'>
                  <b> <button class='form-control btn btn-danger submit-button' type='submit'>Pay...</button></b>    
              </div>
            </div>
            </div>
    </div>
        </div>
        </form>
                <script>
                    function alletter(inputtxt)
                    {
                        var letters=/^[A-Za-z]+$/;
                        if(inputtxt.value.match(letters))
                        {
                            return true;
                        }
                        else
                        {
                            alert('Please Input Valid-Name Only');
                            return false;
                        }
                    }
                </script>
            
    </body>
</html>
