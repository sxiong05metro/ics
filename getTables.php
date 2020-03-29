<!DOCTYPE HTML>

<html>
  <script
		src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous">
	</script>
  <script> 
    $(function(){
      $("#header").load("header.html"); 
      $("#footer").load("footer.html"); 
    });
  </script>

  <link rel="stylesheet" type="text/css" href="style.css"/>

  <head>
    <title>ReChord</title>
  </head>

  <div id="header"></div>

    <body>
		<p>this page will load a list of all tables in the database once we have the DB working. selecting a table then clicking browse will return the entire table from the DB as an array</p>
    </body>

  <div id="footer"></div>

</html>

<?php
session_start();
$user = "root";
$password = "pass";
$host = "localhost";

$connection = mysqli_connect ($host, $user, $password);
if (!$connection) {
	die ('Could not connect:' . mysql_error());
}

$result = mysqli_query($connection, "SHOW TABLES FROM ics325sp200108");
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