<?php
// SET nueva regla


require('routeros_api.class.php');



// Vatiables de acceso
$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";			// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 			// Port

// Variables a cargar
$commentAdd='"NAT 1:1 ARO ALVARO ANTONIO (582)"';
$ipInterna='172.16.130.151';
$ipPublica='138.118.213.177';
$interface= 'LACP-BGP';

// Variables del sistema
$addressfind= $ipPublica.'/32';
$corefind='wbcore';


$API = new RouterosAPI();
//$API->debug = true;
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	// find ip libre
	$iplib=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?address" => $addressfind, //IP LIBRE
                ))
	//var_dump($iplib);
	//echo '<br>'.$iplib[0]['.id'].'<br>';
	
	// find ip wbcore
	$core=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $corefind, // CORE
                )); 
				
	//var_dump($core);
	//echo '<br>'.$core[0]['.id'].'<br>';
	
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
