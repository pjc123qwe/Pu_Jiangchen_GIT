<?php
	require_once('admin/includes/init.php');
	
	if(isset($_GET['id'])) {
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getSingle = getSingle($tbl, $col, $id);
	}
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>
<?php

	if(!is_string($getSingle)){
		$row = mysqli_fetch_array($getSingle);
			echo "<img src=\"images/{$row['movies_thumb']}\" alt=\"{$row['movies_title']}\">
				 <h2>{$row['movies_title']}</h2>
				 <p>{$row['movies_year']}</p><br>
				 <p>{$row['movies_storyline']}</p><br>
				 <a href=\"index.php\">Back...</a><br><br>";
		
	}else{
		echo "<p>{$getSingle}</p>";	
	}

?>
</body>
</html>