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
	|TR=Tipo de reclamo				|
	|Nt=No al mismo tiempo			|
	|								|
	|TR;Nt;Nt						| ---->Sin Servicio;2;3
	|TR;Nt							| ---->Baja Velocidad;1
	|TR;Nt							| ---->WSP;3
	|								|
	|_______________________________|
*/	
	$recl="";
	$json = '{}';
	$json = json_decode($data,true);
	$reclamos=array();
	if ($archivo = fopen('reclamos2.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$prob=strstr($linea, ';',true);
			$conf=substr(strstr($linea, ';'), 1, strlen(strstr($linea, ';').' ')-1);
			$configs = explode(";", $conf);
			$json['reclamo'] = $prob;
			$json['config'] = $configs;
			array_push($reclamos,$json);
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
				<div id="checkboxes">
	<?php	
		$cont=1;	
		foreach($reclamos as $r) {
		?>
					<input type="checkbox" id="reclamo-<?php echo $cont;?>" value="<?php echo $r['reclamo'];?>" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-<?php echo $cont;?>"><?php echo $r['reclamo'];?></label><br>
					
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
		<input type="submit" class="button" value="Agregar" id="submit">
	<br>
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