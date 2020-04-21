<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.01 beta</h1>
	<h2>FO alta clientes<h2>
	<h4>
	<br>
<!--<form action="cargarCliente.php" method="post" id="form1">-->
		<table>
			<tr>
				<th align="right">
					PON: 
				</th>
				<th>
					<select id="codPon" width="150">
						<option value="B25">B25</option>
						<option value="B26">B26</option>
						<option value="B27">B27</option>
						<option value="C1">C1</option>
						<option value="C2">C2</option>
						<option value="C3">C3</option>
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					NAP: 
				</th>
				<th>
					<select id="numCaja" width="150">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					Cliente: 
				</th>
				<th width="150">
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" value="Agregar" id="submit">
<!--</form>-->
	<br>
	<script  src="insert2.js"></script>
	
	<div id="result"></div>
</body>
</html>