<?php

	$servername = "localhost";
    $database = "SS-DBCtrlTK"; 
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
	
    $codEstado = $_POST['codEstado'].'';
    $codTicket = $_POST['codTicket'].'';
	
    $my_Insert_Statement = $my_Db_Connection->prepare("UPDATE `ticket` SET `estado` = :codEstado WHERE `numticket` = :codTicket");	
	
	$my_Insert_Statement->bindParam(':codEstado', $codEstado);
	$my_Insert_Statement->bindParam(':codTicket', $codTicket);
	
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