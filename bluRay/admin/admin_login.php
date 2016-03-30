<?php
	//Turn off when the site goes live
	ini_set('display_errors',1);
	error_reporting(E_ALL);
	//
	require_once('includes/init.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		//echo "Submit works.";
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
	//	echo $username."<br>";
	//	echo $password;
		if($username != "" && $password != ""){
			//echo "yup";
			$result = login($username, $password, $ip);
			$message = $result;
		}else{
			//echo "nope";
			$message = "Please fill in the required fields.";
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Company Name</title>
</head>
<body>
Login to your account<br><br>
<?php if(!empty($message)){echo $message;}?>
<form action="admin_login.php" method="post">
	<label>username:</label> 
	<input type="text" name="username" value="">
	<br>
	<label>password:</label>
	<input type="password" name="password" value="">
	<input type="submit" name="submit" value="Login">
</form>
</body>
</html>
