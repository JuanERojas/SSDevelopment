<html>
<?php
/*	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
*/	
		
	$servername = "localhost";
    $database = "SS-DBTK"; 
    $username = "root";
    $password = "";

	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
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
	
	$conn->close();
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<style type="text/css">     
		select {
			width:170px;
		}
	</style>
</head>
<body bgcolor="B7D590">
	<div align="center">
		<h1>SSSD</h1>
		<h2>Estadisticas por fecha<h2>
		<h4>
		<br>
		<select id="intervalo" onchange="cargarReg(this)">
			<option value="0">Seleccione Un Margen</option>
			<option value="-1">Todos</option>
			<option value="7200">Ultimas 2 Horas</option>
			<option value="3600">Ultima Hora</option>
			<option value="1800">Ultima Media Hora</option>
			<option value="300">Ultimos 5 Minutos</option>
		</select>
	</div>
	<br>
	<table id="result" align="center"></table>
<script>
	function cargarReg(obj) {
		var div = document.getElementById('result');
		var valor = obj.options[obj.selectedIndex].value;
		
		div.innerHTML='';
	<?php
			foreach($registros as $r) {
		?>
		if(valor == -1){
			div.innerHTML += "<tr><?php echo $r[0]."---".$r[1]."---".$r[2]."---".$r[3]."---".$r[4]; ?></tr>";//+"<br>";
		}else{
			if(valor > <?php echo $r[5]; ?>){
				div.innerHTML += "<tr><?php echo $r[0]."---".$r[1]."---".$r[2]."---".$r[3]."---".$r[4]; ?></tr>";//+"<br>";
			}
		}	
		
	<?php
			}
		?>	
	}
</script>
</body>
</html>

