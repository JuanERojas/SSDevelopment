<?php
// Get ips libres
if( strlen($_POST['b1'].'') != 0 ) { 
	$opc='comment';
	$bus = $_POST['b1'].'';
}
if( strlen($_POST['b2'].'') != 0 ) { 
	$opc='src-address';
	$bus = $_POST['b2'].'';
}
if( strlen($_POST['b3'].'') != 0 ) { 
	$opc='dst-address';
	$bus = $_POST['b3'].'';
}


//header('Content-Type: text/plain');
require('routeros_api.class.php');

if(!(strlen(strstr(strtolower($nombre), strtolower($busNom.''))) > 0)){
						$mostrar=false;
					}


$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	//$API->write('/ip/address/print',true);
	$API->write('/ip/firewall/nat/print',true);
	//(write('/where',false);
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
		if($key==$opc){
			//if($value=='LIBRE'){
				//echo strtolower($value).'--'.strtolower($bus.'').'<br>';
			if(strlen(strstr(strtolower($value), strtolower($bus.''))) > 0){
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
	$API->disconnect();
	echo '<br>Cantidad de IPs: '.$cont.'<br><br>';
/*	
	foreach($libres as $l) {
		echo '{<br>';
		echo ".  .".$l['.id'].'<br>';
		echo ".  .".$l['address'].'<br>';
		echo ".  .".$l['network'].'<br>';
		echo ".  .".$l['interface'].'<br>';
		echo ".  .".$l['actual-interface'].'<br>';
		echo ".  .".$l['invalid'].'<br>';
		echo ".  .".$l['dynamic'].'<br>';
		echo ".  .".$l['disabled'].'<br>';
		echo ".  .".$l['comment'].'<br>';
		echo '}<br>';
	}
*/
	foreach($libres as $l) {
		echo '{<br>';
	//	echo "id==".$l['.id'].'<br>';
		echo "chain==".$l['chain'].'<br>';
	//	echo "action==".$l['action'].'<br>';
	//	echo "protocol==".$l['protocol'].'<br>';
		echo "src-address==".$l['src-address'].'<br>';
	//	echo "log==".$l['log'].'<br>';
	//	echo "log-prefix==".$l['log-prefix'].'<br>';
	//	echo "bytes==".$l['bytes'].'<br>';
	//	echo "packets==".$l['packets'].'<br>';
	//	echo "invalid==".$l['invalid'].'<br>';
	//	echo "dynamic==".$l['dynamic'].'<br>';
	//	echo "disabled==".$l['disabled'].'<br>';
		echo "comment==".$l['comment'].'<br>';
	//	echo "to-addresses==".$l['to-addresses'].'<br>';
	//	echo "out-interface==".$l['out-interface'].'<br>';
		echo "dst-address==".$l['dst-address'].'<br>';
	//	echo "dst-port==".$l['dst-port'].'<br>';
		echo '}<br>';
	}
}

?>
