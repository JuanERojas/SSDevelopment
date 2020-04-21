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
	
    $codCliente = $_POST['codCliente'].'';
    $codTicket = $_POST['codTicket'].'';
    $codTecnico = $_POST['codTecnico'].'';
	//tecnico
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO `ticket`(`idticket`, `numticket`, `numcliente`, `estado`, `fecha`) VALUES (NULL, :codTicket, :codCliente, 'Pendiente', :tiempo)");
	
	//$tiempo = date("Y-m-d H:i:s");
	$timezone  = -3; //(GMT -3:00) 
	$tiempo = gmdate("Y/m/j", time() + 3600*($timezone));
	
	
	$my_Insert_Statement->bindParam(':codCliente', $codCliente);
	$my_Insert_Statement->bindParam(':codTicket', $codTicket);
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