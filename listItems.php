<html>
<p>this page will load a list of all entries in the preciously selected table once we have it working</p>
</html>
<?php

session_start();
$tableName = $_SESSION["tableSelect"];

$servername = "localhost";
$username = "root";
$password = "pass";
$dbname = "rechord";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM song";
//$sql = "SELECT * FROM song";
$result = $conn->query($sql);

$data = array();
while($row = $result->fetch_assoc()) {
    $data[] = $row;
}
    print_r(array_values($data));
	
    $conn->close();
?>