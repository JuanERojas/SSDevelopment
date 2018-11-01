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

if(!(strlen(strstr(strtolower($nombre), strtolower($busNom.''))) > 0)){
						$mostrar=false;
					}


$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	//$API->write('/ip/address/print',true);
	$API->write('/ip/firewall/nat/print',true);
	//(write('/where',false);
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
			//if($value=='LIBRE'){
				//echo strtolower($value).'--'.strtolower($bus.'').'<br>';
			if(strlen(strstr(strtolower($value), strtolower($bus.''))) > 0){
				$impr=true;
			}else{
				$impr=false;
			}
		}
		if($v == '!re'){
			if($impr){ // Registro Completado
				//echo '<br>'.$json['address']; 	// Ver IP de con /32
				array_push($libres,$json);		// Cargar JSON a Array
				$impr=false;
				$cont++;
			}
		}else{
			$json[$key] = $value;				// Agregar al JSON
		}	
	}
	$API->disconnect();
	
	//echo '<br>Cantidad de IPs: '.$cont.'<br><br>';
/*	
	foreach($libres as $l) {
		echo '{<br>';
		echo ".  .".$l['.id'].'<br>';
		echo ".  .".$l['address'].'<br>';
		echo ".  .".$l['network'].'<br>';
		echo ".  .".$l['interface'].'<br>';
		echo ".  .".$l['actual-interface'].'<br>';
		echo ".  .".$l['invalid'].'<br>';
		echo ".  .".$l['dynamic'].'<br>';
		echo ".  .".$l['disabled'].'<br>';
		echo ".  .".$l['comment'].'<br>';
		echo '}<br>';
	}
*/
/*
	foreach($libres as $l) {
		if($l['chain']=='dstnat'){
			echo '{<br>';
			echo "chain==".$l['chain'].'<br>';
			echo "src-address==".$l['src-address'].'<br>';
			echo "comment==".$l['comment'].'<br>';
			echo "dst-address==".$l['dst-address'].'<br>';
			echo '}<br>';
		}
	}
*/
}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
				<th align="left"><?php echo $l['comment']; ?></th>
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
</div>	
<script></script>
</body>
</html>