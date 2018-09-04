<html>
<?php

	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
/*	
	$servername = "localhost";
    $database = "SS-DB"; 
    $username = "root";
    $password = "";
*/
	
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
					<!--
					<select id="reclamo" width="150">
						<option value="Microcortes">Microcortes</option>
						<option value="Cortes Prolongados">Cortes Prolongados</option>
						<option value="Sin Servicio">Sin Servicio</option>
						<option value="Baja Velocidad">Baja Velocidad</option>
					</select>
					 -->
					<input type="checkbox" id="reclamo-1" value="Microcortes" onclick="ValidarCheckBox(this);">Microcortes<br>
					<input type="checkbox" id="reclamo-2" value="Cortes Prolongados" onclick="ValidarCheckBox(this);">Cortes Prolongados<br>
					<input type="checkbox" id="reclamo-3" value="Sin Servicio" onclick="ValidarCheckBox(this);">Sin Servicio<br>
					<input type="checkbox" id="reclamo-4" value="Baja Velocidad" onclick="ValidarCheckBox(this);">Baja Velocidad<br> 
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
	
<script>
	function ValidarCheckBox(obj){
		var select = obj.value;
		if(select == "Microcortes"){
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-3").checked = false;
		}
		if(select == "Cortes Prolongados"){
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-3").checked = false;
		}
		if(select == "Sin Servicio"){
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-4").checked = false;
		}
		if(select == "Baja Velocidad"){
			document.getElementById("reclamo-3").checked = false;
		}
	}
</script>
</body>
</html>