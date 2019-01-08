<?php
$linea = 0;

$archivo= fopen("paneles-freq.csv","r");
echo "------ "."\n";
/*
while(($datos = fgetcsv($archivo, ";")) == true){
		$num = count($datos);
		$linea++;
		for($columna = 0; $columna > $num; $columna++){
			echo $datos[$columna]. "\n";	
		}
}
*/
while (($datos = fgets($archivo, 4096)) !== false) {
    echo $datos;
	echo "\n";
}

fclose($archivo);
echo "________";
?>