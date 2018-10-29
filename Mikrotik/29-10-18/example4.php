<?php
// Get ips libres


require('routeros_api.class.php');




$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	$API->write('/ip/address/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	
	foreach($ARRAY4 as $v) {
		if(substr($v, 0, 9)=='=comment='){
			if(substr($v, -5)=='LIBRE'){
				$impr=true;
			}else{
				$impr=false;
			}
		}
		if($v == '!re'){
			if($impr){
				echo $mostrar.'<br>';
				$impr=false;
			}
			$mostrar=$v.'<br>';
		}else{
			$mostrar=$mostrar.$v.'<br>';
		}	
	}
	
	//echo '<br>'.gettype($ARRAY4);
	$API->disconnect();
}

?>
