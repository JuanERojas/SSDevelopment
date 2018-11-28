<?php

	$recl="";
	$json = '{}';
	$json = json_decode($data,true);
	$reclamos=array();
	
	//Leer Archivos para Reclamos
	if ($archivo = fopen('reclamos2.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$partes = explode("*", $linea);
			$prob=$partes[0];
			$nmbProb=strstr($partes[1], ';',true);
			$conf=substr(strstr($partes[1], ';'), 1, strlen(strstr($partes[1], ';').' ')-1);
			$configs = explode(";", $conf);
			$json['reclamo'] = $prob;
			$json['nombre'] = $nmbProb;
			$json['config'] = $configs;
			array_push($reclamos,$json);
		}	
	}
	fclose($archivo);
	//$reclamos = explode(";", $recl);
	
	foreach($reclamos as $r) {
		echo $r['reclamo'].'--';
		echo $r['nombre'].'--';
		foreach($r['config'] as $c) {
			//$c = str_replace(' ', '', $c);
			$c = trim(preg_replace('/\s+/', ' ', $c));
			echo $c.'-';
		}
		echo '<br>';
	}
?>