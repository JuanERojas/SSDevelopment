<html>
<?php
// Ver tipo de antena
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
			echo '<br><br>Brand Panel: <br>'.$marca;
			
			if($marca=='Ubiquiti'){
				$ssh = new Net_SSH2($ipcliente, 222);
				if (!$ssh->login('root', 's553355')) {
					if (!$ssh->login('installer', 's553355')) {
						exit('Login Failed');
					}
				}
				$ssh->exec('mca-status', 'get_brand');
			}
			
		?>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>
<script></script>
</body>
</html>