<?php
// Cargar IPs

$cm = $_POST['cm'].'';
$ip = $_POST['ip'].'';
$old = $_POST['old'].'';


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
//$interface= 'LACP-BGP';
$interface= 'ether1';


// Variables 
$commentRemv=$old; //Usado en find
$commentMod=$cm;
$ipInterna=$ip;

$API = new RouterosAPI();
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	// find id cliente NAT 1
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
	
	// SET regla NAT 1
	$API->comm("/ip/firewall/nat/set",
        array(
            ".id" => $ipfn[0][".id"],
			'comment'  => $commentMod,
			'src-address'  => $ipInterna,
            )
        );
	
	// find id cliente NAT 2
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));

	
	// REMOVE regla NAT 2
	$API->comm("/ip/firewall/nat/set",
        array(
            ".id" => $ipfn[0][".id"],
			'comment'  => $commentMod,
			'to-addresses'  => $ipInterna,
            )
        );
		
	
	// find id cliente para SET
	$ipfn=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
		
	// SET regla ip-address
	$API->comm("/ip/address/set",
		  array(
			   ".id" => $ipfn[0]['.id'], // ID IP cliente en ip-address
			   'comment'  => $commentMod,
			   )
		  );


	$API->disconnect();
}


?>