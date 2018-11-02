<?php
// Get ips ip-address Formated

//header('Content-Type: text/plain');
require('routeros_api.class.php');


echo 'GET all IPs ip-address Formated<br>';


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
		//	if($value=='LIBRE'){
				$impr=true;
		//	}else{
		//		$impr=false;
		//	}
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
	$API->disconnect();
	echo '<br><br>Cantidad de IPs: '.$cont.'<br>';
	
	foreach($libres as $l) {
		echo '{<br>';
		echo ".id==".$l['.id'].'<br>';
		echo "address==".$l['address'].'<br>';
		echo "network==".$l['network'].'<br>';
		echo "interface==".$l['interface'].'<br>';
		echo "actual-interface==".$l['actual-interface'].'<br>';
		echo "invalid==".$l['invalid'].'<br>';
		echo "dynamic==".$l['dynamic'].'<br>';
		echo "disabled==".$l['disabled'].'<br>';
		echo "comment==".$l['comment'].'<br>';
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
