<?php
	
	session_start();
	if($_SESSION['key'] != "aceptado"){
?>
		<script>setTimeout("location.href='index.php'",0);</script>
<?php
	}
	if($_POST['pass'] != "ss553355"){
		if($_SESSION['cargado'] != "true"){
?>
			<script>setTimeout("location.href='index.php'",0);</script>
<?php	}
	}else{
		$_SESSION['cargado']="true";
	}
?>
<head>
	<title>Menu</title>
	<link rel="shortcut icon" href="icon.png"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<style type="text/css">     
		body {
			font-family: Arial, Helvetica, sans-serif;
		}
		html *
		{
			font-family: sans-serif;
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
		hr{
			border: 0;
			height: 1px;
			background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
		}
	</style>
</head>
<body bgcolor="90A0D5">
	<div align="center">
		<h1>SSServicios v0.02</h1>
		<h2>Menu</h2>
		<h4>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.location.href='verClientes.php'">Ver Clientes</button>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.location.href='verRegistroXPon.php'">Ver Clientes x PON</button>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.location.href='buscar.html'">Buscar</button>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.location.href='agregarClientes.php'">Cargar Clientes</button>
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="window.location.href='agregarNaps.php'">Cargar NAP</button>	
		<br>
		<br>
		<hr>
		<br>
		<button class="button" onclick="logout();">Salir</button>	
	</div>
</body>
<script>
	function logout() {
<?php
		session_unset();
		session_destroy();
		session_start();
	?>
		setTimeout("location.href='index.php'",0);
	}
	
</script>