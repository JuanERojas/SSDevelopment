<?php

	$server_ip   = '172.16.2.131';
	$server_port = 5529;
	$message     = '<14>137;4;PI3C;BV;1772';

	$socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
	
	if ($socket) {
		socket_sendto($socket, $message, strlen($message), 0, $server_ip, $server_port);
		echo "ENVIADO";
	} else {
	  echo "No se pudo enviar el UDP";
	}
?>