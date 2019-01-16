<!DOCTYPE html>
<html>
    <head>
        <title>Payment</title>
		<link href="css/bootstrap.css" rel="stylesheet" >
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div id="printTable">
                <center><h1>Payment Details</h1></center>
                 <fieldset class="form-group">
                    <label for="bookdate">Booking Date</label>
                    <input type="date" class="form-control" id="bookdate" name="bookdate" required>
                </fieldset>
                  
                <fieldset class="form-group">
                    <label for="bookshift">Booking Shift</label>
                    <select class="form-control" name="bookshift" id="bookshift">
                        <option value="select">--Select--</option>
                        <option value="afternoon">Afternoon</option>
                        <option value="evening">Evening</option>
                    </select> 
                </fieldset>

                <fieldset class="form-group">
                    <label for="floor">Floor</label>
                    <select class="form-control" name="floor" id="floor">
                        <option value="select">--Select--</option>
                        <option value="ground">Ground</option>
                        <option value="first">First</option>
                        <option value="second">Second</option>
                    </select>  
                </fieldset>
                <fieldset class="form-group">
                    <label for="tamount">Total Amount</label>
                    <span class="form-control" id="u1">Total Amount Displayed Here.</span>
                </fieldset>

                <fieldset class="form-group">
                    <label for="pamount">Paid Amount</label>
                    <input type="number" class="form-control" id="pamount" name="pamount" placeholder="Enter Paid Amount"required>
                </fieldset>
                <fieldset class="form-group">
                    <label for="tamount">Balance Amount</label>
                    <span class="form-control" id="u2">Balanced Amount Displayed Here.</span>
                </fieldset>

                <fieldset class="form-group">
                    <label for="duedate">Due Date</label>
                    <input type="date" class="form-control" id="duedate" name="duedate" required>
                </fieldset>
            </div>
                <br>
                <button class="btn btn-primary" style="width: 100%;" value="Bill Generation" onclick="jQuery('#printTable').print()" >Print</button>     
            </div>
                
        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="js/misc.js" type="text/javascript"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/checkamount.js" type="text/javascript"></script>
        <script src="js/jQuery.print.js"></script>
    </body>
    <script type='text/javascript'>
        //<![CDATA[
        jQuery(function($) { 'use strict';
            $("#printTable").find('.btn btn-primary').on('click', function() {
                //Print ele2 with default options
                $.print("#printTable");
            });
            });
        </script> 
</html>