<html>
<?php
	$msj= $_POST['mensaje'];
	if( strlen($msj) == 0 ) {
		$msj = "";		
	}
	//$msj= $_GET['mensaje'];
	//echo $msj;
	
	//write
	$archivo = fopen("mensaje.txt", "w") or die("No se pudo abrir el archivo!");
	fwrite($archivo, $msj);
	fclose($archivo);
	
	$msj="";
	//read
	if ($archivo = fopen('mensaje.txt', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
	fclose($archivo);
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
		select {
			width:170px;
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
		.tes { 
			color: inherit; 
		}
		tr:hover {
			background-color:#f5f5f5;
		}
		hr{
			border: 0;
			height: 1px;
			background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
		}
		.button {
			background-color: #4CAF50; /* Green */
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
	</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<form action="mensaje.php" method="post" id="form1">
		<textarea name="mensaje" rows="10" cols="50" id="mensaje"><?php echo $msj;?></textarea>
		<br>
		<!--input type="button" class="button" id="submit" align="center">Guardar</button-->
		<input class="button" type="submit" value="Guardar">
	</form>
</div>
<!--div id="result"></div-->
<!-- script src="mensaje.js"></script-->
</body>
</html>