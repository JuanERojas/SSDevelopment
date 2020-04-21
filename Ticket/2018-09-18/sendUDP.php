<?php
$server_ip   = '172.26.2.131';
$server_port = 5529;
$message     = 'PyHB';

if ($socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP)) {
    socket_sendto($socket, $message, strlen($message), 0, $server_ip, $server_port);
} else {
  print("can't create socketn");
}
?>