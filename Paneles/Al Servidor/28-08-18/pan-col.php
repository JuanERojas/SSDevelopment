
<html>
<head>
<?php
	
	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes, tiempo FROM panel ORDER BY frecuencia";
	$result = $conn->query($sql);
	$conn->close();
	
	
	//$busFrec = $_POST['FrecBus2'];
	$busFrec = $_GET['FrecBus2'];
	//$busFrec = 5050;
	$timezone  = -3; //(GMT -3:00) 
	$timeAct = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
?>
</head>
<body bgcolor="B7D590">
<div align="center" id="divTabla" >
	
	<table class="egt" border="1" bgcolor="FFFFFF" style="border:solid">

		<tr bgcolor="CFCFCF">
			<th width="150">SSID</th>
			<th width="150">IP</th>
			<th width="100">Brand</th>
			<th width="100">Freq</th>
			<th width="100">SMs</th>
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
			<td align="left"><a href="http://<?php echo $ip; ?>:6969" target="_blank"><?php echo $ip; ?></a></td>
			<td align="left"><?php echo $marca; ?></td>
			<td align="right"><b><i><?php echo $frecuencia; ?></i></b></td>
<?php				}else{
	?>			
		<tr>
			<td align="left" ><?php echo $nombre; ?></td>
			<td align="left"><a href="http://<?php echo $ip; ?>:6969" target="_blank"><?php echo $ip; ?></a></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right"><b><?php echo $frecuencia; ?></b></td>
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
	</table>
</div>
</body>
</html>