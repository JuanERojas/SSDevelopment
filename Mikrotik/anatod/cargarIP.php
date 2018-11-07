<?php

// ---------------------------------------------------------------------- VERIFICAR IPv4
function ip_is_private ($ip) {
    $pri_addrs = array (
                      '10.0.0.0|10.255.255.255', // single class A network
                      '172.16.0.0|172.31.255.255', // 16 contiguous class B network
                      '192.168.0.0|192.168.255.255', // 256 contiguous class C network
                      '169.254.0.0|169.254.255.255', // Link-local address also refered to as Automatic Private IP Addressing
                      '127.0.0.0|127.255.255.255' // localhost
                     );

    $long_ip = ip2long ($ip);
    if ($long_ip != -1) {

        foreach ($pri_addrs AS $pri_addr) {
            list ($start, $end) = explode('|', $pri_addr);

             // IF IS PRIVATE
             if ($long_ip >= ip2long ($start) && $long_ip <= ip2long ($end)) {
                 return true;
             }
        }
    }

    return false;
}

// ---------------------------------------------------------------------- INSERT log BD
function guardar_log ($cm, $ipI, $ipP) {
	$servername = "db.sslocal";
    $database = "SS-MK"; 
    $username = "usermk";
    $password = "";
	
	$sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      //echo "Conexion realizada";
    } catch (PDOException $error) {
      //echo 'Error al conectar: ' . $error->getMessage();
    }
	//echo "<br>";
		
	
    $tipo = 'Alta Nueva IP';
    $comment = $cm;
    $ipInterna = $ipI;
    $ipPublica = $ipP;
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO `log` (idlog, tipo, `comment`, ipInterna, ipPublica, `time`) VALUES (NULL, :tipo, :comment, :ipInterna, :ipPublica, :tiempo)");
	
	$my_Insert_Statement->bindParam(':tipo', $tipo);
	$my_Insert_Statement->bindParam(':comment', $comment);
	$my_Insert_Statement->bindParam(':ipInterna', $ipInterna);
	$my_Insert_Statement->bindParam(':ipPublica', $ipPublica);
	
	
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
		//echo "Error al insertar" . $error->getMessage();
		//echo "<br>";
	}
}

// Cargar IPs
$cl = $_POST['cl'].'';
$nom = $_POST['nombre'].'';
$ip = $_POST['ip'].'';



require('routeros_api.class.php');

if ($archivo = fopen('cred.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
fclose($archivo);
$credenciales = explode(';', $msj);
$ipRouteros=$credenciales[0];  		// tu RouterOS.
$Username=$credenciales[1];			// Usuario
$Pass=$credenciales[2]; 			// Pass
$api_puerto=$credenciales[3]; 		// Port



// Variables a cargar
$commentAdd='NAT 1:1 '.strtoupper($nom).' ('.$cl.')';
$ipInterna=$ip;
$ipPublica='';
$interface= 'ether1';	// Interfaz de prueba
//$interface= 'LACP-BGP';


// Variables del sistema
$addressfind= $ipPublica.'/32';
$corefind='WBCORE'; // Place-before

$cargar=true;
$API = new RouterosAPI();
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	// Comprobaciones
	$API->write('/ip/firewall/nat/print',true);
	$ARRAY4 = $API->read(false);
	foreach($ARRAY4 as $v) { // Comprobar si esta duplicado
		$key=strstr(substr($v.'', 1, strlen($v.'')-1), '=',true);
		$value=substr(strstr(substr($v.'', 1, strlen($v.'')-1), '='), 1, strlen(strstr(substr($v.'', 1, strlen($v.'')-1), '='))-1);
		if($key=='src-address'){
			if($value==$ip){
				$cargar=false;
			}
		}
	}
	if($cargar){
		$cargar=ip_is_private($ip);
	}
	if($cargar){ // Paso la prueba
		//first match IP LIBRE
		$API->write('/ip/address/print',true);
		$ARRAY4 = $API->read(false);
		$impr=false;
		$json = '{}';
		$json = json_decode($data,true);
		$libres=array();
		
		foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
			$key=strstr(substr($v.'', 1, strlen($v.'')-1), '=',true);
			$value=substr(strstr(substr($v.'', 1, strlen($v.'')-1), '='), 1, strlen(strstr(substr($v.'', 1, strlen($v.'')-1), '='))-1);
			if($key=='comment'){
				if($value=='LIBRE'){
					$impr=true;
				}else{
					$impr=false;
				}
			}
			if($v == '!re'){
				if($impr){ // Registro Completado
					array_push($libres,$json);		// Cargar JSON a Array
					$impr=false;
					$cont++;
				}
			}else{
				$json[$key] = $value;				// Agregar al JSON
			}	
		}
		// Comprobacion Final
		if($impr){
			array_push($libres,$json);
			$impr=false;
			$cont++;
		}
		$ipPublica=$libres[0]['network'];
		$addressfind= $ipPublica.'/32';
		
		
		// find ip libre
		$iplib=$API->comm("/ip/address/print", 
					 array(
					".proplist"=> ".id",
					"?address" => $addressfind, //IP LIBRE
					));
		
		// find ip wbcore
		$core=$API->comm("/ip/firewall/nat/print", 
					 array(
					".proplist"=> ".id",
					"?comment" => $corefind, // CORE
					)); 
		
		// ADD regla src-nat
		$API->comm("/ip/firewall/nat/add", array(
			"action"     => 'src-nat',
			"chain" => 'srcnat',
			"comment"  => $commentAdd,
			"out-interface" => $interface,
			"src-address"  => $ipInterna,
			"to-addresses"  => $ipPublica,
			"place-before"  => $core[0]['.id'], // ID WCORE
		));
		
		// ADD regla dst-nat
		$API->comm("/ip/firewall/nat/add", array(
			"action"     => 'dst-nat',
			"chain" => 'dstnat',
			"comment"  => $commentAdd,
			"dst-address"  => $ipPublica,
			"in-interface" => $interface,
			"to-addresses"  => $ipInterna,
			"place-before"  => $core[0]['.id'], // ID WCORE
		));

		// SET regla ip-address
		$API->comm("/ip/address/set",
			  array(
				   ".id" => $iplib[0]['.id'], // ID IP LIBRE
				   'comment'  => $commentAdd,
				   )
			  );
		guardar_log($commentAdd, $ipInterna, $ipPublica);
	}
	$API->disconnect();
}
if(!$cargar){
	echo 'Error';
}
?>