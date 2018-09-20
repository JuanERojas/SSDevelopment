<html>
<?php
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT idtecnico, nombre FROM tecnico";
	$result2 = $conn->query($sql);
	$conn->close();
	
	$msj="";
	//Leer
	if ($archivo = fopen('mensaje.txt', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
	fclose($archivo);
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--link rel="stylesheet" href="mensaje.css"-->
<style type="text/css">     
    select {
        width:173px;
    }
	html *
	{
		font-family: sans-serif;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	.button {
		background-color: #4CAF50; /* Green */
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
	.msj {
		width: 300px;
		padding: 25px;
		margin: 25px;
		border: 10px solid red;
		border-radius: 5px;
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.1 Beta</h1>
	<h2>Reclamos<h2>
	<h4>
	<br>
	<br>
	<table><tr><th class="msj" align="center">
<?php
		echo $msj;
	?>
	</table></tr></th>
	<!--div class="folder">
<?php
//		echo $msj;
	?>	
	</div-->
	<br>
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
					IP: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "nombrePanel" id="nombrePanel" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					Reclamo: 
				</th>
				<th align="left">
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
	<?php
						if ($result2->num_rows > 0) {
							while($row = $result2->fetch_assoc()) {
								$idtecnico= $row["idtecnico"];
								$nombre= $row["nombre"];
		?>
						<option value="<?php echo $idtecnico; ?>"><?php echo $nombre; ?></option>
	<?php
							}
						}
		?>
					</select>
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Agregar" id="submit">
	<br>
	<script  src="insert.js"></script>
	<div id="result"></div>
		<br>
		<br>
		<br>
		<br>
	<button class="button" onclick="window.open('stats.php','_blank');" target="_blank">Estadísticas</button>
	
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
	//Recuperar MSJ
</script>
</body>
</html>