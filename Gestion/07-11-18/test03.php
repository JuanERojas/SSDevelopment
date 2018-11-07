<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// author: dstjohn at mediacast1.com
// updated: 09-11-2005
// set some vars
$snmpcommunity = 's553355'; //snmp community name
$ip='172.31.1.254'; //Puerto interno
$system_number = '1';
//end da vars


//get system name
//$sysname[0] = snmpget($sysip[$i], $snmpcommunity, "sysName.0");
//$sysname[1] = eregi_replace("STRING:","",$sysname[0]);

//$sysname[0] = snmpget($ip, $snmpcommunity, "sysName.0");
$sysname[0] = snmpget($ip, $snmpcommunity, "1.3.6.1.4.1.1955.5.5.1.3.1");
//echo 'System Name: '.$sysname[0].'<br>';
echo 'uCurrent-Date: '.$sysname[0].'<br>';


//echo '<br>TEST';
?>