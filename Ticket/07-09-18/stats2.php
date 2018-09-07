<html>
<?php
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
	
/*		
	$servername = "localhost";
    $database = "SS-DBTK"; 
    $username = "root";
    $password = "";
*/
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	//Por tiempo
	$registros=array();
	$sql = "SELECT idreclamo, t.nombre AS tecnico, nodo, problema, numcliente, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico ORDER BY idreclamo;";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$idreclamo= $row["idreclamo"];
			$tecnico= $row["tecnico"];
			$nodo= $row["nodo"];
			$problema= $row["problema"];
			$numcliente= $row["numcliente"];
			$timest= $row["time"];
			
			$time = strtotime($timest);
			$timezone  = -3; //(GMT -3:00) 
			$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
			$curtime = strtotime($tiempo);
			
			array_push($registros,array($idreclamo, $tecnico, $nodo, $problema, $numcliente, ($curtime-$time)));
			//
			//if(($curtime-$time) < 3600) {     //3600 segundos --> 1 hora
			//	echo $idreclamo."---".$tecnico."---".$nodo."---".$problema."---".$numcliente."<br>";
			//}
			//*/
		}
	}
	
	//Por reclamo
	$sql = "SELECT problema AS reclamo, COUNT(*) AS cant FROM reclamo r GROUP BY problema ORDER BY cant DESC LIMIT 10;";
	$result1 = $conn->query($sql);
	/*
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$reclamo= $row["reclamo"];
			$cantidad= $row["cant"];
			//echo $reclamo."--------".$cantidad."<br>";
		}
	}
	*/
	
	//Por panel
	$sql = "SELECT nodo AS panel, COUNT(*) AS cant FROM reclamo r GROUP BY nodo ORDER BY cant DESC LIMIT 10;";
	$result2 = $conn->query($sql);
	/*
	if ($result2->num_rows > 0) {
		while($row = $result2->fetch_assoc()) {
			$panel= $row["panel"];
			$cantidad2= $row["cant"];
			echo $panel."--------".$cantidad2."<br>";
		}
	}
	*/
	
	//Por Nodo
	$sql = "SELECT n.nombre AS nodo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo GROUP BY n.nombre ORDER BY cant DESC LIMIT 10;";
	$result6 = $conn->query($sql);
	/*
	if ($result6->num_rows > 0) {
		while($row = $result6->fetch_assoc()) {
			$nodo= $row["nodo"];
			$cantidad6= $row["cant"];
			echo $nodo."--------".$cantidad6."<br>";
		}
	}
	*/
	
	$conn->close();
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
		table {
			border-collapse: collapse;
		}
		html *
		{
			font-family: sans-serif;
		}
	</style>
</head>
<body bgcolor="B7D590">
	<div align="center">
		<h1>SSSD</h1>
		<h2>Estadisticas<h2>
		<br>
		<h3>Reclamos por fecha<h2>
		<br>
		<select id="intervalo" onchange="cargarReg(this)">
			<option value="0">Seleccione Un Margen</option>
			<option value="-1">Todos</option>
			<option value="86400">Ultimas 24 Horas</option>
			<option value="7200">Ultimas 2 Horas</option>
			<option value="3600">Ultima Hora</option>
			<option value="1800">Ultima Media Hora</option>
			<option value="300">Ultimos 5 Minutos</option>
		</select>
	</div>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="150">Tecnico</th>
			<th width="100">Panel</th>
			<th width="230">Reclamo</th>
			<th width="70">Cliente</th>
		</tr>
	</table>
	<br>
	<br>
	<h3 align="center">Reclamos por Tipo<h2>
	<br>
	<table id="xTipo" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="230">Reclamo</th>
			<th width="40">Cantidad</th>
		</tr>
<?php
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$reclamo= $row["reclamo"];
			$cantidad= $row["cant"];
	?>
		<tr>
			<th width="230" align='left'><?php echo $reclamo;?></th>
			<th width="40" align='left'><?php echo $cantidad;?></th>
		</tr>
	<?php
		}
	}
	?>
	</table>
	<br>
	<br>
	<h3 align="center">Reclamos por Panel<h2>
	<br>
	<table id="xPanel" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="230">Panel</th>
			<th width="40">Cantidad</th>
		</tr>
<?php
	if ($result2->num_rows > 0) {
		while($row = $result2->fetch_assoc()) {
			$panel= $row["panel"];
			$cantidad2= $row["cant"];
	?>
		<tr>
			<th width="230" align='left'><?php echo $panel;?></th>
			<th width="40" align='left'><?php echo $cantidad2;?></th>
		</tr>
	<?php
		}
	}
	?>
	</table>
	<br>
	<br>
	<h3 align="center">Reclamos por Nodo<h2>
	<br>
	<table id="xNodo" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="230">Nodo</th>
			<th width="40">Cantidad</th>
		</tr>
<?php
	if ($result6->num_rows > 0) {
		while($row = $result6->fetch_assoc()) {
			$nodo= $row["nodo"];
			$cantidad6= $row["cant"];
	?>
		<tr>
			<th width="230" align='left'><?php echo $nodo;?></th>
			<th width="40" align='left'><?php echo $cantidad6;?></th>
		</tr>
	<?php
		}
	}
	?>
	</table>
<script>
	function cargarReg(obj) {
		var div = document.getElementById('result');
		var valor = obj.options[obj.selectedIndex].value;
		
		div.innerHTML='';//<p class="pointer">
		div.innerHTML="<tr bgcolor='CFCFCF'><th width='150' align='left'>Tecnico</th><th width='100'  align='left'>Panel</th><th width='200'  align='left'>Reclamo</th><th width='70'  align='right'>Cliente</th></tr>";
	<?php
			foreach($registros as $r) {
		?>
		if(valor == -1){
			//div.innerHTML += "<tr><th><?php echo $r[0];?></th><th><?php echo $r[1];?></th><th><?php echo $r[2];?></th><th><?php echo $r[3];?></th><th><?php echo $r[4];?></th></tr>";
			div.innerHTML += "<tr><th width='150' align='left'><?php echo $r[1];?></th><th width='100'  align='left'><?php echo $r[2];?></th><th width='200'  align='left'><?php echo $r[3];?></th><th width='70'  align='right'><?php echo $r[4];?></th></tr>";
		}else{
			if(valor > <?php echo $r[5]; ?>){
				div.innerHTML += "<tr><th width='150' align='left'><?php echo $r[1];?></th><th width='100'  align='left'><?php echo $r[2];?></th><th width='200'  align='left'><?php echo $r[3];?></th><th width='70'  align='right'><?php echo $r[4];?></th></tr>";
			}
		}	
		
	<?php
			}
		?>	
	}
</script>
</body>
</html>

