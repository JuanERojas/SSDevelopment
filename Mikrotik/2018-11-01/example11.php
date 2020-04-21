<?php
// Test find para get id


require('routeros_api.class.php');




$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port


$API = new RouterosAPI();
//$API->debug = true;
//$user = '138.118.213.177/32';
//$user = 'LIBRE';


if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	$arrID=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?address" => '138.118.213.177/32',
                ));
				
	var_dump($arrID);
	echo '<br>'.$arrID[0]['.id'].'<br>';
	
	$arrID=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => 'wbcore',
                ));
				
	var_dump($arrID);
	echo '<br>'.$arrID[0]['.id'];
	
	$API->disconnect();
}




?>
