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
	
	//$API->write('/ip/address/print',true);
	$API->write('/ip/firewall/nat/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	foreach($ARRAY4 as $v) {
		/*
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
			if($impr){
				echo $mostrar.'<br>';
			//	echo '<br>'.$json['address'];
				$impr=false;
				$cont++;
			}
			$mostrar=$v.'<br>';
		}else{
			$mostrar=$mostrar.$v.'<br>';
			//$json[$key] = $value;
			//$json = '{"'.$key.'":"'.$value.'"}';
		}
		*/
		echo $v.'<br>';
	}
	$API->disconnect();
	
	//substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1);
	//strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '=')
	//substr(strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '='), 1, strlen(strstr(substr($ARRAY4[0], 1, strlen($ARRAY4[0])-1), '='))-1)
	//substr(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='), 1, strlen(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='))-1),

/*	
	$json = '{
        "'.strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='), 1, strlen(strstr(substr($ARRAY4[1], 1, strlen($ARRAY4[1])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[2], 1, strlen($ARRAY4[2])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[2], 1, strlen($ARRAY4[2])-1), '='), 1, strlen(strstr(substr($ARRAY4[2], 1, strlen($ARRAY4[2])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[3], 1, strlen($ARRAY4[3])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[3], 1, strlen($ARRAY4[3])-1), '='), 1, strlen(strstr(substr($ARRAY4[3], 1, strlen($ARRAY4[3])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[4], 1, strlen($ARRAY4[4])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[4], 1, strlen($ARRAY4[4])-1), '='), 1, strlen(strstr(substr($ARRAY4[4], 1, strlen($ARRAY4[4])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[5], 1, strlen($ARRAY4[5])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[5], 1, strlen($ARRAY4[5])-1), '='), 1, strlen(strstr(substr($ARRAY4[5], 1, strlen($ARRAY4[5])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[6], 1, strlen($ARRAY4[6])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[6], 1, strlen($ARRAY4[6])-1), '='), 1, strlen(strstr(substr($ARRAY4[6], 1, strlen($ARRAY4[6])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[7], 1, strlen($ARRAY4[7])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[7], 1, strlen($ARRAY4[7])-1), '='), 1, strlen(strstr(substr($ARRAY4[7], 1, strlen($ARRAY4[7])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[8], 1, strlen($ARRAY4[8])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[8], 1, strlen($ARRAY4[8])-1), '='), 1, strlen(strstr(substr($ARRAY4[8], 1, strlen($ARRAY4[8])-1), '='))-1).'",
        "'.strstr(substr($ARRAY4[9], 1, strlen($ARRAY4[9])-1), '=',true).'":"'.substr(strstr(substr($ARRAY4[9], 1, strlen($ARRAY4[9])-1), '='), 1, strlen(strstr(substr($ARRAY4[9], 1, strlen($ARRAY4[9])-1), '='))-1).'"}';
*/	
	
	//$json='{"id":"123","address":"abc"}';
//	$json = json_decode($json, true);
		
	//echo '<br>'.gettype($ARRAY4);
	echo '<br><br>Cantidad de IPs: '.$cont;
//	echo '<br><br>'.$json['address'];
//	echo '<br>'.strstr(substr($ARRAY4[2], 1, strlen($ARRAY4[2])-1), '=',true);
}

?>
