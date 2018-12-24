<?php
require_once 'connect.php';
	if($_POST)
	{
		//Booking Details
		$bookdate=$_POST['bookdate'];
		$bookshift=$_POST['bookshift'];
		$floor=$_POST['floor'];
		
		//Customer Details
		$name=$_POST['name'];
		$mobile=$_POST['mobile'];
		$email=$_POST['email'];
		$address=$_POST['address'];
		$dob=$_POST['dob'];
		
		//Decoration Details
		$bsofa=$_POST['bsofa'];
		$bchair=$_POST['bchair'];
		$btable=$_POST['btable'];

		//Catering Details
		$fooditem=$_POST['fooditem'];
		$bfood=$_POST['bfood'];

		$query1="INSERT INTO customer(name,mobile,email,address,dob,bookdate,bookshift,floor) VALUES ('$name','$mobile','$email','$address','$dob','$bookdate','$bookshift','$floor')";
		$result1=queryMysql($query1);

		$gets="select max(cid) from customer";

		$cid=queryMysql($gets);

		while($row=mysqli_fetch_array($cid)) 
		{
			$dbcid=$row['max(cid)'];
		}

		$query2="INSERT INTO cdeco (sofa,chair,tables,cid) VALUES ('$bsofa','$bchair','$btable','$dbcid')";
		$result2=queryMysql($query2);

		$query3="INSERT INTO ccatering(name,quantity,cid) VALUES ('$fooditem','$bfood','$dbcid')";
		$result3=queryMysql($query3);

		echo $dbcid;
	}
?>