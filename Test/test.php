
<html>
<?php
	
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
		
	$sql = "SELECT nombre, ip, marca, frecuencia, clientes, tiempo FROM panel ";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo $nombre= $row["nombre"];
			echo '<br>'.$ip= $row["ip"];
		}
	}
	$conn->close();
	
	
?>
</head>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style></style>
<body bgcolor="B7D590">
<div align="center">

</div>


</div>



<script>

</script>
</body>
</html>