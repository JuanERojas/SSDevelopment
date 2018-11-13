<?php
// Gestion Cambium
error_reporting(E_ALL);
ini_set('display_errors', 1);

$ipcliente = $_GET['ip'];

$nombrePanel = $ipcliente.'';
$ipclienteCm = "10.".substr($nombrePanel." ",4,-1);

	
// set some vars
$snmpcommunity = 'public'; //snmp community name
$ip=$ipclienteCm;
//'10.16.170.60'; //Puerto interno


$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.1.0');
$result = strstr($result, ' ');
echo 'Version: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.3.0');
$result = strstr($result, ' ');
echo 'Signal: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.12.0');
$result = strstr($result, ' ');
echo 'Distance: '.$result.' Km. <br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.1.4.0');
$result = strstr($result, ' ');
echo 'Uptime: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.7.0');
$result = strstr($result, ' ');
echo 'Downlink: '.$result.' MCS <br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.6.0');
$result = strstr($result, ' ');
echo 'Uplink: '.$result.' MCS <br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.1.0');
$result = strstr($result, ' ');
if($result=='1'){
	echo 'LAN: TRUE<br>';
}else{
	echo 'LAN: FALSE<br>';
}

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.12.0');
$result = strstr($result, ' ');
echo 'LAN Speed: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.26.0');
$result = strstr($result, ' ');
echo 'VLAN: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.4.28.0');
$result = strstr($result, ' ');
echo 'VLAN Gateway: '.$result.'<br>';

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.1.0');
$result = strstr($result, ' ');
if($result=='1'){
	echo 'DMZ Enable: TRUE<br>';
}else{
	echo 'DMZ Enable: FALSE<br>';
}

$result = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.3.12.2.0');
$result = strstr($result, ' ');
echo 'IP DMZ: '.$result.'<br>';



?>