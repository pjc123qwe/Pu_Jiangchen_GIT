<?php
//echo "login";
	function login($username, $password, $ip){
		//echo "from login function";
		require_once('connect.php');
		$username = mysqli_real_escape_string($link,$username);
		$password = mysqli_real_escape_string($link,$password);
		$loginstring = "SELECT * FROM tbl_user where user_name='{$username}'and user_pass='{$password}'";
		//echo $loginstring;
		$user_set = mysqli_query($link,$loginstring);
		//echo mysqli_num_rows($user_set);
		if(mysqli_num_rows($user_set)){
			//echo "Found a user.";
			$found_user = mysqli_fetch_array($user_set, MYSQLI_ASSOC);
			$id = $found_user['user_id'];
			//echo $id;
			$_SESSION['user_id'] = $id;
			$_SESSION['user_name'] = $found_user['user_name'];
			//$_SESSION['user_login_time']=$found_user['user_login_time'];
			//echo $_SESSION['user_login_time'];
			if(mysqli_query($link,$loginstring)){
				$updatestring = "UPDATE tbl_user SET  user_id='{$id}' WHERE user_id={$id}";
				//echo $updatestring;
				$updatequery = mysqli_query($link,$updatestring);
			}
			redirect_to("admin_index.php");
		}else{
			$faillogin=1;
			echo "Fail to login:";echo $faillogin; echo " times";echo "<br>";
			$message = "Username/Password combination was incorrect.<br>Please make sure that your cap locks key is turned off.";
			//echo "No user found.";
			return $message;
		}
		
		mysqli_close($link);
	}

?>