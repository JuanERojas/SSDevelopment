<?php
$servername = "mysql.hostinger.com";
$database = "u266072517_name"; 
$username = "u266072517_user";
$password = "buystuffpwd";

$sql = "mysql:host=$servername;dbname=$database;";
$dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];

// Create a new connection to the MySQL database using PDO, $my_Db_Connection is an object
try { 
  $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
  echo "Connected successfully";
} catch (PDOException $error) {
  echo 'Connection error: ' . $error->getMessage();
}

$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO panel (idpanel, nombre, ip, marca, frecuencia, clientes) VALUES (NULL, :nombre, :ip, :marca, :frecuencia, :clientes)");


$nombre = "AA1";
$ip = "172.13.12.2";
$marca = "Nano";
$frecuencia = 5560;
$clientes = 14;

$my_Insert_Statement->bindParam(:nombre, $nombre);
$my_Insert_Statement->bindParam(:ip, $ip);
$my_Insert_Statement->bindParam(:marca, $marca);
$my_Insert_Statement->bindParam(:frecuencia, $frecuencia);
$my_Insert_Statement->bindParam(:clientes, $clientes);

if ($my_Insert_Statement->execute()) {
  echo "New record created successfully";
} else {
  echo "Unable to create record";
}

$nombre = "AA2";
$ip = "172.13.12.3";
$marca = "Nano";
$frecuencia = 5560;
$clientes = 15;

$my_Insert_Statement->execute();
if ($my_Insert_Statement->execute()) {
  echo "New record created successfully";
} else {
  echo "Unable to create record";
}