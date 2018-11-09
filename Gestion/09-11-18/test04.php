<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// author: dstjohn at mediacast1.com
// updated: 09-11-2005
// set some vars
$snmpcommunity = 'public'; //snmp community name
$ip='10.16.170.60'; //Puerto interno

// Name/OID: cambiumEffectiveDeviceName.0; Value (OctetString): RoblesAldaucYamile12651
//$system_number = '1';
//end da vars


//get system name
//$sysname[0] = snmpget($sysip[$i], $snmpcommunity, "sysName.0");
//$sysname[1] = eregi_replace("STRING:","",$sysname[0]);

//$sysname[0] = snmpget($ip, $snmpcommunity, "sysName.0");
//echo 'System Name: '.$sysname[0].'<br>';

//$sysname[0] = snmpget($ip, $snmpcommunity, "sysDescr.0");
//echo 'sysDescr: '.$sysname[0].'<br>';

// ubntWlStatSignal.1
// .1.3.6.1.4.1.41112.1.4.5.1.5
// Name/OID: ubntWlStatSsid.1; Value (OctetString): TG1
// .1.3.6.1.4.1.41112.1.4.5.1.2.1 :: SSID
// .1.3.6.1.4.1.41112.1.4.5.1.5.1 :: Singal
// .1.3.6.1.4.1.41112.1.4.7.1.15.1.68.217.231.82.68.138 :: UpTime 1
// .1.3.6.1.4.1.41112.1.4.7.1.15.1.68.217.231.112.88.12 :: UpTime 2
// 172.16.153.254
// .1.3.6.1.4.1.17713.21.1.1.13.0

$sysname[0] = snmpget($ip, $snmpcommunity, '.1.3.6.1.4.1.17713.21.1.2.12.0');
echo '....: '.$sysname[0].'<br>';

//echo '<br>TEST';
?>