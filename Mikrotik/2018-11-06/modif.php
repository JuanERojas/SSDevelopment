<html>
<?php
if( strlen($_GET['com'].'') != 0 ) { 
	$cm = $_GET['com'].'';
}
if( strlen($_GET['ip'].'') != 0 ) { 
	$ip = $_GET['ip'].'';
}
if( strlen($_GET['old'].'') != 0 ) { 
	$old = $_GET['old'].'';
}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
    body {
		font-family: Arial, Helvetica, sans-serif;
	}
	div {
		background:linear-gradient(top, red, gold);
	}
	.pointer {
		cursor: pointer;
	}
	select {
        width:170px;
    }
	.button {
		background-color: #4C72AF; /* Blue */
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
</style>
</head>
<body bgcolor="90A0D5">
<div align="center">
	<h1>SSServicios v0.01</h1>
	<h2>Editar IP Publica Fija</h2>
	<h4>
	<br>
		<table>
			<tr>
				<th align="right">
					Identificador: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "comment" id="comment" width="100" value="<?php echo $cm;?>">
				</th>
			</tr>
			<tr>
				<th align="right">
					IP Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "ipCliente" id="ipCliente" width="100" value="<?php echo $ip;?>">
				</th>
			</tr>
			<tr>
				<th>
					<INPUT TYPE = "Text" NAME = "comment2" id="comment2" width="100" value="<?php echo $old;?>" style="display:none">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Modificar" id="submit"><br>
		<br>
		<hr>
		<br>
		<br>
		<input type="submit" class="button" value="Eliminar" id="submit2"><br>
		<br>
		<hr>
		<br>
		<br>
		<button class="button" onclick="document.location.href='buscar.php';" align="center">Buscar</button>
	<br>
	<script  src="edit.js"></script>
	<script  src="elim.js"></script>
	
	<div id="result"></div>
</div>	
<script>
</script>
</body>
</html>