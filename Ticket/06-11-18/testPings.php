<html>
<?php
	
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
	if (!$ssh2->login('root', 's553355')) {
		if (!$ssh2->login('installer', 's553355')) {
			exit('Login Failed');
		}
	}
	function packet_handler($str){
		
		$result1 = explode(',', $str);
		//echo $result2[0];
		/*
		foreach($result1 as $r) {
			echo '<br>'.$r;
		}
		*/
		//echo $result1[4].'<br><br>';
		
		//echo strstr($result1[4], 'apMac');
		
		echo strstr($str, 'apMac');
		echo '<br><br>'.strstr($str, 'apMac', true);
		
		/*$first=true;
		foreach($result2 as $r) {
			if($first){
				$first=false;
			}else{
				echo $r.'<br>';
			}
		}
		*/
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
			echo '<br><br><br><br><br>MCA-Status<br>';
			$ssh->exec('mca-status', 'packet_handler');
		?>
</div>
<script></script>
</body>
</html>