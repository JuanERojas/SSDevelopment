<html>
<?php
// Pagina Principal: detecta tipo de antena y realiza operaaciones, botones de Ping
 	//TEST 172.31.1.42
	//TEST 172.31.1.41
	
	//$ipcliente = $_GET['ip'];
	$ipcliente = $_POST['ip'];
	$user = $_POST['user'];
	$pass = $_POST['pass'];
	
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
?>
	<table border="2" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th align="left" colspan="2">Detalles Ubiquiti</th>
		</tr>
		<tr>
<?php 		
		//echo $str.'<br><br><br><br>';
		//firmwareVersion=XW.ar934x.v6.0.30097.161219.1705,platform=NanoBeam M5,deviceIp=10.0.0.1
		
		//echo 'Version: ';
		//firmwareVersion -->platform
		$cmdyIzq = strstr($str, ',platform', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'firmwareVersion', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">Version</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>Brand: ';
		//platform -->deviceIp
		$cmdyIzq = strstr($str, ',deviceIp', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'platform', true) ).'' ),-1);
		$brand= substr((strstr($cmd, '=').' '),1,-1);
		//echo $brand;
		echo '<th align="left">Brand</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>Señal: ';
		//Signal -->chain0Signal
		$cmdyIzq = strstr($str, 'chain0Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">Señal</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 	
		//echo '<br>Señal Horizontal: ';
		//chain0Signal -->chain1Signal
		$cmdyIzq = strstr($str, 'chain1Signal', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain0Signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">Señal Horizontal</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>Señal Vertical: ';
		//chain1Signal -->noise
		$cmdyIzq = strstr($str, 'noise', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'chain1Signal', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">Señal Vertical</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>Distancia: ';
		//distance -->lanIpAddress/netrole
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'netrole', true);
		}else{
			$cmdyIzq = strstr($str, 'lanIpAddress', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'distance', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd.' Mts';
		echo '<th align="left">Distancia</th>';
		echo '<td align="left">'.$cmd.' Mts.</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br> UpTime: ';
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
		//echo $dt1->diff($dt2)->format('%a Dias, %h Hora/s, %i Minuto/s y %s Segundo/s');
		echo '<th align="left">UpTime</th>';
		echo '<td align="left">'.$dt1->diff($dt2)->format('%a Dias, %h Hora/s, %i Minuto/s y %s Segundo/s').'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>Downlink:';
		//wlanTxRate -->wlanRxRate
		$cmdyIzq = strstr($str, 'wlanRxRate', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanTxRate', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">Downlink</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>UpLink: ';
		//wlanRxRate -->wlanTxLatency/txModRate
		if(strlen(strstr(strtolower($brand), strtolower('LiteBeam'))) > 0){
			$cmdyIzq = strstr($str, 'txModRate', true);
		}else{
			$cmdyIzq = strstr($str, 'wlanTxLatency', true);
		}
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'wlanRxRate', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">UpLink</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
		//echo '<br>LAN plugged: ';
		//lanPlugged -->lanSpeed
		$cmdyIzq = strstr($str, 'lanSpeed', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'lanPlugged', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		//echo $cmd;
		echo '<th align="left">LAN plugged</th>';
		echo '<td align="left">'.$cmd.'</td>';
?>
		</tr>
		<tr>
<?php 		
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
		echo '<th align="left">LAN Speed</th>';
		echo '<td align="left">'.strstr($cmd, ' ', true).'</td>';
?>
		</tr>
		<tr>
<?php 
	}
	
	function cat_tmp_system($str){
		
		//iptables.sys.dmz.1.except.status -->iptables.sys.dmz.1.host
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.host', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.except.status', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		if(strlen($cmd) > 3){
			//echo '<br>DMZ Enable: '.$cmd; 
			echo '<th align="left">DMZ Enable</th>';
			echo '<td align="left">'.$cmd.'</td>';
		}
?>
		</tr>
		<tr>
<?php 		
		//iptables.sys.dmz.1.host -->iptables.sys.dmz.1.status
		$cmdyIzq = strstr($str, 'iptables.sys.dmz.1.status', true);
		$cmd= substr($cmdyIzq." ",strlen( ( strstr($cmdyIzq, 'iptables.sys.dmz.1.host', true) ).'' ),-1);
		$cmd= substr((strstr($cmd, '=').' '),1,-1);
		if(strlen($cmd) > 3){
			//echo '<br>IP DMZ: '.$cmd;
			echo '<th align="left">IP DMZ</th>';
			echo '<td align="left">'.$cmd.'</td>';
		}
	?>
		</tr>
	</table>
<?php 
	}	
	
	function datos_cambium($ip){
		// set some vars
		$snmpcommunity = 'public'; //snmp community name
?>
	<table border="2" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th align="left" colspan="2">Detalles Cambium</th>
		</tr>
		<tr>
<?php 
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.1.0');
		$result = strstr($result, ' ');
		//echo 'Version: '.$result.'<br>';
		echo '<th align="left">Version</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.3.0');
		$result = strstr($result, ' ');
		//echo 'Signal: '.$result.'<br>';
		echo '<th align="left">Señal</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.12.0');
		$result = strstr($result, ' ');
		//echo 'Distance: '.$result.' Km. <br>';
		echo '<th align="left">Distance</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.4.0');
		$result = strstr($result, ' ');
		//echo 'Uptime: '.$result.'<br>';
		echo '<th align="left">Uptime</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.7.0');
		$result = strstr($result, ' ');
		//echo 'Downlink: '.$result.' MCS <br>';
		echo '<th align="left">Downlink</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.6.0');
		$result = strstr($result, ' ');
		//echo 'Uplink: '.$result.' MCS <br>';
		echo '<th align="left">Uplink</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.1.0');
		$result = strstr($result, ' ');
		if($result=='1'){
			//echo 'LAN: TRUE<br>';
			echo '<th align="left">LAN plugged</th>';
			echo '<td align="left">'.$result.'</td>';
		}else{
			//echo 'LAN: FALSE<br>';
			echo '<th align="left">LAN plugged</th>';
			echo '<td align="left">'.$result.'</td>';
		}
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.12.0');
		$result = strstr($result, ' ');
		//echo 'LAN Speed: '.$result.'<br>';
		echo '<th align="left">LAN Speed</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.26.0');
		$result = strstr($result, ' ');
		//echo 'VLAN: '.$result.'<br>';
		echo '<th align="left">VLAN</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.28.0');
		$result = strstr($result, ' ');
		//echo 'VLAN Gateway: '.$result.'<br>';
		echo '<th align="left">VLAN Gateway</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.1.0');
		$result = strstr($result, ' ');
		if($result=='1'){
			//echo 'DMZ Enable: TRUE<br>';
			echo '<th align="left">DMZ Enable</th>';
			echo '<td align="left">'.$result.'</td>';
		}else{
			//echo 'DMZ Enable: FALSE<br>';
			echo '<th align="left">DMZ Enable</th>';
			echo '<td align="left">'.$result.'</td>';
		}
?>
		</tr>
		<tr>
<?php
		$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.2.0');
		$result = strstr($result, ' ');
		//echo 'IP DMZ: '.$result.'<br>';
		echo '<th align="left">IP DMZ</th>';
		echo '<td align="left">'.$result.'</td>';
?>
		</tr>
	</table>
<?php
	}
	
	function impr($str){
		echo '<br>'.$str;
	}
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css">
	html *
	{
		font-family: sans-serif;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	a:link {
		text-decoration: none;
	}
	a:visited {
		text-decoration: none;
	}
	a {
		text-decoration: none;
	}
	table {
		border-collapse: collapse;
	}
	tr:hover {
		background-color:#f5f5f5;
	}
	.button {
		background-color: #4CAF50; /* Green */
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
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v0.9</h1>
	<h2>Gestion</h2>
	<h4>
	<br>
	<br>
	<br>
	<?php 
			
			if($marca=='Ubiquiti'){
				$ssh = new Net_SSH2($ipcliente, 222);
				if (!$ssh->login($user, $pass)) {
					if (!$ssh->login('installer', 's553355')) {
						//exit('Login Failed');
						echo '<script>alert("Login Failed");</script>';
						die();
					}
				}
				$ssh->exec('mca-status', 'mca_status');
				$ssh->exec('cat /tmp/system.cfg', 'cat_tmp_system');
		?>			
		<br>
		<button onclick="ping_10_0_0_100();" class="button" >10.0.0.100</button>
		<br>
		<div id="gif"></div>
		<br>
		<div id="ping_10_100"></div>
		<br>
		<br>
		<button onclick="pings();" class="button" >Pings</button>
		<div id="pings_tabla"></div>
		<br>
		<br>
		<button onclick="speedTest();" class="button" >SpeedTest</button>
		<br>
		<div id="gif2"></div>
		<br>
		<div id="speedTest"></div>		
	<?php
			}else{
				datos_cambium($ipclienteCm);
		?>			
		<br>
		<button onclick="pingsCm();" class="button" >Pings</button>
		<div id="pings_tabla"></div>
		<br>
	<?php
			}
		?>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>
<script>
function ping_10_0_0_100(){
		document.getElementById("gif").innerHTML="<img src='ajax-loader.gif' />";
		setTimeout(function(){
			req = new XMLHttpRequest();
			req.open('GET', 'pings.php?ip=<?php echo $ipcliente;?>', false);
			req.send(null);
			var domElement = document.getElementById('ping_10_100');
			domElement.innerHTML = req.responseText;			
		}, 1000);
		setTimeout(function(){
			document.getElementById("gif").innerHTML=" ";
		}, 7000);	
}
function pings(){
	//document.location.href='pingRouterU.php?ip=<?php echo $ipcliente;?>';
/*		document.getElementById("pg2").innerHTML="<img src='ajax-loader.gif' />";
		setTimeout(function(){
			req = new XMLHttpRequest();
			req.open('GET', 'test08.php?ip=<?php echo $ipcliente;?>', false);
			req.send(null);
			var domElement = document.getElementById('pg');
			domElement.innerHTML = req.responseText;			
		}, 1000);
		setTimeout(function(){
			document.getElementById("pg2").innerHTML=" ";
		}, 7000);	*/
		
		var domElement = document.getElementById('pings_tabla');
		domElement.innerHTML = '<iframe src="pingRouterU.php?ip=<?php echo $ipcliente;?>" height="200" width="500"></iframe>';
}
function speedTest(){
		//var domElement = document.getElementById('speedTest');
		//domElement.innerHTML = '<iframe src="pingRouterU.php?ip=<?php echo $ipcliente;?>" height="200" width="500"></iframe>';
		document.getElementById("gif2").innerHTML="<img src='travolta.gif' />";
		setTimeout(function(){
			document.getElementById("gif2").innerHTML=" ";
		}, 5000);
}

function pingsCm(){
	//document.location.href='pingRouterU.php?ip=<?php echo $ipcliente;?>';
/*		document.getElementById("pg2").innerHTML="<img src='ajax-loader.gif' />";
		setTimeout(function(){
			req = new XMLHttpRequest();
			req.open('GET', 'test08.php?ip=<?php echo $ipcliente;?>', false);
			req.send(null);
			var domElement = document.getElementById('pg');
			domElement.innerHTML = req.responseText;			
		}, 1000);
		setTimeout(function(){
			document.getElementById("pg2").innerHTML=" ";
		}, 7000);	*/
		
		var domElement = document.getElementById('pings_tabla');
		domElement.innerHTML = '<iframe src="pingRouterC.php?ip=<?php echo $ipcliente;?>" height="200" width="500"></iframe>';
}		
</script>
</body>
</html>