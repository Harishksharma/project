<?php
require_once 'connect.php';
	if($_POST)
	{

		$quantity=$_POST['quantity'];
		$name=$_POST['name'];
		if($name=="mughlai")
			$total=$quantity*200;

		if($name=="chinese")
			$total=$quantity*350;

		if($name=="italian")
			$total=$quantity*300;

		if($name=="fishthali")
			$total=$quantity*250;
		echo $total;
	}
?>