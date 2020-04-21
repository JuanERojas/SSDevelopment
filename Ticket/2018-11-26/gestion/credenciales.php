<html>
<?php
	$ipcliente = $_GET['ip'];
?>
<head>
	<title>Credenciales</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">     
    body {
		font-family: Arial, Helvetica, sans-serif;
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
	html *
	{
		font-family: sans-serif;
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.9</h1>
	<h2>Credenciales de Ingreso<h2>
	<h4>
	<br>
	<form action="main.php" method="post" id="form1">
		<table>
			<tr>
				<th align="right">
					Usuario: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "user" id="user" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					Contraseña: 
				</th>
				<th>
					<INPUT TYPE = "password" NAME = "pass" id="pass" width="100">
				</th>
			</tr>
			<tr>
				<th>
					<input type="hidden" name="ip" id="ip" value="<?php echo $ipcliente;?>">
				</th>
			</tr>
		</table>
		<br>
		<input class="button" type="submit" value="Ingresar">
	</form>
</div>	
<script></script>
</body>
</html>