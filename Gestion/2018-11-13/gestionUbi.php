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
	
	$ipPanel = $ip1.".".$ip2.".".$ip3.".254";

	
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
		//firmwareVersion=XW.ar934x.v6.0.30097.161219.1705,platform=NanoBeam M5,deviceIp=10.0.0.1
		
		echo 'Version: ';
		//firmwareVersion -->platform
		$cmdyIzq = strstr($str, ',platform', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'firmwareVersion', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>Brand: ';
		//platform -->deviceIp
		$cmdyIzq = strstr($str, ',deviceIp', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'platform', true) ).'' ),-1);
		$brand= substr((strstr($cmd, '=').' '),1,-1);
		echo $brand;
		
		echo '<br>Señal: ';
		//Signal -->chain0Signal
		$cmdyIzq = strstr($str, 'chain0Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
	
		echo '<br>Señal Horizontal: ';
		//chain0Signal -->chain1Signal
		$cmdyIzq = strstr($str, 'chain1Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain0Signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>Señal Vertical: ';
		//chain1Signal -->noise
		$cmdyIzq = strstr($str, 'noise', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain1Signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>Distancia: ';
		//distance -->lanIpAddress/netrole
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'netrole', true);
		}else{
			$cmdyIzq = strstr($str, 'lanIpAddress', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'distance', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		if(($cmd+0)<1000){
			echo $cmd.' Km';
		}else{
			echo $cmd.' Km';
		}
		
		echo '<br> UpTime: ';
		//uptime -->cpuUsage/airTime
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'airTime', true);
		}else{
			$cmdyIzq = strstr($str, 'cpuUsage', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'uptime', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>Downlink:';
		//wlanTxRate -->wlanRxRate
		$cmdyIzq = strstr($str, 'wlanRxRate', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanTxRate', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>UpLink: ';
		//wlanRxRate -->wlanTxLatency/txModRate
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'txModRate', true);
		}else{
			$cmdyIzq = strstr($str, 'wlanTxLatency', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanRxRate', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>LAN plugged: ';
		//lanPlugged -->lanSpeed
		$cmdyIzq = strstr($str, 'lanSpeed', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanPlugged', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		
		echo '<br>LAN Speed: ';
		//lanSpeed -->wlanRxBytes/cableLen
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'cableLen', true);
		}else{
			$cmdyIzq = strstr($str, 'wlanRxBytes', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanSpeed', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1).' ';
		echo strstr($cmd, ' ', true);
	}
	
	function cat_tmp_system($str){
		
		//iptables.sys.dmz.1.except.status -->iptables.sys.dmz.1.host
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.host', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.except.status', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		if(strlen($cmd) > 3)
			echo '<br>DMZ Enable: '.$cmd; 
		
		//iptables.sys.dmz.1.host -->iptables.sys.dmz.1.status
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.status', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.host', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		if(strlen($cmd) > 3)
			echo '<br>IP DMZ: '.$cmd;
	}	
	
	function impr($str){
		echo '<br>'.$str;
	}

?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="left">
	<?php 
			//echo '<br><br>MCA-Status<br>';
			$ssh->exec('mca-status', 'mca_status');
			
			//echo '<br><br>DMZ<br>';
			$ssh->exec('cat /tmp/system.cfg', 'cat_tmp_system');
			
			//echo '<br><br>TEST<br>';
			//$ssh->exec('cat /tmp/system.cfg', 'impr');
		?>
	<br>
	<br>
	<br>
	<button onclick="pings();" value="Ping">Ping</button>
	<div id="pg"></div>
	<div id="pg2"></div>
	<br>
	<br>
	<br>
	<?php 
			function pingAddress($ip) {
				$ping = exec("ping -n 2 $ip", $output, $status);
				if (strpos($output[2], 'unreachable') !== FALSE) {
					return '<span style="color:#f00;">OFFLINE</span>';
				} else {
					return '<span style="color:green;">ONLINE</span>';
				}
			}

			echo pingAddress($ipPanel);
		?>
</div>
<script>
function pings(){
		document.getElementById("pg2").innerHTML="<img src='ajax-loader.gif' />";
		setTimeout(function(){
			req = new XMLHttpRequest();
			req.open('GET', 'pings.php?ip=<?php echo $ipcliente;?>', false);
			req.send(null);
			var domElement = document.getElementById('pg');
			domElement.innerHTML = req.responseText;			
		}, 1000);
		setTimeout(function(){
			document.getElementById("pg2").innerHTML=" ";
		}, 7000);
	}
</script>
</body>
</html>