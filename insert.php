<?php

$item = filter_input(INPUT_POST, 'item');
$name = filter_input(INPUT_POST, 'name');
if (!empty($item)) {
	if (!empty($name)) {
	$host = "localhost";
	$dbusername = "root";
	$dbpassword = "pass";
	$dbname = "rechord";
	$nametext = "Name";

	// Create connection
	$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);

	if (mysqli_connect_error()) {
		die('Connect Error ('. mysqli_connect_errno() .') '
			. mysqli_connect_error());
	}
	else {
		$itemname = $item . $nametext;
		$sql = "INSERT INTO $item ($itemname)
		VALUES ('$name')";
		if ($conn->query($sql)){
			header('Location: itemCreated.html');
			exit;
		}
		else {
			echo "error :".$sql."<br>".$conn->error;
		}
	}
}
else {
	echo "name not empty pls";
	die();
}
	}
	else{echo "item empty, pls change";
	die();
}
?>