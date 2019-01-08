<?php
$linea = 0;

$archivo = fopen("paneles-freq.csv", "r");
/*
while(($datos = fgetcsv($archivo, ",")) == true){
	$num = count($datos);
	$linea++;
	for($columna = 0; $columna > $num; $columna++){
		echo $datos[$columna]."n";
	}
}
*/
$datos = fgets($archivo, 4096);
$datos = fgets($archivo, 4096);
while(($datos = fgets($archivo, 4096)) == true){
	/*
	$datos = fgets($archivo, 4096);
	//$datos = fgets($archivo, 4096);
	//echo $datos;
	*/
	echo $datos;
	echo "<br>" ;
	
	$resto = strstr($datos, ';', true);
	//echo $resto;
	//echo "<br>" ;
	
	$nombre = substr(strstr($resto, ',',true),1,-1);
	echo $nombre;
	echo "-" ;
	
	$resto = substr(strstr($resto . ' ', ','),1,-1);
	//echo $resto;
	//echo "<br>" ;
	
	$ip = substr(strstr($resto, ',',true),0,-1);
	echo $ip;
	echo "-" ;
	
	$resto = substr(strstr($resto . ' ', ','),1,-1);
	//echo $resto;
	//echo "<br>" ;
	
	$marca = strstr($resto, ',',true);
	echo $marca;
	echo "-" ;
	
	$frecuencia = substr(strstr($resto . ' ', ','),1,-1);
	if(strlen($frecuencia) == 0){
		echo "FRECUENCIA NULA";
	}else{
		echo $frecuencia;
	}
	echo "-" ;
	
	$clientes = substr(strstr($datos, ';'),1,-1);
	echo $clientes;
	
	echo "<br>" ;
	echo "------------------";
	echo "<br>" ;
	
}



fclose($archivo);
?>