<?php
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
/*	
	$servername = "localhost";
    $database = "SS-DBTK"; 
    $username = "root";
    $password = "";
*/	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
    $tecnico = $_POST['tecnico'].'';
    $nombrePanel = $_POST['nombrePanel'].'';
    $reclamo = $_POST['reclamo'].'';
    $numCliente = $_POST['numCliente'].'';
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO reclamo (idreclamo, tecnico, nodo, problema, numcliente, time) VALUES (NULL, :tecnico, :nombrePanel, :reclamo, :numCliente, :tiempo)");
	
	$my_Insert_Statement->bindParam(':tecnico', $tecnico);
	$my_Insert_Statement->bindParam(':nombrePanel', $nombrePanel);
	$my_Insert_Statement->bindParam(':reclamo', $reclamo);
	$my_Insert_Statement->bindParam(':numCliente', $numCliente);
	
	
	//$tiempo = date("Y-m-d H:i:s");
	$timezone  = -3; //(GMT -3:00) 
	$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
	$my_Insert_Statement->bindParam(':tiempo', $tiempo);
	
	
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