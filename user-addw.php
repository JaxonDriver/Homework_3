<html>

<head>

	<title>Add User</title>
	
</head>

<body>

	<h1>Add User</h1>
	
	<form method='post' action='user-addw.php'>
		<pre>
			Username: <input type='text' name='username'>
			Forename: <input type='text' name='forename'>
			Surname: <input type='text' name='surname'>
			Password: <input type='text' name='password'><br><br>
			<input type='submit' value='Add Record'>
		</pre>
	</form>
	
	<form method = 'post' action = 'user-listw.php'>
		<pre>
		<form method = 'post' action = 'user-listw.php'>
		<input type = 'submit' value = 'Back to User List'>
		</form>
		</pre>
	</form>
	
	<?php
	
	require_once 'loginw.php';
	
	$conn = new mysqli($hn, $un, $pw, $db);
	if($conn->connect_error) die($conn->connect_error);
	
	if(isset($_POST['username'])) {
		$username = $_POST['username'];
		$forename = $_POST['forename'];
		$surname = $_POST['surname'];
		$password = $_POST['password'];
		
		$query = "INSERT INTO Users (username, forname, surname, password) VALUES ('$username', '$forname', '$surname', '$password')";
		
		$result = $conn->query($query);
		if(!$result) die($conn->error);
		
		header("Location: user-listw.php");
	}
	?>
</body>

</html>