<html>
<?php
	$date = $_POST['date'].'';
	if( strlen($date) == 0 ) {
		$date = $_GET['date'];
		if( strlen($date) == 0 ) {
			$date = date('Y-m-d');
		}
	}
	$date2 = $_POST['date2'].'';
	if( strlen($date2) == 0 ) { 
		$date2 = $_GET['date2'];
		if( strlen($date2) == 0 ) {
			$date2 = date('Y-m-d');
		}
	}
	
	$orden = $_GET['orden'];
	if( strlen($orden) == 0 ) { 
		$orden = "idreclamo";
	}
	
	
	$pagina = $_GET['pagina'];
	if( strlen($pagina) == 0 ) { 
		$pagina = "0";
	}
	
	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
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
	$sql = "SELECT idreclamo, t.nombre AS tecnico, nodo, problema, numcliente, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' ORDER BY ".$orden.";";
	
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$idreclamo= $row["idreclamo"];
			$tecnico= $row["tecnico"];
			$nodo= $row["nodo"];
			$problema= $row["problema"];
			$numcliente= $row["numcliente"];
			$timest= $row["time"];
			/*
			$time = strtotime($timest);
			$timezone  = -3; //(GMT -3:00) 
			$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
			$curtime = strtotime($tiempo);
			*/
			array_push($registros,array($idreclamo, $tecnico, $nodo, $problema, $numcliente, $timest));
		}
	}
	
	//Por reclamo
	$sql = "SELECT problema AS reclamo, COUNT(*) AS cant FROM reclamo r WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59'  GROUP BY problema ORDER BY cant DESC LIMIT 10;";
	$result1 = $conn->query($sql);
	
	//Por panel
	$sql = "SELECT nodo AS panel, COUNT(*) AS cant FROM reclamo r WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' GROUP BY nodo ORDER BY cant DESC LIMIT 10;";
	$result2 = $conn->query($sql);
	
	//Por panel y reclamo

	$sql = "SELECT nodo AS panel ,problema AS reclamo, COUNT(*) AS cant FROM reclamo r WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' GROUP BY r.nodo, r.problema ORDER BY cant DESC, r.nodo LIMIT 20;";
	$result3 = $conn->query($sql);
	
	//Por Nodo
	$sql = "SELECT n.nombre AS nodo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' GROUP BY n.nombre ORDER BY cant DESC LIMIT 10;";
	$result6 = $conn->query($sql);
	
	//Por Cliente
	$sql = "SELECT numcliente AS cliente, COUNT(*) AS cant FROM reclamo r WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' GROUP BY numcliente ORDER BY cant DESC LIMIT 15;";
	$result4 = $conn->query($sql);
	
	
	
	$conn->close();
	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
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
		.tes { 
			color: inherit; 
		} 		
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
		tr:hover {
			background-color:#f5f5f5;
		}
		hr{
			border: 0;
			height: 1px;
			background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
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
		.tb2 td {
			border-collapse: separate;
			padding: 10px 300px 10px 300px;
		}
	</style>
</head>
<body bgcolor="B7D590">
	<div align="center">
		<h1>SSSD</h1>
		<h2>Estadisticas<h2>
		<br>
		<h3>Reclamos por fecha Especifica:<h2>
		<br>
		<form action="stats3.php?orden=<?php echo $orden;?>" method="post" id="form1">
			<table>
				<tr>
					<th>
						Desde:
					</th>
					<th>
						<input id="date" name="date" type="date" max="<?php echo $curdate = date('Y-m-d');?>" value="<?php echo $date;?>" required>
					</th>
				</tr>
				<tr>
					<th>
						Hasta:
					</th>
					<th>
						<input id="date2" name="date2" type="date" max="<?php echo $curdate = date('Y-m-d');?>" value="<?php echo $date2;?>" required>
					</th>
				</tr>
			</table>
			<br>
			<input type="submit" class="button" value="Buscar">
		</form>
	</div>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="150"><a class="tes" href='stats3.php?orden=<?php if($orden=="tecnico ASC"){echo "tecnico DESC";}else{echo "tecnico ASC";};?>&date=<?php echo $date;?>&date2=<?php echo $date2;?>'>
				<p class="pointer">Tecnico
					<?php if ($orden == "tecnico ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "tecnico DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="150"><a class="tes" href='stats3.php?orden=<?php if($orden=="nodo ASC"){echo "nodo DESC";}else{echo "nodo ASC";};?>&date=<?php echo $date;?>&date2=<?php echo $date2;?>'>
				<p class="pointer">Panel
					<?php if ($orden == "nodo ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "nodo DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="200"><a class="tes" href='stats3.php?orden=<?php if($orden=="problema ASC"){echo "problema DESC";}else{echo "problema ASC";};?>&date=<?php echo $date;?>&date2=<?php echo $date2;?>'>
				<p class="pointer">Reclamo
					<?php if ($orden == "problema ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "problema DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="90"><a class="tes" href='stats3.php?orden=<?php if($orden=="numcliente ASC"){echo "numcliente DESC";}else{echo "numcliente ASC";};;?>&date=<?php echo $date;?>&date2=<?php echo $date2;?>'>
				<p class="pointer">Cliente
					<?php if ($orden == "numcliente ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "numcliente DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="170"><a class="tes" href='stats3.php?orden=<?php if($orden=="time ASC"){echo "time DESC";}else{echo "time ASC";};;?>&date=<?php echo $date;?>&date2=<?php echo $date2;?>'>
				<p class="pointer">Hora
					<?php if ($orden == "time ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "time DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
		</tr>
<?php
$cont=0;
	foreach($registros as $r) {
		if($cont >= ($pagina * 50) && $cont < ((($pagina+1) * 50)-1) ){
	?>
		<tr>
			<th width='150' align='left'>
				<?php echo $r[1];?>
			</th>
			<th width='150'  align='left'><a href='stats2.php?nodo=<?php echo $r[2];?>' target="_blank">
				<?php echo $r[2];?>
			</a></th>
			<th width='200'  align='left'>
				<?php echo $r[3];?>
			</th>
			<th width='90'  align='right'>
				<?php echo $r[4];?>
			</th>
			<th width='170'  align='right'>
				<?php echo $r[5];?>
			</th>
		</tr>
<?php
		}
		$cont++;
	}
	?>
	</table>
	<hr>
	<table align="center" class="tb2">
<?php
	if($pagina > 0 ){
	?>
		<th align="left"><a href='stats3.php?date=<?php echo $date;?>&date2=<?php echo $date2;?>&pagina=<?php echo $pagina-1;?>&orden=<?php echo $orden;?>'><b><i><< Anterior</i></b></a></th>
<?php
	}
	?>
	<td></td>
<?php
	if($cont > ((($pagina+1)*50)-1) ){
	?>
		<th align="right"><a href='stats3.php?date=<?php echo $date;?>&date2=<?php echo $date2;?>&pagina=<?php echo $pagina+1;?>&orden=<?php echo $orden;?>'><b><i>Siguiente >></i></b></a></th>
<?php
	}
	?>
		
	</table>
	<br>
	<br>
	<hr>
	
	<br>
	<div align="center">
		<button class="button" onclick="descargar();" align="right">Descargar</button>
	</div>
	<br>
	<!-- DIV -->
	<br>
	<hr>
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
			if($cantidad > 5){
	?>
		<tr bgcolor="FFE6E6">
<?php			
			}else{
	?>
		<tr>
<?php
			}
	?>
			<th width="230" align='left'><?php echo $reclamo;?></th>
			<th width="40" align='left'><?php echo $cantidad;?></th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<hr>
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
			if($cantidad2 > 5){
	?>
		<tr bgcolor="FFE6E6">
<?php			
			}else{
	?>
		<tr>
<?php
			}
	?>
			<th width="230" align='left'><a href='stats2.php?nodo=<?php echo $panel;?>&intervalo=<?php echo $intervalo;?>' target="_blank">
				<?php echo $panel;?>
			</a></th>
			<th width="40" align='left'><?php echo $cantidad2;?></th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<hr>
	<br>
	<h3 align="center">Reclamos por Panel y Reclamo<h2>
	<br>
	<table id="xPanelyReclamo" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="230">Panel</th>
			<th width="230">Reclamo</th>
			<th width="40">Cantidad</th>
		</tr>
<?php
	if ($result3->num_rows > 0) {
		while($row = $result3->fetch_assoc()) {
			$panel= $row["panel"];
			$cantidad3= $row["cant"];
			$problema= $row["reclamo"];
			if($cantidad3 > 5){
	?>
		<tr bgcolor="FFE6E6">
<?php			
			}else{
	?>
		<tr>
<?php
			}
	?>
			<th width="230" align='left'><a href='stats2.php?nodo=<?php echo $panel;?>&intervalo=<?php echo $intervalo;?>' target="_blank">
				<?php echo $panel;?>
			</a></th>
			<th width="230" align='left'><?php echo $problema;?></th>
			<th width="40" align='left'><?php echo $cantidad3;?></th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<hr>
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
			if($cantidad6 > 5){
	?>
		<tr bgcolor="FFE6E6">
<?php			
			}else{
	?>
		<tr>
<?php
			}
	?>
			<th width="230" align='left'><?php echo $nodo;?></th>
			<th width="40" align='left'><?php echo $cantidad6;?></th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<hr>
	<br>
	<h3 align="center">Reclamos por Cliente<h2>
	<br>
	<table id="xCliente" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="230">Cliente</th>
			<th width="40">Cantidad</th>
		</tr>
<?php
	if ($result4->num_rows > 0) {
		while($row = $result4->fetch_assoc()) {
			$cliente= $row["cliente"];
			$cantidad4= $row["cant"];
			if($cantidad4 > 15){
	
	?>
		<tr bgcolor="FFE6E6">
<?php			
			}else{
	?>
		<tr>
<?php
			}
	?>
			<th width="230" align='left'><?php echo $cliente;?></th>
			<th width="40" align='left'><?php echo $cantidad4;?></th>
		</tr>
<?php
		}
	}
	?>
	</table>
	<br>
	<br>
<script>
function descargar(){
<?php
	$currDate = date('Y-m-d');
	$FileName = 'Estadisticas-'.$currDate.'.csv';
	$fp = fopen($FileName, 'w');
	fputcsv($fp, array('Estadisticas;'.$date.'-'.$date2));
	fputcsv($fp, array('Tecnico;Panel;Reclamo;Cliente;Hora'));
	foreach($registros as $r) {
		$str=$r[1].';'.$r[2].';'.$r[3].';'.$r[4].';'.$r[5];
		$aux= array($str);
		fputcsv($fp, $aux,';',' ');
	} 
	fclose($fp);

	header("Location: $FileName");
?>
	//setTimeout("location.href='<?php echo $FileName;?>'",100);
	window.open('<?php echo $FileName;?>', '_blank');
	
}
</script>
</body>
</html>

