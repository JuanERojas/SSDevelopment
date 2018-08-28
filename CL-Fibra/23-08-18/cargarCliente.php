<?php
/*
    $servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "root";
    $password = "s553355S@";
*/
	$servername = "localhost";
    $database = "SS-DBFO"; 
    $username = "root";
    $password = "";
	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
    $codCliente = $_POST['codCliente'].'';
    $codNap = $_POST['codNap'].'';
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO cliente (idcliente, codcliente, codnap, time) VALUES (NULL, :codCliente, :codNap, CURRENT_TIMESTAMP)");
	
	$my_Insert_Statement->bindParam(':codCliente', $codCliente);
	$my_Insert_Statement->bindParam(':codNap', $codNap);
	
	try { 
		if ($my_Insert_Statement->execute()) {
			echo "Nuevo registro creado";
			echo "<br>";
		}
	} catch (PDOException $error) {
		echo "Error al insertar" . $error->getMessage();
		echo "<br>";
	}
?>