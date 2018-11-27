<html>
<?php

	$numcliente = $_GET['cl'];
	$ipcliente = $_GET['ip'];
	
	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT idtecnico, nombre FROM tecnico";
	$result2 = $conn->query($sql);
	
	$sql = "SELECT tecnico FROM reclamo r ORDER BY idreclamo DESC LIMIT 1;";
	$result1 = $conn->query($sql);
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$ultTecnico= $row["tecnico"];
		}
	}		
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
	.button2 {
		background-color: #AF4C55; /* Green */
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
	a {
		text-decoration: none;
	}
	.msj {
		width: 300px;
		padding: 25px;
		margin: 25px;
		border: 10px solid red;
		border-radius: 5px;
	}
	hr{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServici<a onclick="sumO();">o</a>s v1.0</h1>
	<h2>Rec<a onclick="sumL();">l</a>a<a onclick="sumM();">m</a><a onclick="sumO2();">o</a><a onclick="sumS();">s</a></h2>
	<h4>
	<br>
	<br>
	<table><tr><th class="msj" align="center">
<?php
		echo $msj;
	?>
	</table></tr></th>
	<br>
	<br>
	<h2>
	<tr>
		<th align="right">
			Cliente: 
		</th>
		<td align="right">
			<i><b><?php echo $numcliente; ?></b></i>
		</td>
	</tr>
	<br>
	<tr>
		<th align="right">
			IP: 
		</th>
		<td align="right">
			<i><b><?php echo $ipcliente; ?></b></i>
		</td>
	</tr>
	</h2>
		<table>
			<tr>
				<td >
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente" width="100" value="<?php echo $numcliente; ?>" style="display:none">
				</td>
			</tr>
			<tr>
				<td>
					<INPUT TYPE = "Text" NAME = "nombrePanel" id="nombrePanel" width="100" value="<?php echo $ipcliente; ?>" style="display:none">
				</td>
			</tr>
			<tr>
				<th align="right">
					Reclamo: 
				</th>
				<th align="left">
					<input type="checkbox" id="reclamo-1" value="Cortes" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-1">Cortes</label><br>
					<input type="checkbox" id="reclamo-2" value="Microcortes" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-2">Microcortes - (Solo tecnicos)</label><br>
					<input type="checkbox" id="reclamo-3" value="Sin Servicio" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-3">Sin Servicio</label><br>
					<input type="checkbox" id="reclamo-4" value="Baja Velocidad" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-4">Baja Velocidad</label><br> 
					<input type="checkbox" id="reclamo-5" value="Wsp-Inst-Face" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-5">Wsp-Inst-Face</label><br> 
				</th>
			</tr>
			<tr>
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
						<option value="<?php echo $idtecnico; ?>" <?php if ($ultTecnico == $idtecnico ) echo 'selected' ; ?>><?php echo $nombre; ?></option>
	<?php
							}
						}
		?>
					</select>
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Agregar" id="submit" onclick="this.disabled=true; this.className='button2'; this.value='Listo';">
	<br>
	<script  src="insert.js"></script>
	
	
<script>
	function ValidarCheckBox(obj){
		var select = obj.value;
		if(select == "Cortes"){ 		// reclamo-1
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-3").checked = false;
			document.getElementById("reclamo-5").checked = false;
		}
		if(select == "Microcortes"){ 	// reclamo-2
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-3").checked = false;
			document.getElementById("reclamo-5").checked = false;
		}
		if(select == "Sin Servicio"){ 	// reclamo-3
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-4").checked = false;
			document.getElementById("reclamo-5").checked = false;
		}
		if(select == "Baja Velocidad"){	// reclamo-4
			document.getElementById("reclamo-3").checked = false;
			document.getElementById("reclamo-5").checked = false;
		}
		if(select == "Wsp-Inst-Face"){	// reclamo-4
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-3").checked = false;
			document.getElementById("reclamo-4").checked = false;
		}
	}
	
	var EE="";
	//Recuperar MSJ
	function sumO(){
		if(EE == ""){
			EE="O";
		}else{
			EE="";
		}
	}
	function sumL(){
		if(EE == "O"){
			EE="OL";
		}else{
			EE="";
		}
	}	
	function sumM(){
		if(EE == "OL"){
			EE="OLM";
		}else{
			EE="";
		}
	}
	function sumO2(){
		if(EE == "OLM"){
			EE="OLMO";
		}else{
			EE="";
		}
	}
	function sumS(){
		if(EE == "OLMO"){
			alert("EE");
			EE="";
		}else{
			EE="";
		}
	}
</script>
</body>
</html>