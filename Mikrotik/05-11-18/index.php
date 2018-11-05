<html>
<?php

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
<!--body bgcolor="B7D590"-->
<div align="center">
	<h1>SSServicios v0.01</h1>
	<h2>Menu IP Publica Fija</h2>
	<h4>
	<br>
		<table>
			<tr>
				<th align="right">
					Num Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					Nombre Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "cliente" id="cliente" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					IP Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "ipCliente" id="ipCliente" width="100">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Cargar" id="submit">
		<!--br>
		<hr>
		<br>
		<button class="button" onclick="window.open('cargarIP.php','_blank');" align="center">Cargar</button>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.open('verIP.php','_blank');" align="center">Ver IPs Libres</button-->
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.open('buscar.php','_blank');" align="center">Buscar</button>
	<br>
	<script  src="insert.js"></script>
	
	<div id="result"></div>
</div>	
<script>
//setTimeout("location.href='buscar.php'",100);
</script>
</body>
</html>