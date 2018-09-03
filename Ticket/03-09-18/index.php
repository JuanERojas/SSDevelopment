<html>
<?php

	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT nombre FROM panel ORDER BY nombre";
	$result = $conn->query($sql);
	
	
	$conn->close();
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
    select {
        width:173px;
    }
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.01 Alfa</h1>
	<h2>Reclamos<h2>
	<h4>
	<br>
		<table>
			<tr>
				<th align="right">
					Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					Panel: 
				</th>
				<th>
					<select id="nombrePanel" width="150">
	<?php
						if ($result->num_rows > 0) {
							while($row = $result->fetch_assoc()) {
								$nombrePanel= $row["nombre"];
							
		?>
						<option value="<?php echo $nombrePanel; ?>"><?php echo $nombrePanel; ?></option>
	<?php
							}
						}
		?>
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					Reclamo: 
				</th>
				<th>
					<select id="reclamo" width="150">
						<option value="Microcortes">Microcortes</option>
						<option value="Cortes Prolongados">Cortes Prolongados</option>
						<option value="Sin Servicio">Sin Servicio</option>
						<option value="Baja Velocidad">Baja Velocidad</option>
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					Tecnico: 
				</th>
				<th>
					<select id="tecnico" width="150">
						<option value="German Vader">German</option>
						<option value="Nicolas Vargas">Nico</option>
						<option value="Juan Rojas">Juan</option>
						<option value="Diego Mayan">Diego</option>
						<option value="Marco Olmos">Marco</option>
					</select>
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" value="Agregar" id="submit">
	<br>
	<script  src="insert.js"></script>
	<div id="result"></div>
	
<script></script>
</body>
</html>