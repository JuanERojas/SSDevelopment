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
	$cont=0;
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
				$cont++;
			}
			$mostrar=$v.'<br>';
		}else{
			$mostrar=$mostrar.$v.'<br>';
			
		}	
	}
	$API->disconnect();
	
	//substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1);
	//strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '=')
	//substr(strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '='), 1, strlen(strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '='))-1)
	//substr(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='), 1, strlen(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='))-1),
	/*	
	$json = '{
        "id":"'.substr(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='), 1, strlen(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='))-1).'",
        "address":"'.$ARRAY4[2].'",
        "network":"'.$ARRAY4[3].'",
        "interface":"'.$ARRAY4[4].'",
        "actual-interface":"'.$ARRAY4[5].'",
        "invalid":"'.$ARRAY4[6].'",
        "dynamic":"'.$ARRAY4[7].'",
        "disabled":"'.$ARRAY4[8].'",
        "comment":"'.$ARRAY4[9].'"}';
	
	
	//$json='{"id":"123","address":"abc"}';
	$json = json_decode($json, true);
		
	//echo '<br>'.gettype($ARRAY4);
	echo '<br><br>Cantidad de IPs: '.$cont;
	echo '<br><br>'.$json['id'];
	*/
}

?>
