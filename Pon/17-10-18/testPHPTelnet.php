<?php
require_once "PHPTelnet.php";

$telnet = new PHPTelnet();

// if the first argument to Connect is blank,
// PHPTelnet will connect to the local host via 127.0.0.1
$result = $telnet->Connect('192.168.1.56','cisco','password');

if ($result == 0) {
$telnet->DoCommand('reboot', $result);
// NOTE: $result may contain newlines
echo $result;
	// say Disconnect(0); to break the connection without explicitly logging out
$telnet->Disconnect();
}
?>