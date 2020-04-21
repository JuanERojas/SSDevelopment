<html>
<?php

    $servername = "localhost";
    $database = "SS-DBFO"; 
    $username = "root";
    $password = "";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT idpon, nombre, codigo FROM pon";
	$resultPon = $conn->query($sql);
	
	$sql = "SELECT idnap, numero, codpon FROM nap";
	$resultNap = $conn->query($sql);
	$conn->close();
	
	$Naps=array();
	
	if ($resultNap->num_rows > 0) {
		while($row = $resultNap->fetch_assoc()) {
			$idNap= $row["idnap"];
			$numeroNap= $row["numero"];
			$codPon= $row["codpon"];
			
			array_push($Naps,array($idNap,$numeroNap,$codPon));
		}
	}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.01 beta</h1>
	<h2>FO alta clientes<h2>
	<h4>
	<br>
<!--<form action="cargarCliente.php" method="post" id="form1">-->
		<table>
			<tr>
				<th align="right">
					PON: 
				</th>
				<th>
					<select id="codPon" width="150" onchange="cargarNaps(this);">
						<option value="0" selected>Seleccione un PON</option>
	<?php
						if ($resultPon->num_rows > 0) {
							while($row = $resultPon->fetch_assoc()) {
								$idPon= $row["idpon"];
								$nombrePon= $row["nombre"];
								$codigoPon= $row["codigo"];
							
		?>
						<option value="<?php echo $codigoPon; ?>"><?php echo $codigoPon." - ".$nombrePon; ?></option>
	<?php
							}
						}
		?>
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					NAP: 
				</th>
				<th>
					<select id="codNap" width="150">
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					Cliente: 
				</th>
				<th width="150">
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" value="Agregar" id="submit">
<!--</form>-->
	<br>
	<script  src="insert.js"></script>
	
	<div id="result"></div>
	
<script>
	function cargarNaps(obj) {
		var valor = obj.options[obj.selectedIndex].value;
		var select = document.getElementById("codNap");
		removeOptions(select);
		var option;
	<?php
			foreach($Naps as $n) {
		?>
		//alert("Clicked on " + valor);
		if(valor == "<?php echo $n[2]; ?>"){
			option = document.createElement("option");
			option.text = "NAP- "+<?php echo $n[1]; ?>;
			option.value = <?php echo $n[0]; ?>;
			select.add(option);
		}
	<?php
			}
		?>	
	}
	
	function removeOptions(selectbox){
		var i;
		for(i = selectbox.options.length - 1 ; i >= 0 ; i--){
			selectbox.remove(i);
		}
	}
	

</script>
</body>
</html>