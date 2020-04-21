<?php
// SET nueva regla


require('routeros_api.class.php');


echo 'SET Reglas<br>';

// Vatiables de acceso
//$ipRouteros="10.11.11.1";  	// tu RouterOS.
//$Username="ro.api";			// Usuario
//$Pass="Roapi2018"; 			// Pass
//$api_puerto=8728; 			// Port

$ipRouteros="10.20.22.254";  	// tu RouterOS.
$Username="admin";				// Usuario
$Pass=""; 						// Pass
$api_puerto=8729; 				// Port

echo '<br><br><br>';


// Variables a cargar
$commentAdd='NAT 1:1 TEST(0003)';
$ipInterna='172.16.111.53';
//$ipPublica='138.118.213.177';
$ipPublica='';//'10.50.50.5';
//$interface= 'LACP-BGP';
$interface= 'ether1';


// Variables del sistema
$addressfind= $ipPublica.'/32';
$corefind='WBCORE'; // Place-before


$API = new RouterosAPI();
$API->debug = true;
echo '<br><br><br>';
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
	echo "<br>network==".$libres[0]['network'].'<br>';
	$ipPublica=$libres[0]['network'];
	//$ipPublica='10.50.50.5';
	$addressfind= $ipPublica.'/32';
	echo '<br><br><br>';
	
	
	// find ip libre
	$iplib=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?address" => $addressfind, //IP LIBRE
                ));
	//var_dump($iplib);
	echo '<br>'.$iplib[0]['.id'].'<br>';
//	echo '<br><br><br>';
	
	// find ip wbcore
	$core=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $corefind, // CORE
                )); 
	//var_dump($core);
	echo '<br>'.$core[0]['.id'].'<br>';
	echo '<br><br><br>';
	
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
	echo '<br><br><br>';
	
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
	echo '<br><br><br>';

	// SET regla ip-address
	$API->comm("/ip/address/set",
		  array(
			   ".id" => $iplib[0]['.id'], // ID IP LIBRE
			   'comment'  => $commentAdd,
			   )
		  );
	echo '<br><br><br>';

	$API->disconnect();
	echo '<br><br><br>';
}


?>
