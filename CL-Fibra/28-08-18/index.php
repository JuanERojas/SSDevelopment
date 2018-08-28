<html>
<?php

	$servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT idpon, codigo FROM pon";
	$resultPon = $conn->query($sql);
	
	$sql = "SELECT idnap, numero, codpon FROM nap ORDER BY codpon, idnap";
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
<style type="text/css">     
    select {
        width:170px;
    }
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.01 Alfa</h1>
	<h2>FO alta clientes<h2>
	<h4>
	<br>
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
								$codigoPon= $row["codigo"];
							
		?>
						<option value="<?php echo $codigoPon; ?>"><?php echo $codigoPon; ?></option>
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
					<select id="codNap" width="150" onchange="vaciarInput()">
					</select>
				</th>
			</tr>
			<tr>
				<th align="right">
					Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente" width="100">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" value="Agregar" id="submit">
	<br>
	<script  src="insert.js"></script>
	
	<div id="result"></div>
	
<script>
	function cargarNaps(obj) {
		vaciarInput();
		var valor = obj.options[obj.selectedIndex].value;
		var select = document.getElementById("codNap");
		removeOptions(select);
		var option;
	<?php
			foreach($Naps as $n) {
		?>
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
	
	function vaciarInput(){
		document.getElementById("codCliente").value = "";
	}
	
</script>
</body>
</html>