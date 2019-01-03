<html>
<?php
	$opc = 'name';
	$bus = $_GET['bus'];
	session_start();
	$registros = $_SESSION['registros'];
	
	
	function acomodar_b($aux){
		
		$partes = explode("/", $aux);
		$aux=$partes[0];
		$b='b';
		if($aux>=1000){
			$aux = $aux/1000;
			$b=' Kb';
		}
		if($aux>=1000){
			$aux = $aux/1000;
			$b=' Mb';
		}
		$final= $aux.$b;
		$aux=$partes[1];
		$b='b';
		if($aux>=1000){
			$aux = $aux/1000;
			$b=' Kb';
		}
		if($aux>=1000){
			$aux = $aux/1000;
			$b=' Mb';
		}
		$final = $final.'/'.$aux.$b;
		//echo $final.'<br>';
		
		return $final;
	}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Resultados</title>
	<link rel="shortcut icon" href="resultados.png"/>
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
	tr:hover {
		background-color:#f5f5f5;
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
<!--body bgcolor="B7D590"-->
<div align="center">
	<h1>SSServicios v0.03</h1>
	<h2>Buscar En los Cores<h2>
	<h4>
	<br>
	<br>
	<h3>Datos Encontrados</h3>
	<br>
		<table class="egt" border="1" bgcolor="FFFFFF">
			<tr bgcolor="CFCFCF">
				<th align="left" width="90">
					CORE 
				</th>
				<th align="left" width="450">
					Name
				</th>
				<th align="left" width="150">
					Target 
				</th>
				<th align="right" width="150">
					Max-Limit 
				</th>
				<!--th align="right" width="250">
					Comment 
				</th-->
			</tr>
	<?php
	foreach($registros as $r) {
		if(strlen(strstr(strtolower($r['name']), strtolower($bus.''))) > 0){
		?>
			<tr>
				<th align="left"><?php echo $r['core']; ?></th>
				<th align="left"  width="450"><?php echo utf8_encode($r['name']); ?></th>
				<th align="right">
				<?php
					$aux = explode(",", $r['target']);
					foreach($aux as $a) {
						echo $a.'<br>'; 
					}
					?>
				</th>
				<th align="right"><?php echo acomodar_b($r['max-limit']); ?></th>
				<!--th align="left"><?php// echo utf8_encode($r['comment']); ?></th-->
			</tr>
	<?php
		}
	}
		?>
		</table>
		<br>
		<br>
		<br>
		<hr>
		<br>
	<br>
</div>	
<script></script>
</body>
</html>