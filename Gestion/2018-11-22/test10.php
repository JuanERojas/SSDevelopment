<html>
<?php
// Test para advertencias
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
	
	
	// ---------- BD -get Brand
	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$marca="ERROR";
	
	$sql = "SELECT marca FROM panel WHERE ip LIKE '".$ipPanel."';";
	$result = $conn->query($sql);
	$conn->close();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$marca= $row["marca"];
		}
	}
	

	
	// ---------- SSH
	set_include_path(get_include_path() . PATH_SEPARATOR . 'phpseclib');
	include('phpseclib/Net/SSH2.php');

	function get_brand($str){
		echo '<br>Brand: ';
		//platform -->deviceIp
		$cmdyIzq = strstr($str, ',deviceIp', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'platform', true) ).'' ),-1);
		$brand= substr((strstr($cmd, '=').' '),1,-1);
		echo $brand;
	}
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
		echo $cmd.' Mts';
		
		echo '<br> UpTime: ';
		//uptime -->cpuUsage/airTime
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'airTime', true);
		}else{
			$cmdyIzq = strstr($str, 'cpuUsage', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'uptime', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		//echo gmdate("d:H:i:s", 53841);
		$dt1 = new DateTime("@0");
		$dt2 = new DateTime("@$cmd");
		echo $dt1->diff($dt2)->format('%a Dias, %h Hora/s, %i Minuto/s y %s Segundo/s');
		
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
	
	function datos_cambium($ip){
		// set some vars
		$snmpcommunity = 'public'; //snmp community name

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.1.0');
		$result = strstr($result, ' ');
		echo 'Version: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.3.0');
		$result = strstr($result, ' ');
		echo 'Signal: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.12.0');
		$result = strstr($result, ' ');
		echo 'Distance: '.$result.' Km. <br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.4.0');
		$result = strstr($result, ' ');
		echo 'Uptime: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.7.0');
		$result = strstr($result, ' ');
		echo 'Downlink: '.$result.' MCS <br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.6.0');
		$result = strstr($result, ' ');
		echo 'Uplink: '.$result.' MCS <br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.1.0');
		$result = strstr($result, ' ');
		if($result=='1'){
			echo 'LAN: TRUE<br>';
		}else{
			echo 'LAN: FALSE<br>';
		}

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.12.0');
		$result = strstr($result, ' ');
		echo 'LAN Speed: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.26.0');
		$result = strstr($result, ' ');
		echo 'VLAN: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.28.0');
		$result = strstr($result, ' ');
		echo 'VLAN Gateway: '.$result.'<br>';

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.1.0');
		$result = strstr($result, ' ');
		if($result=='1'){
			echo 'DMZ Enable: TRUE<br>';
		}else{
			echo 'DMZ Enable: FALSE<br>';
		}

		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.2.0');
		$result = strstr($result, ' ');
		echo 'IP DMZ: '.$result.'<br>';
	}
	
	function impr($str){
		echo '<br>'.$str;
	}
	
	function impr2($str){
		//XW.ar934x.v6.0.30097.161219.1705
		//echo 'Version: ';
		//firmwareVersion -->platform
		$cmdyIzq = strstr($str, ',platform', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'firmwareVersion', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		echo $cmd;
		echo '<br>';
		$cmd = strstr($cmd, 'v');
		//$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'firmwareVersion', true) ).'' ),-1);
		//$cmd= substr((strstr($cmd, '=').' '),1,-1);
		$cmd = substr($cmd,1,5);
		echo $cmd;
	}
	
	function ip_neigh_show_NANO($str){
		echo '<br>-------: '.$str;
		
	}
	
	function test($str){
		//echo 'Version: ';
		//firmwareVersion -->platform
		$cmdyIzq = strstr($str, ',platform', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'firmwareVersion', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		$cmd = strstr($cmd, 'v');
		$cmd = substr($cmd,1,5);
		//echo $cmd;
		echo $cmd.' -- ';
		// ----------- WARNING Version
		echo version($cmd);
		
		//echo '<br>Señal: ';
		//Signal -->chain0Signal
		$cmdyIzq = strstr($str, 'chain0Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		// ----------- WARNING Signal
		$aux= intval($cmd);
		echo '<br>';
		if($aux < (-65)){
			echo 'Warning';
		}else{
			echo 'OK';
		}
		
		//echo '<br>Distancia: ';
		//distance -->lanIpAddress/netrole
		$cmdyIzq = strstr($str, 'netrole', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'distance', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd.' Mts';
		// ----------- WARNING Distance
		$aux= intval($cmd);
		echo '<br>';
		if($aux > 1999){
			echo 'Warning';
		}else{
			echo 'OK';
		}
		
		$cmdyIzq = strstr($str, 'airTime', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'uptime', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		//echo gmdate("d:H:i:s", 53841);
		$dt1 = new DateTime("@0");
		$dt2 = new DateTime("@$cmd");
		//echo $dt1->diff($dt2)->format('%a Dias, %h Hora/s, %i Minuto/s y %s Segundo/s');
		//echo '<th align="left">UpTime</th>';
		//echo '<td align="left">'.$dt1->diff($dt2)->format('%a d %h:%i:%s').'</td>';
		// ----------- WARNING Uptime
		$aux= intval($dt1->diff($dt2)->format('%h'));
		echo '<br>';
		if($aux < 3){
			echo 'Warning';
		}else{
			echo 'OK';
		}
		
		//echo '<br>Latencia: ';
		//wlanTxLatency -->wlanPolling
		$cmdyIzq = strstr($str, 'wlanPolling', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanTxLatency', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1).' ';
		//echo strstr($cmd, ' ', true);
		// ----------- WARNING Uptime
		$aux= intval(strstr($cmd, ' ', true));
		echo '<br>';
		if($aux > 30){
			echo 'Warning';
		}else{
			echo 'OK';
		}
		
		//echo '<br>LAN Speed: ';
		//lanSpeed -->wlanRxBytes/cableLen
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'cableLen', true);
		}else{
			$cmdyIzq = strstr($str, 'wlanRxBytes', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanSpeed', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1).' ';
		//echo strstr($cmd, ' ', true);
		// ----------- WARNING Uptime
		$aux= strstr($cmd, ' ', true);
		echo '<br>';
		if(strlen(strstr(strtolower($aux), strtolower('10M'))) > 0){
			echo 'Warning';
		}else{
			echo 'OK';
		}
	}
	
	function version($str){
		$correct='Warning';
		$aux= intval(substr($str, 0, 1));
		if ($aux > 7){
			$aux= intval(substr($str, 2, 1));
			if ($aux > 3){
				$aux= intval(substr($str, 4, 1));
				if ($aux > 2){
					$correct='OK';
				}
			}
		}
		return $correct;
	}	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="left">
	<?php 
			
			if($marca=='Ubiquiti'){
				$ssh = new Net_SSH2($ipcliente, 222);
				if (!$ssh->login('root', 's553355')) {
					if (!$ssh->login('installer', 's553355')) {
						exit('Login Failed');
					}
				}
				$ssh->exec('mca-status', 'test');
			}
		?>			
		<br>
		<br>
		<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>
<script>		
</script>
</body>
</html>