<?php
/*
$msj= '12345';
$msj=substr($msj, 0, strlen($msj)-1);
echo $msj.'<br>';
$msj = trim($msj);
echo $msj;
*/

$aux= '1000000/1500000';

//$aux= intval($r['max-limit']);
$partes = explode("/", $aux);
$aux=$partes[0];
$b='b';
if($aux>=1000){
	$aux = $aux/1000;
	$b='Kb';
}
if($aux>=1000){
	$aux = $aux/1000;
	$b='Mb';
}
$final= $aux.$b;
$aux=$partes[1];
$b='b';
if($aux>=1000){
	$aux = $aux/1000;
	$b='Kb';
}
if($aux>=1000){
	$aux = $aux/1000;
	$b='Mb';
}
$final = $final.'/'.$aux.$b;
echo $final.'<br>';
?>