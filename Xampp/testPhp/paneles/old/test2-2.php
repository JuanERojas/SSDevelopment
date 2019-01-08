<?php
$servername = "localhost";
$database = "SS-DB";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}
 
echo "Connected successfully";
 
$sql = "INSERT INTO panel (idpanel, nombre, ip, marca, frecuencia, clientes) VALUE (NULL,'FMF2','172.16.33.2','Cambium',5485,13)";

if (mysqli_query($conn, $sql)) {
      echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>