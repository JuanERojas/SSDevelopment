<html>
<?php
// Get ips libres
if( strlen($_POST['b1'].'') != 0 ) { 
	$opc='comment';
	$bus = $_POST['b1'].'';
}
if( strlen($_POST['b2'].'') != 0 ) { 
	$opc='src-address';
	$bus = $_POST['b2'].'';
}
if( strlen($_POST['b3'].'') != 0 ) { 
	$opc='dst-address';
	$bus = $_POST['b3'].'';
}


//header('Content-Type: text/plain');
require('routeros_api.class.php');


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
	
	$API->write('/ip/firewall/nat/print',true);
	$ARRAY4 = $API->read(false);
	
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	
	$libres=array();
	
	foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
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
				array_push($libres,$json);		// Cargar JSON a Array
				$impr=false;
			}
		}else{
			$json[$key] = $value;				// Agregar al JSON
		}	
	}
	$API->disconnect();	
}
	foreach($libres as $l) {
		if($l['chain']=='dstnat'){
			$cont++;
		}
	}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>IPs Publicas</title>
	<link rel="shortcut icon" href="icon.png"/>
<style type="text/css">     
    body {
		font-family: Arial, Helvetica, sans-serif;
	}
	div {
		background:linear-gradient(top, red, gold);
	}
	.pointer {
		cursor: pointer;
	}
	select {
        width:170px;
    }
	.button {
		background-color: #4C72AF; /* Blue */
		border: none;
		color: white;
		padding: 10px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		cursor: pointer;
	}
	a:link {
		text-decoration: none;
	}
	a:visited {
		text-decoration: none;
	}
	a:hover {
		text-decoration: underline;
	}
	a:active {
		text-decoration: underline;
	}
	table {
		border-collapse: collapse;
	}
	tr:hover {
		background-color:#f5f5f5;
	}
	html *
	{
		font-family: sans-serif;
	}
	hr{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
</style>
</head>
<body bgcolor="90A0D5">
<!--body bgcolor="B7D590"-->
<div align="center">
	<h1>SSServicios v0.01</h1>
	<h2>Buscar IP Publica Fija</h2>
	<h4>
	<br>
	<br>
	<h3>IPs Encontradas <?php echo $cont;?></h3>
	<br>
		<table class="egt" border="1" bgcolor="FFFFFF">
			<tr bgcolor="CFCFCF">
				<th align="left" width="350">
					Comentario 
				</th>
				<th align="right" width="150">
					IP Interna 
				</th>
				<th align="right" width="150">
					IP Publica 
				</th>
			</tr>
	<?php
	foreach($libres as $l) {
		if($l['chain']=='dstnat'){
		?>
			<tr>
				<th align="left"><a href="modif.php?com=<?php echo $l['comment']; ?>&ip=<?php echo $l['src-address']; ?>&old=<?php echo $l['comment']; ?>" target="_blank"><?php echo $l['comment']; ?></a></th>
				<th align="right"><?php echo $l['src-address']; ?></th>
				<th align="right"><?php echo $l['dst-address']; ?></th>
			</tr>
	<?php
		}
	}
		?>
		</table>
		<br>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="document.location.href='index.php';" align="center">Atras</button>
	<br>
</div>	
<script></script>
</body>
</html>