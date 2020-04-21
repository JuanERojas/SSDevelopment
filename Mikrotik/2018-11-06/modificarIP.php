<?php

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
// ---------------------------------------------------------------------- INSERT BD
function guardar_log ($cm, $ipI, $ipP) {
	$servername = "db.sslocal";
    $database = "SS-MK"; 
    $username = "usermk";
    $password = "ReadWriteMk@SS";
	
	$sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      //echo "Conexion realizada";
    } catch (PDOException $error) {
      //echo 'Error al conectar: ' . $error->getMessage();
    }
	//echo "<br>";
		
	
    $tipo = 'Modificacion IP';
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

// Modificar IPs

$cm = $_POST['cm'].'';
$ip = $_POST['ip'].'';
$old = $_POST['old'].'';


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
//$interface= 'LACP-BGP';
$interface= 'ether1';


// Variables 
$commentRemv=$old; //Usado en find
$commentMod=$cm;
$ipInterna=$ip;

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
		// find id cliente NAT 1
		$ipfn=$API->comm("/ip/firewall/nat/print", 
					 array(
					".proplist"=> ".id",
					"?comment" => $commentRemv, //Comment para Remove
					));
		
		// SET regla NAT 1
		$API->comm("/ip/firewall/nat/set",
			array(
				".id" => $ipfn[0][".id"],
				'comment'  => $commentMod,
				'src-address'  => $ipInterna,
				)
			);
		
		// find id cliente NAT 2
		$ipfn=$API->comm("/ip/firewall/nat/print", 
					 array(
					".proplist"=> ".id",
					"?comment" => $commentRemv, //Comment para Remove
					));

		
		// REMOVE regla NAT 2
		$API->comm("/ip/firewall/nat/set",
			array(
				".id" => $ipfn[0][".id"],
				'comment'  => $commentMod,
				'to-addresses'  => $ipInterna,
				)
			);
			
		
		// find id cliente para SET
		$ipfn=$API->comm("/ip/address/print", 
					 array(
					".proplist"=> ".id",
					"?comment" => $commentRemv, //Comment para Remove
					));
			
		// SET regla ip-address
		$API->comm("/ip/address/set",
			  array(
				   ".id" => $ipfn[0]['.id'], // ID IP cliente en ip-address
				   'comment'  => $commentMod,
				   )
			  );
		guardar_log($commentRemv, $ipInterna, $commentMod);
	}
	$API->disconnect();
}
if(!$cargar){
	echo 'Error';
}

?>