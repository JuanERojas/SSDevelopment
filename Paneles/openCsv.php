<?php
$linea = 0;

$archivo= fopen("paneles-freq.csv","r");

while(($datos = fgetcsv($archivo, ",")) == true){
		$num = count($datos);
		$linea++;
		for($columna = 0; $columna > $num; $columna++){
			echo $datos[$columna]. "\n";	
		}
}
fclose($archivo);
?>