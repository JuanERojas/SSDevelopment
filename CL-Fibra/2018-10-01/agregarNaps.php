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
	<hr>
	<br>
	<button class="button" onclick="window.location.href='verClientes.php'">Ver Clientes</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='verRegistroXPon.php'">Ver Clientes x PON</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='buscar.php'">Buscar Cliente</button>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="window.location.href='index.php'">Cargar Cliente</button>
	
<script></script>
</body>
</html>