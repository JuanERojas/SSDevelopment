<?php
/*
$session = new SNMP(SNMP::VERSION_1, "127.0.0.1", "public");
$sysdescr = $session->get("sysDescr.0");
echo "$sysdescr\n";
$sysdescr = $session->get(array("sysDescr.0"));
print_r($sysdescr);
*/

//phpinfo();

$session_snmp = new SNMP(SNMP::VERSION_1, "localhost", "public");
$get_iod_temperature = $session_snmp->get("system.sysUpTime.0");
echo "TEMPERATURE >" . $get_iod_temperature;

?>