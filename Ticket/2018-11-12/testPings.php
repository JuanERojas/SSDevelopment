<html>
<?php
	//TEST 172.31.1.42
	//TEST 172.31.1.41
	
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
	$ssh2 = new Net_SSH2($ipcliente, 222);
	
	if (!$ssh->login('root', 's553355')) {
		if (!$ssh->login('installer', 's553355')) {
			exit('Login Failed');
		}
	}
	/*
	if (!$ssh2->login('root', 's553355')) {
		if (!$ssh2->login('installer', 's553355')) {
			exit('Login Failed');
		}
	}
	*/
	function mca_status($str){
		
		//echo $str.'<br><br><br><br>';
		
		echo 'Señal:<br>';
		//Signal -->chain0Signal
		$cmdyIzq = strstr($str, 'chain0Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'signal', true) ).'' ),-1);
		echo $cmd;
		
		//chain0Signal -->chain1Signal
		$cmdyIzq = strstr($str, 'chain1Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain0Signal', true) ).'' ),-1);
		echo '<br>'.$cmd;
		
		//chain1Signal -->noise
		$cmdyIzq = strstr($str, 'noise', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain1Signal', true) ).'' ),-1);
		echo '<br>'.$cmd;
		
		echo '<br><br>Distancia:<br>';
		//distance -->lanIpAddress
		$cmdyIzq = strstr($str, 'lanIpAddress', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'distance', true) ).'' ),-1);
		echo $cmd;
		
		echo '<br><br>UpTime:<br>';
		//uptime -->loadavg
		$cmdyIzq = strstr($str, 'loadavg', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'uptime', true) ).'' ),-1);
		echo $cmd;
		
		echo '<br><br>Downlink:<br>';
		//wlanTxRate -->wlanRxRate
		$cmdyIzq = strstr($str, 'wlanRxRate', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanTxRate', true) ).'' ),-1);
		echo $cmd;
		
		echo '<br><br>UpLink:<br>';
		//wlanRxRate -->wlanTxLatency
		$cmdyIzq = strstr($str, 'wlanTxLatency', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanRxRate', true) ).'' ),-1);
		echo $cmd;
		
		echo '<br><br>LAN plugged:<br>';
		//lanPlugged -->lanSpeed
		$cmdyIzq = strstr($str, 'lanSpeed', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanPlugged', true) ).'' ),-1);
		echo $cmd;
		
		echo '<br><br>LAN Speed:<br>';
		//lanSpeed -->wlanRxBytes
		$cmdyIzq = strstr($str, 'wlanRxBytes', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanSpeed', true) ).'' ),-1);
		echo $cmd;
	}
	
	function cat_tmp_system($str){
		//echo '<br><br>'.$str;
		//echo '<br><br>';
		//echo '<br><br>DMZ:<br>';
		//iptables.sys.dmz.1.except.status -->iptables.sys.dmz.1.host
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.host', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.except.status', true) ).'' ),-1);
		echo '<br>'.$cmd; 
		
		//iptables.sys.dmz.1.host -->iptables.sys.dmz.1.status
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.status', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.host', true) ).'' ),-1);
		echo '<br>'.$cmd;
	}	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<?php 
			/*
			echo '8.8.8.8<br>';
			$ssh->exec('ping 8.8.8.8', 'packet_handler');
			echo '<br><br>10.0.0.100<br>';
			$ssh2->exec('ping 10.0.0.100', 'packet_handler');
			*/
			echo '<br><br>MCA-Status<br>';
			$ssh->exec('mca-status', 'mca_status');
			
			echo '<br><br>DMZ<br>';
			$ssh->exec('cat /tmp/system.cfg', 'cat_tmp_system');
		?>
</div>
<script></script>
</body>
</html>