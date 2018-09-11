<html>
<?php

	$servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT idpon, codigo FROM pon";
	$resultPon = $conn->query($sql);
	
	$conn->close();
	
	$Pons=array();
	
	if ($resultPon->num_rows > 0) {
		while($row = $resultPon->fetch_assoc()) {
			$idPon= $row["idpon"];
			$codigoPon= $row["codigo"];
			
			array_push($Pons,array($idPon,$codigoPon));
		}
	}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
    body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	select {
        width:170px;
    }
	.texto {
        width:170px;
    }
	.button {
		background-color: #4C72AF; /* Green */
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
	
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.02</h1>
	<h2>FO Agregar NAPs<h2>
	<h4>
	<br>
		<table>
			<tr>
				<th align="right">
					Codigo PON: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "codPon" id="codPon" class="texto">
				</th>
			</tr>
		</table>
		<table>
			<tr align="center">
				<th align="right">
					Cantidad de NAPs: 
				</th>
			</tr>
		</table>
		<table>
			<tr>
				<th>
					Desde:
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "iniNap" id="iniNap" class="texto">
				</th>
				<th>
					Hasta
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "finNap" id="finNap" class="texto">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Agregar" id="submit">
	<br>
	<script  src="insertNap.js"></script>
	
	<div id="result"></div>
	<br>
	<br>
	<br>
	<button class="button" onclick="window.location.href='verClientes.php'">Ver Clientes</button>
	<br>
	<br>
	<br>
	<button class="button" onclick="window.location.href='index.php'">Cargar Cliente</button>
	
<script></script>
</body>
</html>