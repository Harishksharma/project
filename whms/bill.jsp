<%

String a=request.getParameter("bookdate");
String b=request.getParameter("bookshift");
String c=request.getParameter("floor");
String d=request.getParameter("u1");
String e=request.getParameter("pamount");
String f=request.getParameter("u2");
String g=request.getParameter("duedate");
%>
<!DOCTYPE html>
<html>
	<head>
		<title>Bill</title>
		<link href="css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
	    <link href="css/style.css" rel="stylesheet">
		<script src="js/bootstrap.js"></script>
	</head>
	<body>
		<div class="container">
			<div id="bills">
				<center><h1>Bill Details</h1></center>
		        <table class="table table-responsive-sm table-hover table-bordered table-striped">
		        	<tr>
		        		<td>Customer ID</td>
		        		<td>123</td>
		        	</tr>
		        	<tr>
		        		<td>Customer Name</td>
		        		<td>Mohd Adnan</td>
		        	</tr>
		     		
		     		<tr>
		     			<td>Booked Date</td>
		     			<td>22/22/1111</td>
		     		</tr>

		     		<tr>
		     			<td>Booked Shift</td>
		     			<td>Morning</td>
		     		</tr>

		     		<tr>
		     			<td>Total Amount</td>
		     			<td>11111</td>
		     		</tr>

		     		<tr>
		     			<td>Balance Amount</td>
		     			<td>11111</td>
		     		</tr>

		     		<tr>
		     			<td>Due Date</td>
		     			<td>11/11/1111</td>
		     		</tr>

		     		<tr>
		     			<td>Time</td>
		     			<td>11:11:11 AM</td>
		     		</tr>
		        </table>
	    	</div>
	        <input type="button" class="btn btn-primary" id="print" name="print" value="Print" style="width: 100%;">
	    </div>
	    <script src="js/jquery-3.3.1.min.js" type="text/javascript"></script>
    	<script src="js/misc.js" type="text/javascript"></script>
	</body>
</html>
