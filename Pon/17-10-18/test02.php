<?php
/*
$ip=$_REQUEST['puerto'];
$usuario=$_REQUEST['usuario'];
$pass=$_REQUEST['pass'];
$COMANDOS=$_REQUEST['comandos'];
*/
$ip='192.168.1.1';
$usuario='root';
$pass='s553355';
$COMANDOS='help';

$da = fsockopen($ip, 23, $errno, $errstr, 50);
 
if (!$da) {
    echo "$errstr ($errno)<br />\n";
} else {
    /*
	$salida = "$usuario \r\n";
    $salida .= "$pass \r\n";
    $salida .= "$COMANDOS\r\n";
    $salida .= "exit\r\n";
 */
    fwrite($da, $salida);
    while (!feof($da)) {
        echo fgets($da, 128);
    }
    fclose($da);
}
?>