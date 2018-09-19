<html>
<?php
	$msj= $_GET['mensaje'];
	
	//write
	$archivo = fopen("mensaje.txt", "w") or die("No se pudo abrir el archivo!");
	fwrite($archivo, $msj);
	fclose($archivo);
	
	//read
	if ($archivo = fopen('mensaje.txt', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj." - ".$linea;
		}	
	}
	fclose($archivo);
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<textarea name="textarea" rows="10" cols="50" id="mensaje"><?php echo $msj;?></textarea>
	<br>
	<button class="button" id="submit" align="center">Guardar</button>
</div>
<script src="mensaje.js"></script>
</body>
</html>