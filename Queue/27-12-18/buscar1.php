<?php
// Get all data 

$opc = 'name';
/*
$bus = 'bus';
*/
//header('Content-Type: text/plain');
require('routeros_api.class.php');

echo 'GET all data<br>';

if ($archivo = fopen('cred.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
fclose($archivo);
$credenciales = explode(';', $msj);
$ipRouteros=$credenciales[0];  		// tu RouterOS.
$Username=$credenciales[1];			// Usuario
$Pass=$credenciales[2]; 			// Pass
$api_puerto=$credenciales[3]; 		// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	$API->write('/queue/simple/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	
	$registros=array();
	$reg=array();
	
	foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
		//echo $v.'<br>';
		$key=strstr(substr($v.'', 1, strlen($v.'')-1), '=',true);
		$value=substr(strstr(substr($v.'', 1, strlen($v.'')-1), '='), 1, strlen(strstr(substr($v.'', 1, strlen($v.'')-1), '='))-1);
		if($key==$opc){
			if( strlen($bus.'') != 0 ) {
				if(strlen(strstr(strtolower($value), strtolower($bus.''))) > 0){
					//echo '----<br>';
					$impr=true;
				}else{
					$impr=false;
				}
			}else{
				$impr=true;
			}
		}
		if($v == '!re'){
			if($impr){ // Registro Completado
				array_push($registros,$json);		// Cargar JSON a Array
				$impr=false;
			}
			$json = '{}';
			$json = json_decode($data,true);
		}else{
			$json[$key] = $value;				// Agregar al JSON
		}
	}
	$API->disconnect();
	
	session_start();
	$_SESSION['registros'] = $registros;
}
?>
<INPUT TYPE = "Text" NAME = "b1" id="b1" width="100">
<button onclick="actualizar();" align="center">Buscar</button>
<div id="data">
	
</div>
<script>
function actualizar(){
	var bus = document.getElementById("b1").value;
	window.open('buscar2.php?bus='+bus);
}
</script>	

