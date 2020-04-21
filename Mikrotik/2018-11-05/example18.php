<?php
// REMOVE regla


require('routeros_api.class.php');


echo 'REMOVE Reglas<br>';

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


// Variables 
$commentRemv='NAT 1:1 TEST(0000)'; //Usado en find
$commentLibre='LIBRE';
$ipInterna='172.16.111.51';




$API = new RouterosAPI();
$API->debug = true;
echo '<br><br><br>';
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
		
	// find id cliente NAT 1
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
	//var_dump($ipfn);
	echo '<br>'.$ipfn[0]['.id'].'<br>';
	echo '<br><br><br>';
	
	// REMOVE regla NAT 1
	$API->comm("/ip/firewall/nat/remove",
        array(
            ".id" => $ipfn[0][".id"],
            )
        );
	echo '<br><br><br>';
	
	// find id cliente NAT 2
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
	//var_dump($ipfn);
	echo '<br>'.$ipfn[0]['.id'].'<br>';
	echo '<br><br><br>';

	
	// REMOVE regla NAT 2
	$API->comm("/ip/firewall/nat/remove",
        array(
            ".id" => $ipfn[0][".id"],
            )
        );
	echo '<br><br><br>';
		
	
	// find id cliente para SET
	$ipfn=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
	//var_dump($ipfn);
	echo '<br>'.$ipfn[0]['.id'].'<br>';
	echo '<br><br><br>';
		
	// SET regla ip-address como LIBRE
	$API->comm("/ip/address/set",
		  array(
			   ".id" => $ipfn[0]['.id'], // ID IP cliente en ip-address
			   'comment'  => $commentLibre,
			   )
		  );
	echo '<br><br><br>';


	$API->disconnect();
	echo '<br><br><br>';
}


?>
