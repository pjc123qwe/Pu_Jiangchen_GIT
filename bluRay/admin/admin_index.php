<?php
	require_once("includes/init.php");
	confirm_logged_in();
	ini_set('display_errors',1);
	error_reporting(E_ALL);
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Message Page</title>
</head>

<body>
	<h2>Welcome <?php echo $_SESSION['user_name']; ?>to your CMS</h2>

	<a href="admin_createUser.php">Create User</a><br>
	<a href="admin_editUser.php">Edit User</a>
	<br>
	<a href="admin_deleteUser.php">Delete User</a>
	<br>
	<a href="admin_addMovie.php">Add Movies</a>
	<br>
	<a href="includes/caller.php?caller_id=logout">Sign out</a>
<?php ?>
</body>
</html>