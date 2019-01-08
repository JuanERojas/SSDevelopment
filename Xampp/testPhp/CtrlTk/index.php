<html>
<?php
	
	$orden = $_GET['orden'];
	if( strlen($orden) == 0 ) { 
		$orden = "idticket ASC";
	}

	$servername = "localhost";
    $database = "SS-DBCtrlTK"; 
    $username = "root";
    $password = "";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT idticket, numticket, numcliente, estado, fecha FROM ticket t ORDER BY ".$orden.";";
	$result = $conn->query($sql);
	
	$conn->close();
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	table {
		border-collapse: collapse;
	}
	html *
	{
		font-family: sans-serif;
	}
	a:link {
		text-decoration: none;
	}
	a:visited {
		text-decoration: none;
	}
	a:hover {
		text-decoration: underline;
	}
	a:active {
		text-decoration: underline;
	}
	tr:hover {
		background-color:#f5f5f5;
	}
	.button {
		background-color: #AF4C4C; /* Blue */
		border: none;
		color: white;
		padding: 10px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		cursor: pointer;
	}
	hr{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
	.tes { 
		color: inherit; 
	}
</style>
</head>
<body bgcolor="D59090">
<div align="center">
	<h1>SSServicios v0.01 Alfa</h1>
	<h2>Ver Tickets<h2>
	<h4>
	<br>
	<hr>
	<br>
	<br>
	<table id="result" class="egt" align="center"  border="1" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="100"><a class="tes" href='index.php?orden=<?php if($orden=="numticket ASC"){echo "numticket DESC";}else{echo "numticket ASC";};?>'>
				<p class="pointer">TICKET
					<?php if ($orden == "numticket ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "numticket DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="100"><a class="tes" href='index.php?orden=<?php if($orden=="numcliente ASC"){echo "numcliente DESC";}else{echo "numcliente ASC";};?>'>
				<p class="pointer">CLIENTE
					<?php if ($orden == "numcliente ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "numcliente DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="210"><a class="tes" href='index.php?orden=<?php if($orden=="estado ASC"){echo "estado DESC";}else{echo "estado ASC";};?>'>
				<p class="pointer">ESTADO
					<?php if ($orden == "estado ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "estado DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
			<th width="200"><a class="tes" href='index.php?orden=<?php if($orden=="fecha ASC"){echo "fecha DESC";}else{echo "fecha ASC";};?>'>
				<p class="pointer">AGE
					<?php if ($orden == "fecha ASC" ) echo '&#9650;' ; ?>
					<?php if ($orden == "fecha DESC" ) echo '&#9660;' ; ?>
				</a></p>
			</a></th>
		</tr>
<?php
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$numticket= $row["numticket"];
			$numcliente= $row["numcliente"];
			$estado= $row["estado"];
			$fecha= $row["fecha"];
	?>
		<tr>
			<th width='70' align='left'>
				<?php echo $numticket;?>
			</th>
			<th width='70'  align='left'>
				<?php echo $numcliente;?>
			</th>
			<th width='90'  align='right'>
				<?php echo $estado;?>
			</th>
			<th width='250'  align='right'>
				<?php echo $fecha;?>
			</th>
		</tr>
<?php
		}
	}
	?>
	</table>
	
<script></script>
</body>
</html>