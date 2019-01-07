<?php
require_once(__DIR__ . '/TelnetClient.php');

use TelnetClient\TelnetClient;

//Uncomment this to get debug logging
//TelnetClient::setDebug(true);

$telnet = new TelnetClient('192.168.1.1', 25);
$telnet->connect();
$telnet->setPrompt('$'); //setRegexPrompt() to use a regex
//$telnet->setPruneCtrlSeq(true); //Enable this to filter out ANSI control/escape sequences
$telnet->login('root', 's553355');

$cmdResult = $telnet->exec('ls /');

$telnet->disconnect();

print("The contents of / is: \"{$cmdResult}\"\n");
?>