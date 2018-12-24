<?php
require_once 'connect.php';
	if($_POST)
	{

		$quantity=$_POST['quantity'];
		$price=$_POST['price'];
		$total=$quantity*$price;
		echo $total;
	}
?>