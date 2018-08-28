
<html>
<head>
<?php
	$order = $_POST['orden'].'';
	
	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "root";
    $password = "s553355S@";

	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT fecha FROM fecha WHERE idfecha = 1";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$fecha= $row["fecha"];
		}
	}
	
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY ".$order;
	$result = $conn->query($sql);
	$conn->close();
	
	
	$busIP = $_POST['IPBus'].'';
	$busNom = $_POST['NomBus'].'';
	$busFrec = $_POST['FrecBus'].'';
	$busCliMin = $_POST['CliBusMin'].'';
	$busCliMax = $_POST['CliBusMax'].'';
	
?>
</head>
<body>
<div align="center">
	<h1>PANELES</h1>
	<h2>Fecha: <?php echo $fecha; ?><h2>
	<h4>
	<br>
	<br>
	<form action="Buscador2.php" method="post">
		Nombre: <INPUT TYPE = "Text" VALUE ="<?php echo $busNom; ?>" NAME = "NomBus">
		<br>
		IP: <INPUT TYPE = "Text" VALUE ="<?php echo $busIP; ?>" NAME = "IPBus">
		<br>
		Frecuencia: <INPUT TYPE = "Text" VALUE ="<?php echo $busFrec; ?>" NAME = "FrecBus">
		<br>
		Clientes:
		<br>
		Entre: <INPUT TYPE = "Text" VALUE ="<?php echo $busCliMin; ?>" NAME = "CliBusMin">
		Y: <INPUT TYPE = "Text" VALUE ="<?php echo $busCliMax; ?>" NAME = "CliBusMax">
		<br>
		Ordenar por: 
		<select name = "orden">
			<option value="nombre" selected= "selected">Nombre</option>
			<option value="ip">IP</option>
			<option value="frecuencia">Frecuencia</option>
			<option value="clientes">Clientes</option>
		</select>
		<br>
		<input type="submit" value="Buscar">
	</form>
	<h4>
	<br>
	<br>
	
	<table class="egt" border="1">

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
				$inter=false;
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
					/*
					if(!(strlen(strstr($nombre, $busNom.'')) > 0)){
						$mostrar=false;
					}
					*/
					if(!(strlen(strstr(strtolower($nombre), strtolower($busNom.''))) > 0)){
						$mostrar=false;
					}
					
				}
				if( strlen($busFrec) > 0 ) { 
					/*
					if(!(strlen(strstr($frecuencia, $busFrec.'')) > 0)){
						$mostrar=false;
					}
					*/
					if(!(strlen(strstr($frecuencia, $busFrec.'')) > 0)){
						$mostrar=false;
					}
					
					if(strlen($busFrec.'') == 4){
						$mostrar=true;
						if( (($busFrec+10) < $frecuencia) ){
							$mostrar=false;
						}else {
							if( (($busFrec-10) > $frecuencia) ){
								$mostrar=false;
							}else{
								$inter=true;
							}
						}
						if( ($busFrec == $frecuencia) ){
							$inter=false;
						}
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
					if($inter){
	?>			
		<tr bgcolor="CF6C57">
			<td align="left"width="150"><?php echo $nombre; ?></td>
			<td align="right" width="150"><?php echo $ip; ?></td>
			<td align="left"width="100"><?php echo $marca; ?></td>
			<td align="right"width="100"><b><i><?php echo $frecuencia; ?></i></b></td>
<?php				}else{
	?>			
		<tr>
			<td align="left" width="150"><?php echo $nombre; ?></td>
			<td align="right" width="150"><?php echo $ip; ?></td>
			<td align="left"width="100"><?php echo $marca; ?></td>
			<td align="right" width="100"><b><?php echo $frecuencia; ?></b></td>
<?php
					}
		if($clientes > 59){
	?>		<td align="right" bgcolor="FF5632"><font color="03183E"><i><b><?php echo $clientes; ?></b></i></font></td>
<?php	}else	{		?>		
			<td align="right"><?php echo $clientes; ?></td>		
<?php	}	?>
		</tr>
<?php
				}
			}
		}
	?>
	</table>
</div>
</body>
</html>