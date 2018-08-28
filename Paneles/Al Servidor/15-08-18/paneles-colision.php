
<html>
<head>
<?php
	$order = $_POST['orden2'].'';
	
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
	if((strlen(strstr($order, 'ip')) > 0)){
		$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY INET_ATON(ip)";
		if((strlen(strstr($order, 'DESC')) > 0)){
			$sql = $sql." DESC";
		}
	}
	$result = $conn->query($sql);
	$conn->close();
	
	
	$busFrec = $_POST['FrecBus2'];
	
	//Abajo ASC &#8595; &#9660; &darr; &dArr;
	//Arriba DESC &#8593; &#9650; &uarr; &uArr;
	
?>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>PANELES</h1>
	<h2>Fecha: <?php echo $fecha; ?><h2>
	<br>
	<h2>FRECUENCIA: <?php echo $busFrec; ?><h2>
	<h4>
	<br>
	<div style="display:none">
		<form action="paneles-colision.php" method="post" id="form1">
			<select name = "orden2" id="orden2">
				<option <?php if ($order == "nombre" ) echo 'selected' ; ?> value="nombre">Nombre Ascendente</option>
				<option <?php if ($order == "nombre DESC" ) echo 'selected' ; ?> value="nombre DESC">Nombre Descendente</option>
				<option <?php if ($order == "ip" ) echo 'selected' ; ?> value="ip">IP Ascendente</option>
				<option <?php if ($order == "ip DESC" ) echo 'selected' ; ?> value="ip DESC">IP Descendente</option>
				<option <?php if ($order == "frecuencia" ) echo 'selected' ; ?> value="frecuencia">Frecuencia Ascendente</option>
				<option <?php if ($order == "frecuencia DESC" ) echo 'selected' ; ?> value="frecuencia DESC">Frecuencia Descendente</option>
				<option <?php if ($order == "clientes" ) echo 'selected' ; ?> value="clientes">Clientes Ascendente</option>
				<option <?php if ($order == "clientes DESC" ) echo 'selected' ; ?> value="clientes DESC">Clientes Descendente</option>
			</select>
			<INPUT TYPE = "Text" value="<?php echo $busFrec; ?>" NAME = "FrecBus2" id="FrecBus2">
		</form>
	</div>
	<h4>
	<br>
	<br>
	
	<table class="egt" border="1" bgcolor="FFFFFF">

		<tr bgcolor="CFCFCF">
			<th width="150">
				<a onClick="enviar('nombre')">
					Nombre 
					<?php if ($order == "nombre" ) echo '&#9660;' ; ?>
					<?php if ($order == "nombre DESC" ) echo '&#9650;' ; ?>
				</a>
			</th>
			<th width="150"><a onClick="enviar('ip')">
					IP
					<?php if ($order == "ip" ) echo '&#9660;' ; ?>
					<?php if ($order == "ip DESC" ) echo '&#9650;' ; ?>
				</a>
			</th>
			<th width="100">Marca</th>
			<th width="100"><a onClick="enviar('frecuencia')">
					Frecuencia
					<?php if ($order == "frecuencia" ) echo '&#9660;' ; ?>
					<?php if ($order == "frecuencia DESC" ) echo '&#9650;' ; ?>
				</a>
			</th>
			<th width="100"><a onClick="enviar('clientes')">
					Clientes
					<?php if ($order == "clientes" ) echo '&#9660;' ; ?>
					<?php if ($order == "clientes DESC" ) echo '&#9650;' ; ?>
				</a>
			</th>
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
				
				if($mostrar){
					if($inter){
	?>			
		<tr bgcolor="FFE6E6">
			<td align="left"><?php echo $nombre; ?></td>
			<td align="right"><?php echo $ip; ?></td>
			<td align="left"><?php echo $marca; ?></td>
			<td align="right" value="<?php echo $frecuencia; ?>"><b><i><?php echo $frecuencia; ?></i></b></td>
<?php				}else{
	?>			
		<tr>
			<td align="left" ><?php echo $nombre; ?></td>
			<td align="right"><?php echo $ip; ?></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right" value="<?php echo $frecuencia; ?>"><b><?php echo $frecuencia; ?></b></td>
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
<script>
	function enviar(ord) {
		var s = document.getElementById("orden2").value;
		document.getElementById("orden2").value= ord;
		if(s == ord){
			document.getElementById("orden2").value= ord+" DESC";
		}
		document.forms["form1"].submit();
	}
	
</script>
</body>
</html>