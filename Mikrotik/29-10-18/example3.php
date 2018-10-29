<?php
// Get ips libres


require('routeros_api.class.php');




$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
/*
   $API->write('/ping');
   
    $this->write('/ping', false);
    $this->write('=address=8.8.8.8', false);
    $this->write('=count=3', false);

	

   $READ = $API->read(false);
   $ARRAY = $API->parseResponse($READ);

   print_r($ARRAY);

   $API->disconnect();
*/	   
	
	
	
	$API->write('/interface/wireless/registration-table/print',false);
	$API->write('=stats=');
	$ARRAY4 = $API->read(false);
	echo "<pre>". print_r($ARRAY4) ." </pre>";
	$API->disconnect();

}

?>
