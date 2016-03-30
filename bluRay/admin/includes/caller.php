<?php

	require_once('init.php');
	//ini_set('display_errors',1);
	//error_reporting(E_ALL);
	if(isset($_GET['caller_id'])){
		$dir=$_GET['caller_id'];

		if($dir="logout"){
			logged_out();
		}else{
			echo "caller id does not exist.";
		}

	}

?>