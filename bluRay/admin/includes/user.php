<?php
	ini_set('display_errors', 1); //need to delete it when put onto online webhost  //Sets the value of a configuration option
	error_reporting(E_ALL); //need to delete it when put onto online webhost
	//
	function getUser($id){
		include('connect.php');
		$userstring="SELECT * FROM tbl_user where user_id={$id}";
		//echo $userstring;
		$userquery = mysqli_query($link,$userstring);
		if($userstring){
			$found_user=mysqli_fetch_array($userquery,MYSQLI_ASSOC);
			return $found_user;
		}else{
			$message="I do not like change, so leave me alone.";
			return $message;
		}
		mysqli_close($link);
	}

	function createUser($fname,$lname,$username,$password,$level){
		//echo "Works";
		include('connect.php');
		$fname = mysqli_real_escape_string($link,$fname);
		$lname = mysqli_real_escape_string($link,$lname);
		$username = mysqli_real_escape_string($link,$username);
		$password = mysqli_real_escape_string($link,$password);
		$ip=0;

		$userstring="INSERT INTO tbl_user VALUES(NULL,'{$fname}','{$lname}','{$username}','{$password}','{$level}','{$ip}')";

		//echo $userstring;	
		$userquery=mysqli_query($link,$userstring);

		if($userstring){
			redirect_to('admin_index.php');
		}else{
			$message="There was a problem setting up this user. Please contact your web admin.";
			return $message;
		}



		mysqli_close($link);
	}

	function editUser($id,$fname,$lname,$username,$password){
		include('connect.php');
		$updatestring="UPDATE tbl_user SET user_fname={$fname}, user_lname={$lname}, user_name={$username}, user_pass={$password} where user_id ={$id}";
		//echo $updatestring;
		$updatequery=mysqli_query($link,$updatestring);

		if($updatequery){
			redirect_to('admin_index.php');
		}else{
			$message="Whoops, you broke the internet.";
			return $message;
		}


		mysqli_close($link);

	}

?>