
<html>
<head>
<?php

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
	
	
	
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY nombre";
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
				$nombre= $row["nombre"];
				$ip= $row["ip"];
				$marca= $row["marca"];
				$frecuencia= $row["frecuencia"];
				$clientes= $row["clientes"];
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
		} else {
			//echo "0 results";
		}
	?>
	</table>
</body>
</html>