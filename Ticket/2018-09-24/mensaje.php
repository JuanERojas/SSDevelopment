<html>
<?php
	$modif=true;
	$msj= $_POST['mensaje'];
	if( strlen($msj) == 0 ) {
		$msj = "";
		$modif=false;
	}
	//$msj= $_GET['mensaje'];
	//echo $msj;
	
	//write
	if($modif){
		$archivo = fopen("mensaje.txt", "w") or die("No se pudo abrir el archivo!");
		fwrite($archivo, $msj);
		fclose($archivo);
		header("Location: /prueba/ticket/index.php");
		die();
	}	
	
	$msj="";
	//read
	//if ($archivo = fopen('mensaje.txt', 'r')) {
	if ($archivo = fopen('/var/www/html/prueba/ticket/mensaje.txt', 'r')) {
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
		table {
			border-collapse: collapse;
		}
		html *
		{
			font-family: sans-serif;
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
		textarea {
			resize: none;
			padding: 10px;
			border-radius: 8px;
			border: 1px solid #ddd;
			padding: 0.5rem;
			color: #666;
			box-shadow: inset 0 0 0.25rem #ddd;
			&:focus {
				outline: none;
				border: 1px solid darken(#ddd, 5%);
				box-shadow: inset 0 0 0.5rem darken(#ddd, 5%);
			}
			&[placeholder] { 
				font-style: italic;
				font-size: 0.875rem;
			}
			outline: none;
			font-style: italic;
		}
	</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<br>
	<br>
	<hr>
	<br>
	<form action="mensaje.php" method="post" id="form1">
		<textarea name="mensaje" rows="10" cols="50" id="mensaje"><?php echo $msj;?></textarea>
		<br>
		<!--input type="button" class="button" id="submit" align="center">Guardar</button-->
		<input class="button" type="submit" value="Guardar" id="submit">
	</form>
</div>
<br>
<br>
<hr>
</body>
</html>