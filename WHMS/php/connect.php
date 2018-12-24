<?php 
	$link=null;
	function connectdB()
	{
		$db_host="localhost";
		$db_user="root";
		$db_password="";
		$db_name="weddinghall";
		global $link;
		$link=mysqli_connect($db_host,$db_user,$db_password) or die (mysqli_error());
		mysqli_select_db($link,$db_name) or die(mysqli_error());
	}
	function queryMysql($query)
	{
		connectdB();
		global $link;
		$result=mysqli_query($link,$query);
		mysqli_close($link);
		return $result;
	}
?>
