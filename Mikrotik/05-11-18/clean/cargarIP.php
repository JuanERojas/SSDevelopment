<?php
// Cargar IPs

$cl = $_POST['cl'].'';
$nom = $_POST['nombre'].'';
$ip = $_POST['ip'].'';


require('routeros_api.class.php');

// Vatiables de acceso
//$ipRouteros="10.11.11.1";  	// tu RouterOS.
//$Username="ro.api";			// Usuario
//$Pass="Roapi2018"; 			// Pass
//$api_puerto=8728; 			// Port

$ipRouteros="10.20.22.254";  	// tu RouterOS.
$Username="admin";				// Usuario
$Pass=""; 						// Pass
$api_puerto=8729; 				// Port



// Variables a cargar
$commentAdd='NAT 1:1 '.strtoupper($nom).'('.$cl.')';
$ipInterna=$ip;
$ipPublica='';
$interface= 'ether1';
//$interface= 'LACP-BGP';


// Variables del sistema
$addressfind= $ipPublica.'/32';
$corefind='WBCORE'; // Place-before


$API = new RouterosAPI();
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	//first match IP LIBRE
	$API->write('/ip/address/print',true);
	$ARRAY4 = $API->read(false);
	$impr=false;
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
	$ipPublica=$libres[0]['network'];
	$addressfind= $ipPublica.'/32';
	
	
	// find ip libre
	$iplib=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?address" => $addressfind, //IP LIBRE
                ));
	
	// find ip wbcore
	$core=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $corefind, // CORE
                )); 
	
	// ADD regla src-nat
	$API->comm("/ip/firewall/nat/add", array(
        "action"     => 'src-nat',
        "chain" => 'srcnat',
        "comment"  => $commentAdd,
        "out-interface" => $interface,
        "src-address"  => $ipInterna,
        "to-addresses"  => $ipPublica,
		"place-before"  => $core[0]['.id'], // ID WCORE
	));
	
	// ADD regla dst-nat
	$API->comm("/ip/firewall/nat/add", array(
        "action"     => 'dst-nat',
        "chain" => 'dstnat',
        "comment"  => $commentAdd,
        "dst-address"  => $ipPublica,
        "in-interface" => $interface,
        "to-addresses"  => $ipInterna,
		"place-before"  => $core[0]['.id'], // ID WCORE
	));

	// SET regla ip-address
	$API->comm("/ip/address/set",
		  array(
			   ".id" => $iplib[0]['.id'], // ID IP LIBRE
			   'comment'  => $commentAdd,
			   )
		  );

	$API->disconnect();
}


?>