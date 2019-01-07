<html>
<?php
	$intervalo = $_GET['intervalo'];
	if( strlen($intervalo) == 0 ) {
		$intervalo = $_POST['intervalo'].'';
		if(strlen($intervalo) == 0 ){
			$intervalo = 0;
		}		
	}
	$divi=1;
	$nodo = $_GET['nodo']; //NODO (no panel)
	if($nodo=='FTTH'){
		$divi=4;
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
	$sql = "SELECT DISTINCT r.idreclamo, t.nombre AS tecnico, r.nodo, r.problema, r.numcliente, r.time FROM `SS-DBTK`.reclamo r 
		INNER JOIN `SS-DBTK`.tecnico AS t ON r.tecnico = t.idtecnico 
		INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
		INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
		WHERE r.`time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) 
		AND n.nombre LIKE '".$nodo."'  
		ORDER BY ".$orden.";";
	
	if($intervalo == -1){
		$sql = "SELECT DISTINCT r.idreclamo, t.nombre AS tecnico, r.nodo, r.problema, r.numcliente, r.time FROM `SS-DBTK`.reclamo r 
			INNER JOIN `SS-DBTK`.tecnico AS t ON r.tecnico = t.idtecnico 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
			WHERE n.nombre LIKE '".$nodo."'  
			ORDER BY ".$orden.";";
	}
	
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$idreclamo= $row["idreclamo"];
			$tecnico= $row["tecnico"];
			$panel= $row["nodo"];
			$problema= $row["problema"];
			$numcliente= $row["numcliente"];
			$timest= $row["time"];
			
			$time = strtotime($timest);
			$timezone  = -3; //(GMT -3:00) 
			$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
			$curtime = strtotime($tiempo);
			
			array_push($registros,array($idreclamo, $tecnico, $panel, $problema, $numcliente, $timest));
		}
	}
	
	//Por reclamo
	$sql = "SELECT DISTINCT r.idreclamo, problema AS reclamo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
			WHERE r.`time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) 
			AND n.nombre LIKE '".$nodo."'  
			GROUP BY problema 
			ORDER BY cant DESC 
			LIMIT 10;";
	if($intervalo == -1){
		$sql = "SELECT DISTINCT r.idreclamo, problema AS reclamo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo 
			WHERE n.nombre LIKE '".$nodo."'  
			GROUP BY problema 
			ORDER BY cant DESC 
			LIMIT 10;";
	}
	$result1 = $conn->query($sql);
	// PieChart
	$porTipo=array();
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$json = '{}';
			$json = json_decode($data,true);
			$json["reclamo"] = $row["reclamo"];
			$json["cantidad"] = ($row["cant"])/$divi;
			array_push($porTipo,$json);
		}
	}
	
/*	
	//Por panel
	$sql = "SELECT nodo AS panel, COUNT(*) AS cant FROM reclamo r WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) AND r.nodo LIKE '".$nodo."' GROUP BY nodo ORDER BY cant DESC LIMIT 10;";
	if($intervalo == -1){
		$sql = "SELECT nodo AS panel, COUNT(*) AS cant FROM reclamo r WHERE r.nodo LIKE '".$nodo."' GROUP BY nodo ORDER BY cant DESC LIMIT 10;";
	}
	$result2 = $conn->query($sql);
	
	//Por Nodo
	$sql = "SELECT n.nombre AS nodo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) AND r.nodo LIKE '".$nodo."' GROUP BY n.nombre ORDER BY cant DESC LIMIT 10;";
	if($intervalo == -1){
		$sql = "SELECT n.nombre AS nodo, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo WHERE r.nodo LIKE '".$nodo."' GROUP BY n.nombre ORDER BY cant DESC LIMIT 10;";
	}
	$result6 = $conn->query($sql);
*/	
	
	//Por Cliente
	$sql = "SELECT DISTINCT r.idreclamo, numcliente AS cliente, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
			WHERE r.`time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) 
			AND n.nombre LIKE '".$nodo."'  
			GROUP BY numcliente 
			ORDER BY cant DESC 
			LIMIT 15;";
	if($intervalo == -1){
		$sql = "SELECT DISTINCT r.idreclamo, numcliente AS cliente, COUNT(*) AS cant FROM `SS-DBTK`.reclamo r 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
			WHERE n.nombre LIKE '".$nodo."'  
			GROUP BY numcliente 
			ORDER BY cant DESC 
			LIMIT 15;";
	}
	$result4 = $conn->query($sql);
	
	$conn->close();
	
?>
<head>
	<title>Estadisticas</title>
	<link rel="shortcut icon" href="icon.png"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
		var porTipo = [];
		porTipo[ porTipo.length ] = ['Reclamo', 'Cantidad'];
<?php
		foreach($porTipo as $p) {
?>		
		porTipo[ porTipo.length ] = ["<?php echo $p["reclamo"];?>", <?php echo $p["cantidad"];?>];
<?php
		}
?>	
		var data = google.visualization.arrayToDataTable(porTipo);

        var options = {
			title: 'Reclamos por Tipo',
			backgroundColor: '#9BB579',
			legend: {
				alignment: 'center',
				position: 'top'
			}
        };
        var chart = new google.visualization.PieChart(document.getElementById('piechartPorTipo'));

        chart.draw(data, options);
      }
    </script>
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
		<h3>Reclamos por fecha<h2>
		<br>
		<form action="stats5.php?nodo=<?php echo $nodo;?>" method="post" id="form1">
			<select id="intervalo" name = "intervalo" onchange="this.form.submit()">
				<option <?php if ($intervalo == 0 ) echo 'selected' ; ?> value="0">Seleccione Un Margen</option>
				<option <?php if ($intervalo == -1 ) echo 'selected' ; ?> value="-1">Todos</option>
				<option <?php if ($intervalo == 36288000 ) echo 'selected' ; ?> value="36288000">Ultimo Mes</option>
				<option <?php if ($intervalo == 1209600 ) echo 'selected' ; ?> value="1209600">Ultimas 2 Semanas</option>
				<option <?php if ($intervalo == 604800 ) echo 'selected' ; ?> value="604800">Ultima Semana</option>
				<option <?php if ($intervalo == 86400 ) echo 'selected' ; ?> value="86400">Ultimas 24 Horas</option>
				<option <?php if ($intervalo == 7200 ) echo 'selected' ; ?> value="7200">Ultimas 2 Horas</option>
				<option <?php if ($intervalo == 3600 ) echo 'selected' ; ?> value="3600">Ultima Hora</option>
				<option <?php if ($intervalo == 1800 ) echo 'selected' ; ?> value="1800">Ultima Media Hora</option>
				<option <?php if ($intervalo == 300 ) echo 'selected' ; ?> value="300">Ultimos 5 Minutos</option>
			</select>
			<br>
			<br>
		</form>
	</div>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="150"><a class="tes" href='stats4.php?orden=<?php if($orden=="tecnico ASC"){echo "tecnico DESC";}else{echo "tecnico ASC";};?>&nodo=<?php echo $nodo;?>&intervalo=<?php echo $intervalo;?>'>
				<p class="pointer">Tecnico
					<?php if ($orden == "tecnico ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "tecnico DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="150"><a class="tes" href='stats4.php?orden=<?php if($orden=="nodo ASC"){echo "nodo DESC";}else{echo "nodo ASC";};?>&nodo=<?php echo $nodo;?>&intervalo=<?php echo $intervalo;?>'>
				<p class="pointer">Panel
					<?php if ($orden == "nodo ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "nodo DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="200"><a class="tes" href='stats4.php?orden=<?php if($orden=="problema ASC"){echo "problema DESC";}else{echo "problema ASC";};?>&nodo=<?php echo $nodo;?>&intervalo=<?php echo $intervalo;?>'>
				<p class="pointer">Reclamo
					<?php if ($orden == "problema ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "problema DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="90"><a class="tes" href='stats4.php?orden=<?php if($orden=="numcliente ASC"){echo "numcliente DESC";}else{echo "numcliente ASC";};?>&nodo=<?php echo $nodo;?>&intervalo=<?php echo $intervalo;?>'>
				<p class="pointer">Cliente
					<?php if ($orden == "numcliente ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "numcliente DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="170"><a class="tes" href='stats4.php?orden=<?php if($orden=="time ASC"){echo "time DESC";}else{echo "time ASC";};?>&nodo=<?php echo $nodo;?>&intervalo=<?php echo $intervalo;?>'>
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
			<th width='150'  align='left'><a href='stats2.php?nodo=<?php echo $r[2];?>&intervalo=<?php echo $intervalo;?>' target="_blank">
				<?php echo $r[2];?>
			</a></th>
			<th width='200'  align='left'>
				<?php echo $r[3];?>
			</th>
			<th width='70'  align='right'>
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
		<th align="left"><a href='stats4.php?intervalo=<?php echo $intervalo;?>&pagina=<?php echo $pagina-1;?>&orden=<?php echo $orden;?>&nodo=<?php echo $nodo;?>'><b><i><< Anterior</i></b></a></th>
<?php
	}
	?>
	<td></td>
<?php
	if($cont > ((($pagina+1)*50)-1) ){
	?>
		<th align="right"><a href='stats4.php?intervalo=<?php echo $intervalo;?>&pagina=<?php echo $pagina+1;?>&orden=<?php echo $orden;?>&nodo=<?php echo $nodo;?>'><b><i>Siguiente >></i></b></a></th>
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
	foreach($porTipo as $p) {
			$reclamo= $p["reclamo"];
			$cantidad= $p["cantidad"];
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
			<th width="40" align='left'><?php echo intval($cantidad)/$divi;?></th> <!-- ARREGLAR CHANTADA -->
		</tr>
	<?php
	}
	?>
	</table>
	<br>
	<div align="center">
		<div id="piechartPorTipo" align="right" style="width: 800px; height: 500px;"></div>
	</div>
	<br>
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
			<th width="40" align='left'><?php echo intval($cantidad4)/$divi;?></th> <!-- ARREGLAR CHANTADA -->
		</tr>
<?php
		}
	}
	?>
	</table>
<script>
function descargar(){
<?php
	$currDate = date('Y-m-d');
	$FileName = 'Estadisticas-'.$nodo.'-'.$currDate.'.csv';
	$fp = fopen(getcwd()."/stats/".$FileName, 'w');
	fputcsv($fp, array('Estadisticas;'.$nodo));
	fputcsv($fp, array('Tecnico;Panel;Reclamo;Cliente;Hora'));
	foreach($registros as $r) {
		$str=$r[1].';'.$r[2].';'.$r[3].';'.$r[4].';'.$r[5];
		$aux= array($str);
		fputcsv($fp, $aux,';',' ');
	} 
	fclose($fp);

//	header("Location: $FileName");
?>
	//setTimeout("location.href='<?php echo $FileName;?>'",100);
	window.open('stats/<?php echo $FileName;?>', '_blank');
	
}
</script>
</body>
</html>


