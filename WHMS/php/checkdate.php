<?php
require_once 'connect.php';
	$date=$_POST['bookdate'];
	$shift=$_POST['bookshift'];
	$floor=$_POST['floor'];
	$query="SELECT bookdate,bookshift,floor from  customer WHERE bookdate='$date'";
	$result=queryMysql($query);
	while ($row=mysqli_fetch_array($result)) 
	{
		$dbbookdate=$row['bookdate'];
		$dbbookshift=$row['bookshift'];
		$dbfloor=$row['floor'];
	}
	if($date==$dbbookdate&&$shift==$dbbookshift&&$floor==$dbfloor)
		echo 'false';
	else
		echo "true";
?>