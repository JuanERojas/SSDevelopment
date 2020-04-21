<html>
<?php
	// Ping 10.0.0.100
	$ipcliente = $_GET['ip'];
	
	//PING
		
	$nombrePanel = $ipcliente.'';
	$ipclienteCm = "10.".substr($nombrePanel." ",4,-1);
	
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ipAntena = $ip1.".".$ip2.".".$ip3.".254";

	
	// ---------- SSH
	set_include_path(get_include_path() . PATH_SEPARATOR . 'phpseclib');
	include('phpseclib/Net/SSH2.php');

	
	$ssh = new Net_SSH2($ipcliente, 222);
	if (!$ssh->login('root', 's553355')) {
		if (!$ssh->login('installer', 's553355')) {
			//exit('Login Failed');
			echo ('Login Failed');
		}
	}
	$res = 0;
	$cont = 0;
	function packet_handler($str){
		$result = explode(",", $str);
		foreach($result as $r) {
			//echo $r.'<br>';
			//time --> ms 
			$cmdyIzq = strstr($r, 'ms', true);
			$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'time', true) ).'' ),-1);
			echo $cmd.'<br>'; 
			$cmd= substr((strstr($cmd, '=').' '),1,-1);
			$aux = explode(".", $cmd);
			$string = ($aux[0].'.'.$aux[1]);
			$suma = floatval($string)+$GLOBALS['res'];
			$GLOBALS['cont']++;
			$GLOBALS['res']=$suma;
			//echo 'Original: ' . $GLOBALS['res'] . '<br>';
		}
		
	}
	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<?php 
			echo '<br><br><h3>10.0.0.100</h3><br>';
			$ssh->exec('ping 10.0.0.100', 'packet_handler');
			if($res > 0){
				echo '<br><br>Promedio: '.($res/$cont);
			}else{
				echo '<br><br>Timeout en Ping';
			}
		?>
</div>
<script></script>
</body>
</html>