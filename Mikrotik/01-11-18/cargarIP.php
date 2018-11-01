<html>
<?php
// Cargar IPs

$cl = $_POST['cl'].'';
$nom = $_POST['nombre'].'';
$ip = $_POST['ip'].'';


/*
//header('Content-Type: text/plain');
require('routeros_api.class.php');

$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

$API = new RouterosAPI();
//$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	$API->write('/ip/address/print',true);
	$ARRAY4 = $API->read(false);
	
	
	
	$API->disconnect();
	}	
}
*/
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
<div align="center">
	<h1>SSServicios v0.01</h1>
	<h2>Activar IP Publica Fija<h2>
	<h4>
	<br>
		<table>
			<tr>
				<th align="right">
					Nº Cliente: 
				</th>
				<th>
					<?php echo $cl;?>
				</th>
			</tr>
			<tr>
				<th align="right">
					Nombre Cliente: 
				</th>
				<th>
					<?php echo $nom;?>
				</th>
			</tr>
			<tr>
				<th align="right">
					IP Cliente: 
				</th>
				<th>
					<?php echo $ip;?>
				</th>
			</tr>
		</table>
		<br>
	<br>
</div>	
<script></script>
</body>
</html>