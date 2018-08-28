
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
		
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes, tiempo FROM panel ORDER BY ".$order;
	if((strlen(strstr($order, 'ip')) > 0)){
		$sql = "SELECT nombre, ip, marca, frecuencia, clientes, tiempo FROM panel ORDER BY INET_ATON(ip)";
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
	
	$timezone  = -3; //(GMT -3:00) 
	$timeAct = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
?>
</head>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
.pointer {cursor: pointer;}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; */ /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
     left: 0; 
     top: 0; 
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.7); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 2px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
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
	<h1>APs SSServicios v0.05a</h1>
	<h2>Fecha: <?php echo $fecha; ?><h2>
	<h4>
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
		<input type="submit" value="Search (Thanks GV)">
	</form>
	<h4><i>Click on freq value to see posible overlapping.</i>
	<br>
	<br>
	
	<table class="egt" border="1" bgcolor="FFFFFF">

		<tr bgcolor="CFCFCF">
			<th width="150">
				<a onClick="enviar('nombre')">
					<p class="pointer">SSID
					<?php if ($order == "nombre" ) echo '&#9650;' ; ?>
					<?php if ($order == "nombre DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</th>
			<th width="150"><a onClick="enviar('ip')">
					<p class="pointer">IP
					<?php if ($order == "ip" ) echo '&#9650;' ; ?>
					<?php if ($order == "ip DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</th>
			<th width="100">Brand</th>
			<th width="100"><a onClick="enviar('frecuencia')">
					<p class="pointer">Freq
					<?php if ($order == "frecuencia" ) echo '&#9650;' ; ?>
					<?php if ($order == "frecuencia DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</th>
			<th width="100"><a onClick="enviar('clientes')">
					<p class="pointer">SMs
					<?php if ($order == "clientes" ) echo '&#9650;' ; ?>
					<?php if ($order == "clientes DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</th>
			<th width="150">Time</th>
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
				$tiempo= $row["tiempo"];
				
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
			<td align="right"> <a href="http://<?php echo $ip; ?>:6969" target="_blank"><?php echo $ip; ?></a></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right">
				<b><i>
					<a onClick="ver_colisiones('<?php echo $frecuencia; ?>')">
						<?php echo $frecuencia; ?>
					</a>
				</i></b>
			</td>
<?php				}else{
	?>			
		<tr>
			<td align="left" ><?php echo $nombre; ?></td>
			<td align="right"> <a href="http://<?php echo $ip; ?>:6969" target="_blank"><?php echo $ip; ?></a></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right">
				<b>
					<a onClick="ver_colisiones('<?php echo $frecuencia; ?>')">
						<p class="pointer"><?php echo $frecuencia; ?></p>
					</a>
				</b>
			</td>
<?php
					}
		if($clientes > 59){
	?>		<td align="right" bgcolor="FF5632"><font color="03183E"><i><b><?php echo $clientes; ?></b></i></font></td>
<?php	}else	{		?>		
			<td align="right"><?php echo $clientes; ?></td>		
<?php	}	 	
		//echo $timeAct - $tiempo;
		$date1Timestamp = strtotime($tiempo);
		$date2Timestamp = strtotime($timeAct);

		//Calculate the difference.
		$horNeg = false;
		$time = $date2Timestamp - $date1Timestamp;
		$horas = floor($time / (60*60))."h "; 	
		$minutos = (floor($time / 60) - ($horas*60))."m";
		if($horas > 2){
			$horNeg = true;
		}	
		if($horas > 24){
			$horas= "+24 Hrs";
			$minutos= "";
		}
		if($horNeg){
		?>
			<td align="right" ><i><b><?php echo $horas."".$minutos; ?></b></i></td>
<?php	}else{
		?>
			<td align="right" ><?php echo $horas."".$minutos; ?></td>
<?php	}
	?>
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


<div id="frecCol" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
  </div>

</div>

<script>
	var cursorX=0;
	var cursorY=0;
	
	function printMousePos(event) {
		cursorX=event.clientX;
		cursorY=event.clientY;
		//alert("Clicked on " + cursorX + " - "+ cursorY);
	}
	document.addEventListener("click", printMousePos);
	
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
	
	// MODAL
	var modal = document.getElementById('frecCol');
	
	function ver_colisiones(frec) {
		//alert("Clicked on " + frec);
		//document.getElementById("frecCol").load('pan-col.php?FrecBus2='+frec);
		req = new XMLHttpRequest();
		req.open('GET', 'pan-col.php?FrecBus2='+frec, false);
		req.send(null);
		var domElement = document.getElementById('frecCol');
		
		domElement.innerHTML = req.responseText;
				
		//domElement.style.position = "fixed";
		//domElement.style.top = cursorY;
		//domElement.style.left = cursorX;
		
		modal.style.display = "block";
	}
	
	var span = document.getElementsByClassName("close")[0];
	span.onclick = function() {
		modal.style.display = "none";
	}
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
</body>
</html>