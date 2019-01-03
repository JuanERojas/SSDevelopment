<html>
<?php

	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT p.codigo AS pon, n.numero AS nap, c.codcliente AS cliente, c.`time` AS age FROM cliente AS c INNER JOIN nap AS n ON c.codnap = n.idnap INNER JOIN pon AS p ON n.codpon = p.codigo ORDER BY p.codigo, n.numero + 0;";
	$result = $conn->query($sql);
	
	$conn->close();
?>
<head>
	<title>Ver Clientes</title>
	<link rel="shortcut icon" href="icon.png"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	table {
		border-collapse: collapse;
	}
	html *
	{
		font-family: sans-serif;
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
	tr:hover {
		background-color:#f5f5f5;
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
	hr{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
</style>
</head>
<body bgcolor="90A0D5">
<div align="center">
	<h1>SSServicios v0.02</h1>
	<h2>FO Ver Clientes<h2>
	<h4>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="70">PON</th>
			<th width="70">NAP</th>
			<th width="90">CLIENTE</th>
			<th width="250">AGE</th>
		</tr>
<?php
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$pon= $row["pon"];
			$nap= $row["nap"];
			$cliente= $row["cliente"];
			$age= $row["age"];
	?>
		<tr>
			<th width='70' align='left'><a href='verRegistroN-P.php?codPon=<?php echo $pon;?>' target="_blank">
				<?php echo $pon;?>
			</a></th>
			<th width='70'  align='left'><a href='verRegistroN-P.php?codPon=<?php echo $pon;?>&codNap=<?php echo $nap;?>' target="_blank">
				<?php echo $nap;?>
			</a></th>
			<th width='90'  align='right'>
				<?php echo $cliente;?>
			</th>
			<th width='250'  align='right'>
				<?php echo $age;?>
			</th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='verRegistroXPon.php'">Ver Clientes x PON</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='buscar.html'">Buscar</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='index.php'">Cargar Clientes</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='agregarNaps.php'">Cargar NAPs</button>
	
<script></script>
</body>
</html>