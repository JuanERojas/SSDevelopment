
<html>
<?php
	$order = $_POST['orden'].'';
	
	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";

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
	
	
	$busIP = $_POST['IPBus'].'';
	$busNom = $_POST['NomBus'].'';
	$busFrec = $_POST['FrecBus'].'';
	if( !(strlen($busFrec) == 4) ) { 
		$busFrec = '';
	}else{
		if( ($busFrec > 6100) || ($busFrec < 4700) || !( ($busFrec % 5) == 0) ) { 
			$busFrec = '';
		}
	}
	$busCliMin = $_POST['CliBusMin'].'';
	if( strlen($busCliMin) == 0 ) { 
		$busCliMin = 0;
	}			
	$busCliMax = $_POST['CliBusMax'].'';
	if( strlen($busCliMax) == 0 ) { 
		$busCliMax = 254;
	}
	//Abajo ASC &#8595; &#9650; &darr; &dArr;
	//Arriba DESC &#8593; &#9660; &uarr; &uArr;
	///Test;
	
?>
</head>
<head>
<style>
table {
    border-collapse: collapse;
}
html *
{
    font-family: sans-serif;
}
</style>
<body bgcolor="B7D590">
<div align="center">
	<h1>APs SSServicios v0.02a</h1>
	<h2>Fecha: <?php echo $fecha; ?><h2>
	<h4>
	<br>
	<br>
	<form action="index.php" method="post" id="form1">
		<table>
			<tr>
				<th align="right">
					SSID: 
				</th>
				<th>
					<INPUT TYPE = "Text" VALUE ="<?php echo $busNom; ?>" NAME = "NomBus">
				</th>
			</tr>
			<tr>
				<th align="right">
					IP: 
				</th>
				<th>
					<INPUT TYPE = "Text" VALUE ="<?php echo $busIP; ?>" NAME = "IPBus">
				</th>
			</tr>
			<tr>
				<th align="right">
					Freq: 
				</th>
				<th>
					<INPUT TYPE = "Text" VALUE ="<?php echo $busFrec; ?>" NAME = "FrecBus">
				</th>
			</tr>
		</table>
		<table>
			<tr>
				<th>
					SMs:
				</th>
			</tr>
		</table>
		<table>
			<tr>
				<th>
					Between 
				</th>
				<th>
					<INPUT TYPE = "Text" VALUE ="<?php echo $busCliMin; ?>" NAME = "CliBusMin">
				</th>
				<th>
					and 
				</th>
				<th>
					<INPUT TYPE = "Text" VALUE ="<?php echo $busCliMax; ?>" NAME = "CliBusMax">
				</th>
			</tr>
			<tr>
				<div style="display:none">
					<select name = "orden" id="orden">
						<option <?php if ($order == "nombre" ) echo 'selected' ; ?> value="nombre">Nombre Ascendente</option>
						<option <?php if ($order == "nombre DESC" ) echo 'selected' ; ?> value="nombre DESC">Nombre Descendente</option>
						<option <?php if ($order == "ip" ) echo 'selected' ; ?> value="ip">IP Ascendente</option>
						<option <?php if ($order == "ip DESC" ) echo 'selected' ; ?> value="ip DESC">IP Descendente</option>
						<option <?php if ($order == "frecuencia" ) echo 'selected' ; ?> value="frecuencia">Frecuencia Ascendente</option>
						<option <?php if ($order == "frecuencia DESC" ) echo 'selected' ; ?> value="frecuencia DESC">Frecuencia Descendente</option>
						<option <?php if ($order == "clientes" ) echo 'selected' ; ?> value="clientes">Clientes Ascendente</option>
						<option <?php if ($order == "clientes DESC" ) echo 'selected' ; ?> value="clientes DESC">Clientes Descendente</option>
					</select>
				</div>
			</tr>
		</table>
		<br>
		<input type="submit" value="Buscar">
	</form>
	<h4>
	<br>
	<br>
	
	<table class="egt" border="1" bgcolor="FFFFFF">

		<tr bgcolor="CFCFCF">
			<th width="150">
				<a onClick="enviar('nombre')">
					SSID
					<?php if ($order == "nombre" ) echo '&#9650;' ; ?>
					<?php if ($order == "nombre DESC" ) echo '&#9660;' ; ?>
				</a>
			</th>
			<th width="150"><a onClick="enviar('ip')">
					IP
					<?php if ($order == "ip" ) echo '&#9650;' ; ?>
					<?php if ($order == "ip DESC" ) echo '&#9660;' ; ?>
				</a>
			</th>
			<th width="100">Brand</th>
			<th width="100"><a onClick="enviar('frecuencia')">
					Freq
					<?php if ($order == "frecuencia" ) echo '&#9650;' ; ?>
					<?php if ($order == "frecuencia DESC" ) echo '&#9660;' ; ?>
				</a>
			</th>
			<th width="100"><a onClick="enviar('clientes')">
					SMs
					<?php if ($order == "clientes" ) echo '&#9650;' ; ?>
					<?php if ($order == "clientes DESC" ) echo '&#9660;' ; ?>
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
					
					if(!(strlen(strstr($frecuencia, $busFrec.'')) > 0)){
						$mostrar=false;
					}
					*/
					if(strlen($busFrec.'') == 4){
						//$mostrar=true;
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
		<tr bgcolor="FFE6E6">
			<td align="left"><?php echo $nombre; ?></td>
			<td align="right" href="<?php echo $ip; ?>:6969"><?php echo $ip; ?></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right">
				<b><i>
					<a onClick="colisiones('<?php echo $frecuencia; ?>')">
						<?php echo $frecuencia; ?>
					</a>
				</i></b>
			</td>
<?php				}else{
	?>			
		<tr>
			<td align="left" ><?php echo $nombre; ?></td>
			<td align="right" href="<?php echo $ip; ?>:6969"><?php echo $ip; ?></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right">
				<b>
					<a onClick="colisiones('<?php echo $frecuencia; ?>')">
						<?php echo $frecuencia; ?>
					</a>
				</b>
			</td>
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
	<div style="display:none">
		<form action="paneles-colision.php" method="post" id="form2" target="_blank">
			<INPUT TYPE = "Text" NAME = "FrecBus2" id="FrecBus2" value="">
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
		</form>
	</div>
	</table>
</div>
<script>
	function enviar(ord) {
		var s = document.getElementById("orden").value;
		document.getElementById("orden").value= ord;
		if(s == ord){
			document.getElementById("orden").value= ord+" DESC";
		}
		document.forms["form1"].submit();
	}
	function colisiones(elem) {
		document.getElementById("orden2").value= document.getElementById("orden").value;
		document.getElementById("FrecBus2").value= elem;
		//alert("Clicked on " + elem);
		document.forms["form2"].submit();
	}
</script>
</body>
</html>