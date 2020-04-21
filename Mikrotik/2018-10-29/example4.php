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
				//echo $mostrar.'<br>';
				$impr=false;
				$cont++;
			}
			$mostrar=$v.'<br>';
		}else{
			$mostrar=$mostrar.$v.'<br>';
		}	
	}
	$API->disconnect();
	
	
	$data = json_encode(array(
        'id'=>$ARRAY4[0],
        'address'=>$ARRAY4[1],
        'network'=>$ARRAY4[2],
        'interface'=>$ARRAY4[3],
        'actual-interface'=>$ARRAY4[4],
        'invalid'=>$ARRAY4[5],
        'dynamic'=>$ARRAY4[6],
        'disabled'=>$ARRAY4[7],
        'comment'=>$ARRAY4[8]));
		
	//echo '<br>'.gettype($ARRAY4);
	echo '<br><br>Cantidad de IPs: '.$cont;
	echo '<br><br>'.$data;
}

?>
