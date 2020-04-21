<?php
// Get all ips NAT

//header('Content-Type: text/plain');
require('routeros_api.class.php');

echo 'GET all IPs NAT<br>';

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

$API = new RouterosAPI();
$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	//$API->write('/ip/address/print',true);
	$API->write('/ip/firewall/nat/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	
	$libres=array();
	
	foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
		echo $v.'<br>';
	}
	$API->disconnect();
}

?>
