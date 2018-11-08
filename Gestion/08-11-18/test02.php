<?php
//$syscontact = snmpget('demo.snmplabs.com', 'public', 'sysDescr'); //system.SysContact.0
$syscontact = snmpget('', 'public', 'system.SysContact.0');
?>