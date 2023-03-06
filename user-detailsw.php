<html>

<head>

	<title>User List</title>
	
</head>

<body>

	<h1>User Details</h1>
	
<?php

require_once 'loginw.php';

//Connect to DB
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

$query = "Select * from Users where username = 'Louis_Vuitton_Don1'";
$result = $conn->query($query);
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++) {
	$row = $result->fetch_array(MYSQLI_ASSOC);
	
	echo <<<_END
	
	<h1>$row[forename] $row[surname]</h1>
	Username: $row[username]<br>
	First Name: $row[forename]<br>
	Surname: $row[surname]<br>
	Password: $row[password]<br>
	_END;
	
}

$result->close();
$conn->close();

?>

<br>

<a href="user-listw.php"><button>Back to User List</button></a>

</body>

</html>