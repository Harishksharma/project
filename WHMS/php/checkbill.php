<?php
require_once 'connect.php';
	if($_POST)
	{
		$temp=$_POST['cid'];
		$dbcid=intval($temp);

		$query0="SELECT name,bookdate,bookshift from customer WHERE cid='$dbcid'";	
		$result0=queryMysql($query0);
		while ($row=mysqli_fetch_array($result0)) 
		{
				$dbname=$row['name'];
				$dbbookdate=$row['bookdate'];
				$dbbookshift=$row['bookshift'];
		}

		$query1="SELECT tamount,paid,balance,duedate from payment WHERE cid='$dbcid'";	
		$result1=queryMysql($query0);
		while ($row=mysqli_fetch_array($result1)) 
		{
			$dbtamount=$row['tamount'];
			$dbpaid=$row['paid'];
			$dbbalance=$row['balance'];
			$dbduedate=$row['duedate'];
		}
		session_start();
		$_SESSION['id']=$dbcid;
		$_SESSION['name']=$dbname;
		$_SESSION['bookdate']=$dbbookdate;
		$_SESSION['bookshift']=$dbbookshift;
		$_SESSION['tamount']=$dbtamount;
		$_SESSION['paid']=$dbpaid;
		$_SESSION['balance']=$dbbalance;
		$_SESSION['duedate']=$dbduedate;

		echo "true"
	}
?>