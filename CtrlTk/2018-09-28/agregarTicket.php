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
		background-color: #AF4C4C; /* Blue */
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
<body bgcolor="D59090">
<!--body bgcolor="B7D590"-->
<div align="center">
	<h1>SSServicios v0.01 Alfa</h1>
	<h2>Cargar Ticket<h2>
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
					Num Ticket: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "codTicket" id="codTicket" width="100">
				</th>
			</tr>
			<th align="right">
					Tecnico Asignado: 
				</th>
				<th>
					<select id="codTecnico" width="150">
						<option value="0" selected>Seleccione un Tecnico</option>
						<option value="1">Luis fernandez</option>
						<option value="2">Fernando Perez</option>
						<option value="3">Javier Quint</option>
					</select>
			</th>
		</table>
		<br>
		<input type="submit" class="button" value="Agregar" id="submit">
	<br>
	<script  src="insertTicket.js"></script>
	
	<div id="result"></div>
</div>	
<script>
</script>
</body>
</html>