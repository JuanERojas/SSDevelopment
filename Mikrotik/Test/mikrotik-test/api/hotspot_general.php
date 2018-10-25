<?php require_once('api_mt_include2.php'); ?>
<?php
$ipRouteros="192.168.33.200";  // tu RouterOS.
$Username="usuario";
$Pass="contraseña";
$api_puerto=8727;

function ValidChar($c){ //filtro metacaracteres
	if (preg_match("/^([0-9a-zA-Z\*]){1,36}$/", $c)){
		return true;
	}else{
		return false;
	}
}

$id=0;
if(ValidChar($_GET["id"])==1){
	$id=$_GET["id"];
}

$ac="";
if(ValidChar($_GET["ac"])==1){
	$ac=$_GET["ac"];
}

$API = new routeros_api();		
$API->debug = false;
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {	   
	switch($ac){
		case "enable":
			$API->write("/ip/hotspot/ip-binding/enable",false);	
			$API->write("=.id=".$id,true);
			$READ = $API->read(false);
			$API->parse_response($READ);
			break;  
		case "disable":
			$API->write("/ip/hotspot/ip-binding/disable",false);	
			$API->write("=.id=".$id,true);
			$READ = $API->read(false);
			$API->parse_response($READ);
			break;
		case "delete":
			$API->write("/ip/hotspot/ip-binding/remove",false);	
			$API->write("=.id=".$id,true);
			$READ = $API->read(false);
			$API->parse_response($READ);
			break;
		default:
			echo "Ups! hubo un error!.";
	}
	$API->disconnect();
}

?>