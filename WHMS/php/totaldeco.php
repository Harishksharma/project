<?php
require_once 'connect.php';
	if($_POST)
	{

		$aquantity=$_POST['aquantity'];
		$aprice=$_POST['aprice'];
		$bquantity=$_POST['bquantity'];
		$bprice=$_POST['bprice'];
		$cquantity=$_POST['cquantity'];
		$cprice=$_POST['cprice'];

		$total=($aquantity*$aprice)+($bquantity*$bprice)+($cquantity*$cprice);
		echo $total;
	}
?>