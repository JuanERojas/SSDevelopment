<?php
	settype($buffer,"string");

	$buffer= $_POST["cmd"];

	$len= strlen($buffer);

	ECHO $buffer;
	ECHO $len;

	$sock = socket_create(AF_INET, SOCK_STREAM, SOL_TCP) or die('ERROR');
	$host = "127.0.0.1"; // 
	$port=23; //25 425 161 162
	socket_connect($sock, $host, $port) or die('ERROR');;
	socket_sendto($sock, $buffer, $len, 0 , $host, $port);

	echo $buffer;
	echo( "ANSWER: <P>".socket_read($sock, 65535) );

	socket_close($sock);
?>