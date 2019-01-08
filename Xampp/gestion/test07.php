<?php
	set_include_path(get_include_path() . PATH_SEPARATOR . 'phpseclib');
	include('phpseclib/Net/SSH2.php');
		
	function impr($str){
		echo $str;
	}

	$ipcliente = '172.16.153.133';

	$ssh = new Net_SSH2($ipcliente, 222);
	if (!$ssh->login('root', 's553355')) {
		//exit('Login Failed');
		echo ('Login Failed');
	}
	
	echo '<br><h3>IPerf</h3><br>';
	$ipIperf= '172.16.2.129';
	$ssh->exec('iperf3 -c '.$ipIperf.' > test1.txt 2>&1');
	$ssh->exec('iperf3 -c '.$ipIperf.' -R > test1.txt 2>&1');
	//$ssh->exec('iperf3 -v > test.txt 2>&1');
	//exec('echo 1234 > 123.txt 2>&1');
	echo '<br>--<br>';
	header('Location: test08.php');
	
//	sleep(10);
//	read($ssh);
?>