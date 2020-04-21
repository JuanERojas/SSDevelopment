
<html>
<head>
<?php
	$order = $_POST['orden'].'';
	
	$servername = "localhost";
    $database = "SS-DB"; 
    $username = "root";
    $password = "";

	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT fecha FROM fecha WHERE idfecha = 1";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			//echo "fecha: " . $row["fecha"]. "<br>";
			$fecha= $row["fecha"];
		}
	} else {
		//echo "0 results";
	}
	
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY ".$order;
	$result = $conn->query($sql);
	/*
	if ($result->num_rows > 0) {
		//while($row = $result->fetch_assoc()) {
			$row = $result->fetch_assoc();
			//echo "fecha: " . $row["fecha"]. "<br>";
			$nombre= $row["nombre"];
			$ip= $row["ip"];
			$marca= $row["marca"];
			$frecuencia= $row["frecuencia"];
			$clientes= $row["clientes"];
		//}
	} else {
		//echo "0 results";
	}
	
	*/
	$conn->close();
	
	
	$busIP = $_POST['IPBus'].'';
	//echo strlen($busIP);
	//echo '<br>';
	$busNom = $_POST['NomBus'].'';
	//echo strlen($busNom);
	//echo '<br>';
	$busFrec = $_POST['FrecBus'].'';
	//echo strlen($busFrec);
	//echo '<br>';
	$busCliMin = $_POST['CliBusMin'].'';
	//echo strlen($busCliMin);
	//echo '<br>';
	$busCliMax = $_POST['CliBusMax'].'';
	//echo strlen($busCliMax);
	//echo '<br>';
	
	
?>
</head>
<body>


	<h1>PANELES</h1>
	<h2>Fecha: <?php echo $fecha; ?><h2>
	<h4>
	<br>
	<br>
	<form action="test5.php" method="post">
		Nombre<INPUT TYPE = "Text" VALUE ="" NAME = "NomBus">
		<br>
		IP<INPUT TYPE = "Text" VALUE ="" NAME = "IPBus">
		<br>
		Frecuencia<INPUT TYPE = "Text" VALUE ="" NAME = "FrecBus">
		<br>
		Clientes
		<br>
		Entre<INPUT TYPE = "Text" VALUE ="0" NAME = "CliBusMin">
		Y<INPUT TYPE = "Text" VALUE ="256" NAME = "CliBusMax">
		<br>
		<select name = "orden">
			<option value="nombre" selected= "selected">Nombre</option>
			<option value="ip">IP</option>
			<option value="frecuencia">Frecuencia</option>
			<option value="clientes">Clientes</option>
		</select>
		<input type="submit" value="Buscar">
	</form>
	<h4>
	<br>
	<br>
	
	<table class="egt">

		<tr>
			<th>Nombre</th>
			<th>IP</th>
			<th>Marca</th>
			<th>Frecuencia</th>
			<th>Clientes</th>
		</tr>
	<?php
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				$mostrar = true;
				$nombre= $row["nombre"];
				$ip= $row["ip"];
				$marca= $row["marca"];
				$frecuencia= $row["frecuencia"];
				$clientes= $row["clientes"];
				
				if( strlen($busIP) > 0 ) { 
					if(!(strlen(strstr($ip, $busIP.'')) > 0)){
						$mostrar=false;
					}
				}
				if( strlen($busNom) > 0 ) { 
					if(!(strlen(strstr($nombre, $busNom.'')) > 0)){
						$mostrar=false;
					}
				}
				if( strlen($busFrec) > 0 ) { 
					if(!(strlen(strstr($frecuencia, $busFrec.'')) > 0)){
						$mostrar=false;
					}
				}
				if( strlen($busCliMin) > 0 ) {
					if( $busCliMin < 0 ) { $busCliMin = 0; }
					if( $clientes < $busCliMin){
						$mostrar=false;
					}
				}
				if( strlen($busCliMax) > 0 ) {
					if( $busCliMax < $busCliMin ) { $busCliMax = $busCliMin+1; }
					if( $clientes > $busCliMax){
						$mostrar=false;
					}
				}
				if($mostrar){
	?>			
		<tr>
			<td><?php echo $nombre; ?></td>
			<td><?php echo $ip; ?></td>
			<td><?php echo $marca; ?></td>
			<td><?php echo $frecuencia; ?></td>
			<td><?php echo $clientes; ?></td>
		</tr>
		
	<?php			
				}
			}
		} else {
			//echo "0 results";
		}
	?>
	</table>
</body>
</html>