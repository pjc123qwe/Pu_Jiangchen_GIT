<?php
	require_once('includes/init.php');
	confirm_logged_in();
	
	//echo gettype($_POST['fname']); //NULL
	//echo gettype(trim($_POST['fname'])); //string
	//echo empty(trim($_POST['fname'])); //1, true
	
	if(isset($_POST['submit'])){
		//echo "works";
		$fname=trim($_POST['fname']);
		$lname=trim($_POST['lname']);
		$username=trim($_POST['username']);
		$password=trim($_POST['password']);
		$level=$_POST['lvl_list'];
		//echo $fname.'<br>';
		//echo $lname.'<br>';
		//echo $username.'<br>';
		//echo $password.'<br>';
		//echo $level.'<br>';
		if(empty($level)){
			$message = "Please select a user level";
			$autofname = $fname;
			$autolname = $lname;
			$autoname = $username;
			$autopass = $password;
		}else{
			//echo "form filled out";
			$result = createUser($fname,$lname,$username,$password,$level);
			$message = $result;
		}
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Create User</title>
</head>
<body>
	<h2>Create User</h2><br>
    <?php if(!empty($message)){echo $message;}?>
	<form action="admin_createUser.php" method="post">
		<label>First Name:</label>
        <input type="text" name="fname" value="<?php if(!empty($autofname)){echo $autofname;}?>"><br><br>
        
        <label>Last Name:</label>
        <input type="text" name="lname" value="<?php if(!empty($autolname)){echo $autolname;}?>"><br><br>
        
        <label>Username:</label>
        <input type="text" name="username" value="<?php if(!empty($autoname)){echo $autoname;}?>"><br><br>
        
        <label>Password</label>
        <input type="text" name="password" value="<?php if(!empty($autopass)){echo $autopass;}?>"><br><br>
        
        <label>User Level:</label>
        <select name="lvl_list">
        	<option value="">Please Select a User Level</option>
            <option value="1">Web Admin</option>
            <option value="2">Web Master</option>
        </select>
        <br><br>
        <input type="submit" name="submit" value="Send">
	</form>
    <a href="admin_index.php">Back</a>
</body>
</html>