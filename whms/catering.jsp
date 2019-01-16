<!DOCTYPE html>
<html>
    <head>
        <title>Catering</title>
		<link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/style.css" rel="stylesheet">

        <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.js"></script>
    </head>
    <body>
        <div class="container">
            <form role="form" method="post" action="payment.php">
                <center><h1>Catering Details</h1></center>
                <fieldset class="form-group">
                    <label for="bookdate">Booking Date</label>
                    <input type="date" class="form-control" id="bookdate" name="bookdate" required>
                </fieldset>
                <span id="usererr"></span>
                <fieldset class="form-group">
                    <label for="fooditem" id="fooditem">Item Name</label>
                    <select class="form-control" name="fooditem" id=fooditem>
                        <option value="select">--Select--</option>
                    </select> 
                </fieldset>
                <fieldset class="form-group">
                    <label for="bcquantity">Booked Quantity</label>
                    <input type="number" class="form-control" id="bcquantity" name="bcquantity" required>
                </fieldset>
                <br>     
            </form>
        </div>
        <script src="js/misc.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/checkdate.js"></script>

    </body>
</html>