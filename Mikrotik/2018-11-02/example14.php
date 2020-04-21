<?php
// Get ips libres

//header('Content-Type: text/plain');
require('routeros_api.class.php');

echo 'GET IPs Libres ip-address<br>';



$ipRouteros="10.20.22.254";  	// tu RouterOS.
$Username="admin";				// Usuario
$Pass=""; 						// Pass
$api_puerto=8729; 				// Port



$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	$API->write('/ip/address/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	$cont=0;
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
				//echo '<br>'.$json['address']; 	// Ver IP de con /32
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
	$API->disconnect();
	echo '<br><br>Cantidad de IPs: '.$cont.'<br>';
	
	foreach($libres as $l) {
		echo '{<br>';
		echo ".  .".$l['.id'].'<br>';
		echo ".  .".$l['address'].'<br>';
		echo "network==".$l['network'].'<br>';
		echo ".  .".$l['interface'].'<br>';
		echo ".  .".$l['actual-interface'].'<br>';
		echo ".  .".$l['invalid'].'<br>';
		echo ".  .".$l['dynamic'].'<br>';
		echo ".  .".$l['disabled'].'<br>';
		echo ".  .".$l['comment'].'<br>';
		echo '}<br>';
	}
	
	/*
	=.id=*EF6
	=address=138.118.215.127/32
	=network=138.118.215.127
	=interface=loopback-dedicado
	=actual-interface=loopback-dedicado
	=invalid=false
	=dynamic=false
	=disabled=false
	=comment=LIBRE
	*/
}

?>
