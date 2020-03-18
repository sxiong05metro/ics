<?php
session_start();
$user = "root"; 
$password = "pass"; 
$host = "localhost"; 

$connection = mysqli_connect ($host, $user, $password);
if (!$connection) {
	die ('Could not connect:' . mysql_error());
}

$result = mysqli_query($connection, "SHOW TABLES FROM rechord");
?>

<select name="tableSelect" id="tableSelect">
<?php
while($table = mysqli_fetch_array($result)) {
	echo "<option value='" . $table[0] . "'>" . $table[0] . "</option>";
}
?>
</select>

<?php
if(isset($_POST['tableSelect'])) {
	$_SESSION['tableSelected'] = $_POST['tableSelect'];
}
?>

<input type="submit" name="submit" value="Browse" method="post" onclick="location='listItems.php'" />