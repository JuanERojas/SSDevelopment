<?php
// Get ips libres

//header('Content-Type: text/plain');
require('routeros_api.class.php');




$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	$API->write('/ip/address/print',true);
	//$API->write('/ip/firewall/nat/print',false);
	//$API->write('~comment~MAYAN');
	$API->write('?comment=LIBRE');
	//~
	$ARRAY4 = $API->read();
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	
	$libres=$ARRAY4;
	
	/*
	foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
		//echo '-';
/*		$key=strstr(substr($v.'', 1, strlen($v.'')-1), '=',true);
		$value=substr(strstr(substr($v.'', 1, strlen($v.'')-1), '='), 1, strlen(strstr(substr($v.'', 1, strlen($v.'')-1), '='))-1);
		//if($key=='comment'){
			//if($value=='LIBRE'){
				$impr=true;
			//}else{
			//	$impr=false;
			//}
		//}
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
	
		echo $v['chain'].'<br>';
	}
	*/
	$API->disconnect();
//	echo '<br><br>Cantidad de IPs: '.$cont.'<br>';
	/*
	foreach($libres as $l) {
		echo '{<br>';
		echo ".  .".$l['.id'].'<br>';
		echo ".  .".$l['chain'].'<br>';
		echo ".  .".$l['action'].'<br>';
		echo ".  .".$l['protocol'].'<br>';
		echo ".  .".$l['src-address'].'<br>';
		echo ".  .".$l['log'].'<br>';
		echo ".  .".$l['log-prefix'].'<br>';
		echo ".  .".$l['bytes'].'<br>';
		echo ".  .".$l['packets'].'<br>';
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
	
	
	=.id=*7AB
	=chain=srcnat
	=action=accept
=protocol=ospf
	=src-address=138.118.214.162
	=log=false
	=log-prefix=
	=bytes=5195304
	=packets=63716
	=invalid=false
	=dynamic=false
	=disabled=false
	=comment=Fernandez Bertin
	
	!re
	=.id=*6C7
	=chain=srcnat
	=action=src-nat
	=to-addresses=138.118.214.100
	=src-address=172.16.2.243
	=out-interface=LACP-BGP
	=log=false
	=log-prefix=
	=bytes=0
	=packets=0
	=invalid=false
	=dynamic=false
	=disabled=true
	=comment=UNiFI VIDEO SEMI-NAT (SALIDA)
	
	!re
	=.id=*65B
	=chain=dstnat
	=action=dst-nat
	=to-addresses=172.16.2.243
	=protocol=tcp
	=dst-address=138.118.214.100
	=dst-port=7443,7080,7446,7447
	=log=false
	=log-prefix=
	=bytes=132
	=packets=3
	=invalid=false
	=dynamic=false
	=disabled=false
	=comment=UNiFI VIDEO SEMI-NAT
	*/
}

?>
