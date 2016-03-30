<?php
	require_once('includes/init.php');
	//confirm_logged_in();
	ini_set('display_errors', 1); //need to delete it when put onto online webhost  //Sets the value of a configuration option
	error_reporting(E_ALL); //need to delete it when put onto online webhost
	//
	
	$id = $_SESSION['user_id'];
	//echo $id;
	$popForm = getUser($id);
	
	//echo gettype($_POST['fname']); //NULL
	//echo gettype(trim($_POST['fname'])); //string
	//echo empty(trim($_POST['fname'])); //1, true
	
	if(isset($_POST['submit'])){
		//echo "works";
		$fname = trim($_POST['fname']);
		$lname = trim($_POST['lname']);
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		$updateUser = editUser($id, $fname, $lname, $username, $password);
		$message = $updateUser;
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to my Account</title>
</head>
<body>
	<h2>Edit My Account</h2><br>
    <?php if(!empty($message)){echo $message;}?>
	<form action="admin_editUser.php" method="post">
		<label>First Name:</label>
        <input type="text" name="fname" value="<?php echo $popForm['user_fname']; ?>"><br><br>
        
        <label>Last Name:</label>
        <input type="text" name="lname" value="<?php echo $popForm['user_lname']; ?>"><br><br>
        
        <label>Username:</label>
        <input type="text" name="username" value="<?php echo $popForm['user_name']; ?>"><br><br>
        
        <label>Password</label>
        <input type="text" name="password" value="<?php echo $popForm['user_pass']; ?>"><br><br>

        <input type="submit" name="submit" value="Save">
	</form>
    <a href="admin_index.php">Back</a>
</body>
</html>