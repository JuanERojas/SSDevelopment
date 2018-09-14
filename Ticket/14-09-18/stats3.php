<html>
<?php
	$date = $_POST['date'].'';
//	echo $date."<br>";
	if( strlen($date) == 0 ) { 
		$date = date('Y-m-d');
	}
	$date2 = $_POST['date2'].'';
//	echo $date."<br>";
	if( strlen($date2) == 0 ) { 
		$date2 = date('Y-m-d');
	}
	
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
	$sql = "SELECT idreclamo, t.nombre AS tecnico, nodo, problema, numcliente, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` between '".$date." 00:00:00' and '".$date2." 23:59:59' ORDER BY idreclamo;";
	
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
			
			array_push($registros,array($idreclamo, $tecnico, $nodo, $problema, $numcliente, $timest));
		}
	}
	
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
	</style>
</head>
<body bgcolor="B7D590">
	<div align="center">
		<h1>SSSD</h1>
		<h2>Estadisticas<h2>
		<br>
		<h3>Reclamos por fecha Especifica:<h2>
		<br>
		<form action="stats3.php" method="post" id="form1">
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
			<th width="150">Tecnico</th>
			<th width="100">Panel</th>
			<th width="230">Reclamo</th>
			<th width="70">Cliente</th>
			<th width="70">Hora</th>
		</tr>
<?php
	foreach($registros as $r) {
	?>
		<tr>
			<th width='150' align='left'>
				<?php echo $r[1];?>
			</th>
			<th width='100'  align='left'><a href='stats2.php?nodo=<?php echo $r[2];?>' target="_blank">
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
	?>
	</table>
	<br>
	<br>
<script></script>
</body>
</html>

