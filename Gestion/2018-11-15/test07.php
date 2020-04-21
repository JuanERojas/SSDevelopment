<html>
<?php

// index --> Comprueba que el panel este ONLINE y redirect a test06
	$ipcliente = $_GET['ip'];
	
	//PING
		
	$nombrePanel = $ipcliente.'';
	$ipclienteCm = "10.".substr($nombrePanel." ",4,-1);
	
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ipPanel = $ip1.".".$ip2.".".$ip3.".254";

?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="left">
	<br>
	<br>
	<img src='ajax-loader.gif' />
</div>
<?php 
	//echo $ipPanel;
	exec("ping -c 3 $ipPanel", $output, $status);
	//foreach($output as $o) {
	//	echo $output[1].'<br>';
	//}
	if(strlen(strstr(strtolower($output[1]), strtolower('Unreachable'))) > 0){
		echo 'Antena OFFLINE<br>';
	}else{
		header("Location: test06.php?ip=".$ipcliente);
		die();
	}
	?>
</script>
</body>
</html>