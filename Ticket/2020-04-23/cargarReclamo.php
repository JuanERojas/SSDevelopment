<?php	
	

// -------------------------------------------------------------------------- GET NOMBRE PANEL	

	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
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
	$ipAntena = $nombrePanel;
	$ip1 = strstr($nombrePanel, '.',true);
	$nombre="ERROR";

	// $nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	// $ip2 = strstr($nombrePanel, '.',true);
	// $nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	// $ip3 = strstr($nombrePanel, '.',true);
	
	// $ip = $ip1.".".$ip2.".".$ip3.".254";
	
	// $sql = "SELECT nombre FROM panel WHERE ip LIKE '".$ip."';";
	// $result = $conn->query($sql);
	// if ($result->num_rows > 0) {
	// 	while($row = $result->fetch_assoc()) {
	// 		$nombre= $row["nombre"];
	// 	}
	// }
	// if conexion diferente-------------------------------------------------------
	if($ip1!="172"){
		$nombre="P2P";
	}
/*	
	31.152.0/22
	31.156.0/22
	31.160.0/22
*/	

	// if FO -> buscar por mascara
    if($nombre != 'P2P'){
	
		define('FIRST_OCTET', 0);
		define('SECOND_OCTET', 1);
		define('THIRD_OCTET', 2);
		define('FOURTH_OCTET', 3);
		$fin = false;

        $sql = "SELECT nombre, ip, mask FROM panel;";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc() AND !$fin) {
                // $mas = substr($row["ipfo"], strrpos($row["ipfo"],"/")+1,2);
                // $mas = $row["ipfo"];

				// $mask = explode("/", $row["ipfo"]);
				$maskk = $row["mask"];
				if($maskk == null || $maskk == ''){
					$maskk = '24';
				}
				

    //            if( ip_pertenece($ipbus, $mask[0], $mask[1]) ){
                if( ip_pertenece($ipbus, $row["ip"], $maskk) ){
                    $nombre = $row["nombre"];
                    $fin = true;
                }
            }
		}
		
	}


	$conn->close();

// ------------------------------------------------------------------------- CARGAR EN BD RECLAMO		
	
	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
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
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO reclamo (idreclamo, tecnico, nodo, problema, numcliente, time,ip) VALUES (NULL, :tecnico, :nombrePanel, :reclamo, :numCliente, :tiempo, :ipCliente)");
	
	$my_Insert_Statement->bindParam(':tecnico', $tecnico);
	$my_Insert_Statement->bindParam(':nombrePanel', $nombre);
	$my_Insert_Statement->bindParam(':reclamo', $reclamo);
	$my_Insert_Statement->bindParam(':numCliente', $numCliente);
	$my_Insert_Statement->bindParam(':ipCliente', $_POST['nombrePanel'].'');
	
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

	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
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





// Metodo comprobar si es de fibra	
function ip_pertenece ($ipcomp, $ipmasc, $rangmasc){

	$pertenece = true;

	$r_addr = $ipmasc;
	$r_mask = $rangmasc;

	$results = array();

	$addr_parts = explode('.', $r_addr);
	$masks = explode(',', $r_mask);

	if(sizeof($addr_parts) < 4){
		die('Direccion de red incorrecta');
	}

	foreach($addr_parts as $part){
		if(!is_numeric($part) || $part < 0 || $part > 255){
			die('Direccion de red incorrecta');
		}
	}

	asort($masks);
	$next_addr = $addr_parts;

	foreach($masks as $mask){
		if(!is_numeric($mask) || $mask < 10 || $mask > 32){
			die("Mascara de red incorrecta: $mask");
		}

		$subnet = array(
			'addr' 		=> '',
			'mask' 		=> '',
			'bit_mask'	=> '',
			'host_min'	=> '',
			'host_max'	=> '',
			'broadcast'	=> '',
			'wildcard'	=> ''
		);

		$subnet['addr'] = implode('.', $next_addr);
		$current_addr = $next_addr;

		$mask_octets = array();
		$wilcard_octets = array();

		$binary_mask = chunk_split(str_pad(str_pad('', $mask, '1', STR_PAD_LEFT), 32, '0', STR_PAD_RIGHT), 8, '.');
		$subnet['bit_mask'] = $binary_mask;

		for($i = 1; $i <= 4; $i++){
			if($mask >= $i * 8){
				$mask_octets[$i - 1] = 255;
				$wilcard_octets[$i - 1] = 0;
			}else{
				$bits_on = substr_count($binary_mask, '1') - (($i - 1) * 8);
				$bits_on = $bits_on < 0 ? 0 : $bits_on;
				$mask_octets[$i - 1] = bindec(str_pad(str_pad('', $bits_on, '1', STR_PAD_LEFT), 8, '0', STR_PAD_RIGHT));
				$wilcard_octets[$i - 1] = 255 - $mask_octets[$i - 1];

				$bits_off = 8 - $bits_on;
				$max_octet_value = bindec(str_pad('', $bits_off, '1', STR_PAD_LEFT));
				$next_addr[$i - 1] += $max_octet_value;
			}
		}

		$current_addr[FOURTH_OCTET] += 1;

		$subnet['host_min'] = implode('.', $current_addr);

		$current_addr = $next_addr;
		$current_addr[FOURTH_OCTET] -= 1;

		$subnet['host_max'] = implode('.', $current_addr);

		
		$ipb = ip2long($ipcomp);
		$ipinf = ip2long($subnet['host_min']);
		$ipsup = ip2long($subnet['host_max']);
		
		echo $ipcomp."<br>";

		echo $subnet['host_min']."-".$subnet['host_max']."<br>";

		if(($ipb < $ipinf)){
			$pertenece = false;
		}
		if(($ipb > $ipsup)){
			$pertenece = false;
		}


		return $pertenece;
	}
}



?>