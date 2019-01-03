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
	
	//------------------------------------ Ultimos Registros
	$registros=array();
	$sql = "SELECT t.nombre AS tecnico, nodo, problema, numcliente, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:1800' HOUR_SECOND) ORDER BY time DESC LIMIT 15";
	
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$tecnico= $row["tecnico"];
			$nodo= $row["nodo"];
			$problema= $row["problema"];
			$numclientebd= $row["numcliente"];
			$timest= $row["time"];
			
			array_push($registros,array($tecnico, $nodo, $problema, $numclientebd, $timest));
		}
	}
	
	$conn->close();
	
	$msj="";
	//Leer MSJ
	if ($archivo = fopen('mensaje.txt', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
	fclose($archivo);
	
	
	
	//------------------------------------------Leer Archivos para Reclamos
/*	________________________________
	|Formato MSJ:					|
	|-------------------------------|
	|TR=Tipo de reclamo	(p/UDP)		|
	|Nmb=Nombre con el que sale		|
	|Nt=No al mismo tiempo			|
	|								|
	|TR*Nmb;Nt;Nt						| ---->SinServicio*Sin Servicio;2;3
	|TR*Nmb;Nt							| ---->BajaVelocidad*Baja Velocidad;1
	|TR*Nmb;Nt							| ---->WSP*Wsp-Insta-Face;3
	|								|
	|_______________________________|
*/	
	$recl="";
	$json = '{}';
	$json = json_decode($data,true);
	$reclamos=array();
	if ($archivo = fopen('reclamos.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$partes = explode("*", $linea);
			$prob=$partes[0];
			$nmbProb=strstr($partes[1], ';',true);
			$conf=substr(strstr($partes[1], ';'), 1, strlen(strstr($partes[1], ';').' ')-1);
			$configs = explode(";", $conf);
			$json['reclamo'] = $prob;
			$json['nombre'] = $nmbProb;
			$json['config'] = $configs;
			array_push($reclamos,$json);
		}	
	}
	fclose($archivo);
?>
<head>
	<title>Ticket</title>
	<link rel="shortcut icon" href="icon.png"/>
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
	.tes { 
		color: inherit; 
	}
	table {
		border-collapse: collapse;
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServici<a onclick="sumO();">o</a>s v2.0</h1>
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
				<div id="checkboxes">
	<?php	
		$cont=1;	
		foreach($reclamos as $r) {
		?>
					<input type="checkbox" id="reclamo-<?php echo $cont;?>" value="<?php echo $r['reclamo'];?>" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-<?php echo $cont;?>"><?php echo $r['nombre'];?></label><br>
					
	<?php
			$cont++;
		}
		?>
				</div>
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
	<br>
	<hr>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="150">
				<p class="pointer">Tecnico</p>
			</th>
			<th width="150">
				<p class="pointer">Panel</p>
			</th>
			<th width="200">
				<p class="pointer">Reclamo</p>
			</a></th>
			<th width="90">
				<p class="pointer">Cliente</p>
			</th>
			<th width="170">
				<p class="pointer">Hora</p>
			</th>
		</tr>
<?php
	foreach($registros as $r) {
	?>
		<tr>
			<th width='150' align='left'>
				<?php echo $r[0];?>
			</th>
			<th width='150'  align='left'>
				<?php echo $r[1];?>
			</th>
			<th width='200'  align='left'>
				<?php echo $r[2];?>
			</th>
			<th width='70'  align='right'>
				<?php echo $r[3];?>
			</th>
			<th width='170'  align='right'>
				<?php echo $r[4];?>
			</th>
		</tr>
	<?php
	}
	?>
	</table>
	
<script  src="insert.js"></script>	
<script>
	function ValidarCheckBox(obj){
		var select = obj.value;
<?php	foreach($reclamos as $r) {	?>
			if(select == "<?php echo $r['reclamo'];?>"){	
<?php 			foreach($r['config'] as $c) {	
					$c = trim(preg_replace('/\s+/', ' ', $c));
	?>
					document.getElementById("reclamo-<?php echo $c;?>").checked = false;
<?php			} ?>
			}
<?php	} ?>
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