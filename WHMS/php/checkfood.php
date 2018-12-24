<?php
require_once 'connect.php';
	if($_POST)
	{
		$date=$_POST['bookdate'];
		$name=$_POST['name'];
		$query0="SELECT balance from payment WHERE cid='$dbcid'";
		$result0=queryMysql($query0);
		while ($row=mysqli_fetch_array($result0)) 
		{
			$total=$row['balance'];
		}
		$dbcid=intval($temp);
		$query0="SELECT cid from payment WHERE cid='$dbcid'";	
		$result0=queryMysql($query0);
		if(mysqli_num_rows($result0)==0)
		{
			$query1="SELECT sofa,chair,tables from cdeco WHERE cid='$dbcid'";
			$result1=queryMysql($query1);
			while ($row=mysqli_fetch_array($result1)) 
			{
				$dsofa=$row['sofa'];
				$dchair=$row['chair'];
				$dtable=$row['tables'];
			}

			$query2="SELECT name,quantity from ccatering WHERE cid='$dbcid'";
			$result2=queryMysql($query2);
			while ($row=mysqli_fetch_array($result2)) 
			{
				$dname=$row['name'];
				$dquantity=$row['quantity'];
			}

			$tdeco=($dsofa*200)+($dchair*50)+($dtable*100);
			if($dname=="mughlai")
				$tcat=$dquantity*200;

			if($dname=="chinese")
				$tcat=$dquantity*350;

			if($dname=="italian")
				$tcat=$dquantity*300;

			if($dname=="fishthali")
				$tcat=$dquantity*250;

			$total=$tdeco+$tcat;
		}	
		else
		{
			$query3="SELECT balance from payment WHERE cid='$dbcid'";
			$result3=queryMysql($query3);
			if($result3)
			{
				while ($row=mysqli_fetch_array($result3)) 
				{
					$total=$row['balance'];
				}
			}
		}
		echo $total;
	}
?>