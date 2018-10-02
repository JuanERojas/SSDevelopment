<?php	
	

// ------------------------------------------------------------------------- GET NOMBRE PANEL	

	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
/*	
	$servername = "localhost";
    $database = "SS-DB"; 
    $username = "root";
    $password = "";
*/	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	
    $nombrePanel = $_POST['nombrePanel'].'';
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ip = $ip1.".".$ip2.".".$ip3.".254";
	$nombre="ERROR";
	
	$sql = "SELECT nombre FROM panel WHERE ip LIKE '".$ip."';";
	$result = $conn->query($sql);
	$conn->close();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$nombre= $row["nombre"];
		}
	}
	// if ES DE FIBRA-------------------------------------------------------
/*	if($ip2.".".$ip3=="31.152"){
		$nombre="FO";
	}
	if($ip2.".".$ip3=="31.156"){
		$nombre="FO";
	}
	if($ip2.".".$ip3=="31.160"){
		$nombre="FO";
	}
	
	31.152.0/22
	31.156.0/22
	31.160.0/22
*/	
// ------------------------------------------------------------------------- CARGAR EN BD RECLAMO		
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
/*	
	$servername = "localhost";
    $database = "SS-DB"; 
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
    $reclamo = $_POST['reclamo'].'';
    $numCliente = $_POST['numCliente'].'';
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO reclamo (idreclamo, tecnico, nodo, problema, numcliente, time) VALUES (NULL, :tecnico, :nombrePanel, :reclamo, :numCliente, :tiempo)");
	
	$my_Insert_Statement->bindParam(':tecnico', $tecnico);
	$my_Insert_Statement->bindParam(':nombrePanel', $nombre);
	$my_Insert_Statement->bindParam(':reclamo', $reclamo);
	$my_Insert_Statement->bindParam(':numCliente', $numCliente);
	
	
	//$tiempo = date("Y-m-d H:i:s");
	$timezone  = -3; //(GMT -3:00) 
	$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
	$my_Insert_Statement->bindParam(':tiempo', $tiempo);
	
	
	try { 
		if ($my_Insert_Statement->execute()) {
			//echo "Nuevo registro creado";
			//echo "<br>";
		}
	} catch (PDOException $error) {
		echo "Error al insertar" . $error->getMessage();
		echo "<br>";
	}
// ------------------------------------------------------------------------- ENVIAR UDP	
// ----------------------------------------- GET idReclamo		

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
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	
	$sql = "SELECT idreclamo FROM reclamo r ORDER BY idreclamo DESC LIMIT 1;";
	$result = $conn->query($sql);
	$conn->close();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$idreclamo= $row["idreclamo"];
		}
	}
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT * FROM tecnico t WHERE idtecnico = ".$tecnico.";";
	$result2 = $conn->query($sql);
	$conn->close();
	if ($result2->num_rows > 0) {
		while($row = $result2->fetch_assoc()) {
			$tecnico= $row["nombre"];
			//echo $tecnico;
		}
	}
	//echo $tecnico."-----";

// ----------------------------------------- GUARDAR UDP	
	
	$server_ip   = '172.16.2.131';
	$server_port = 5529;
	$message     = $idreclamo.';'.$tecnico.';'.$nombre.';'.$reclamo.';'.$numCliente;
	$socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
	
	if ($socket) {
		socket_sendto($socket, $message, strlen($message), 0, $server_ip, $server_port);
		echo "ENVIADO";
	} else {
		echo "No se pudo enviar el UDP";
	}
?>