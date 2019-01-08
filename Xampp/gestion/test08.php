<?php
	set_include_path(get_include_path() . PATH_SEPARATOR . 'phpseclib');
	include('phpseclib/Net/SSH2.php');
		
	function impr($str){
		echo $str;
	}
	
	function cat($str){
		$str = strstr($str, '- - - - - - - - - - - - - - - - - - - - - - - - -');
		$str = strstr($str, 'MBytes');
		$cmdyIzq = strstr($str, 'sender', true);
		$aux=(intval( strlen( strstr($cmdyIzq, 'sec',true) ) ));
		$aux= $aux-4;
		$cmd= substr($cmdyIzq." ",7,$aux);
		echo '<br>'.$cmd;
	}

	$ipcliente = '172.16.153.133';

	$ssh = new Net_SSH2($ipcliente, 222);
	if (!$ssh->login('root', 's553355')) {
		//exit('Login Failed');
		echo ('Login Failed');
	}
	
	echo '<br><h3>IPerf</h3><br>';
	$ssh->exec('cat test1.txt','cat');
?>