
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
	
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY frecuencia";
	$result = $conn->query($sql);
	$conn->close();
	
	
	//$busFrec = $_POST['FrecBus2'];
	$busFrec = $_GET['FrecBus2'];
	//$busFrec = 5050;
	
?>
</head>
<body bgcolor="B7D590">
<div align="center" id="divTabla">
	
	<table class="egt" border="1" bgcolor="FFFFFF">

		<tr bgcolor="CFCFCF">
			<th width="150">Nombre</th>
			<th width="150">IP</th>
			<th width="100">Marca</th>
			<th width="100">Frecuencia</th>
			<th width="100">Clientes</th>
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
			<td align="right"><b><i><?php echo $frecuencia; ?></i></b></td>
<?php				}else{
	?>			
		<tr>
			<td align="left" ><?php echo $nombre; ?></td>
			<td align="right"><?php echo $ip; ?></td>
			<td align="left" ><?php echo $marca; ?></td>
			<td align="right"><b><?php echo $frecuencia; ?></b></td>
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