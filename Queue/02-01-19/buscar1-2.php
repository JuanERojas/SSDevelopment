<?php
// Get all data 

$opc = 'name';

require('routeros_api.class.php');

echo 'Buscador<br>';

// ------------------- Leer Archivos Credenciales
if ($archivo = fopen('cred.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
fclose($archivo);
$credenciales = explode(';', $msj);
$Username=$credenciales[0];			// Usuario
$Pass=$credenciales[1]; 			// Pass
$puerto=$credenciales[2]; 		// Port

$msj='';
if ($archivo = fopen('cores2.sss', 'r')) {
	while (!feof($archivo)) {
		$linea = fgets($archivo);
		$msj= $msj.$linea;
	}	
}
fclose($archivo);
//$msj=substr($msj, 0, strlen($msj)-1);



// ------------------- Realizar Funcion
$cores = explode(';', $msj);
$registros=array();
foreach ($cores as $c){
	$ip=trim($c);
	$ip=rtrim($ip);
	cargarCore($ip, $Username, $Pass, $puerto);
}

session_start();
$_SESSION['registros'] = $registros;

function cargarCore($ip, $Username , $Pass, $puerto){
	$API = new RouterosAPI();
	$API->debug = true;
	if ($API->connect($ip , $Username , $Pass, $puerto)) {
		$API->write('/queue/simple/print',true);
		$ARRAY4 = $API->read(false);
		$mostrar='';
		$impr=false;
		$cont=0;
		$json = '{}';
		$json = json_decode($data,true);
		$registros=$GLOBALS['registros'];
		
		foreach($ARRAY4 as $v) { // 
			$key=strstr(substr($v.'', 1, strlen($v.'')-1), '=',true);
			$value=substr(strstr(substr($v.'', 1, strlen($v.'')-1), '='), 1, strlen(strstr(substr($v.'', 1, strlen($v.'')-1), '='))-1);
			if($key==$opc){
				if( strlen($bus.'') != 0 ) {
					if(strlen(strstr(strtolower($value), strtolower($bus.''))) > 0){
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
					$json['core'] = $ip;
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
		//array_push($registros,$reg);
		$GLOBALS['registros']=$registros;
	}
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

