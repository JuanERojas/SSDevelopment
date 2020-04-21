<html>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>IPs Publicas</title>
	<link rel="shortcut icon" href="icon.png"/>
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
	<h2>Buscar IP Publica Fija<h2>
	<h4>
	<br>
	<form action="busIP.php" method="post" id="form1">
		<table>
			<tr>
				<th align="right">
					Nombre Cliente: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "b1" id="b1" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					IP Interna: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "b2" id="b2" width="100">
				</th>
			</tr>
			<tr>
				<th align="right">
					IP Publica: 
				</th>
				<th>
					<INPUT TYPE = "Text" NAME = "b3" id="b3" width="100">
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Buscar">
	</form>
	<br>
	<br>
	<br>
	<hr>
	<br>
	<button class="button" onclick="document.location.href='index.php';" align="center">Atras</button>
</div>	
<script></script>
</body>
</html>