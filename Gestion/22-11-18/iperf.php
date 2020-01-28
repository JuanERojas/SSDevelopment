<html>
<?php
	// Ping 10.0.0.100
	//$ipcliente = $_GET['ip'];
	//$ipPanel = $_GET['ap'];
	
	//PING
	
	//$ipcliente = '172.31.1.42';
	$ipcliente = '172.16.153.133';
	
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
	if (!$ssh->login('root', 's553355')) {
		//exit('Login Failed');
		echo ('Login Failed');
	}
	/*
	$login = true;
	$ssh2 = new Net_SSH2($ipPanel, 222);
	if (!$ssh2->login('root', 'newdata2016')) {
		//exit('Login Failed');
		echo ('Login Failed');
		$GLOBALS['login']=false;
	}
	*/
	function impr($str){
		echo $str;
	}
	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="center">
<!--table border="2" bgcolor="FFFFFF">
	<tr bgcolor="CFCFCF">
		<th width="300" align="left">Ping 10.0.0.100</th>
	</tr-->
<?php 
//5001 
//5201 iperf 3
			echo '<br><h3>IPerf</h3><br>';
	/*		if($login){
				$ssh2->exec('iperf -s  2>&1', 'impr', $return);
				echo '<br><br>';
				var_dump($return);
				echo '<br><br>';
*/	?>
	<!--tr-->
<?php			
				//$ipIperf= $ipPanel;
				$ipIperf= '172.16.2.129';
				//$ssh->exec('iperf3 -c '.$ipIperf, 'impr',$return);
				exec('echo 123 > 123.txt 2>&1');
				//$ssh->passthru('iperf3 -c '.$ipIperf.' -P4', $return);
				echo '<br>-<br>';
				//var_dump($return);
				//echo '<br>-<br>'.$return;
	?>
	<!--/tr-->
<?php /*		}else{
				echo 'Timeout en Panel'; */?>
	<!--/tr-->
<?php //		} ?>
<!--/table-->	
</div>
<script></script>
</body>
</html>