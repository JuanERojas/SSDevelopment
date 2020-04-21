<?php
// Get all ips NAT

//header('Content-Type: text/plain');
require('routeros_api.class.php');


echo 'GET all IPs NAT<br>';


//$ipRouteros="10.11.11.1";  	// tu RouterOS.
//$Username="ro.api";			// Usuario
//$Pass="Roapi2018"; 			// Pass
//$api_puerto=8728; 			// Port

$ipRouteros="10.20.22.254";  	// tu RouterOS.
$Username="admin";				// Usuario
$Pass=""; 						// Pass
$api_puerto=8729; 				// Port

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
