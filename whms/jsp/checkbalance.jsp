<?php
require_once 'connect.php';
	if($_POST)
	{
		//Booking Details
		$date=$_POST['bookdate'];
		$shift=$_POST['bookshift'];
		$floor=$_POST['floor'];
		$paid=$_POST['paid'];
		$query="SELECT cid from  customer WHERE bookdate='$date' and bookshift='$shift' and floor='$floor'";
		$result=queryMysql($query);
		while ($row=mysqli_fetch_array($result)) 
		{
			$dbcid=$row['cid'];
		}
		$query1="SELECT sofa,chair,tables,other from cdeco WHERE cid='$dbcid'";
		$result1=queryMysql($query1);
		while ($row=mysqli_fetch_array($result1)) 
		{
			$dsofa=$row['sofa'];
			$dchair=$row['chair'];
			$dtable=$row['tables'];
			$dother=$row['other'];
		}

		$query2="SELECT name,quantity from ccatering WHERE cid='$dbcid'";
		$result2=queryMysql($query2);
		while ($row=mysqli_fetch_array($result2)) 
		{
			$dname=$row['name'];
			$dquantity=$row['quantity'];
		}

		$tdeco=($dsofa*200)+($dchair*50)+($dtable*100)+($dother*50);
		if($dname=="mughlai")
			$tcat=$dquantity*200;

		if($dname=="chinese")
			$tcat=$dquantity*350;

		if($dname=="italian")
			$tcat=$dquantity*300;

		if($dname=="fishthali")
			$tcat=$dquantity*250;

		$total=$tdeco+$tcat;
		$balance=$total-$paid;
		echo $balance;
	}
?>