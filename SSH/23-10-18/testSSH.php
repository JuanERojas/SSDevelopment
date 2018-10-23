<?php
/*
CONTACT E-MAIL: juan.rojas14@hotmail.com
LOGIN:			testsssjr18
PERSONAL URL:	http://sdf.org/~testsssjr18

VBlqjAIpRbXD+g
*/

set_include_path(get_include_path() . PATH_SEPARATOR . 'phpseclib');
include('phpseclib/Net/SSH2.php');

$ssh = new Net_SSH2('172.31.1.41', 222);
if (!$ssh->login('root', 's553355')) {
    exit('Login Failed');
}

function packet_handler($str)
{
    echo $str.'<br>';
}

//echo $ssh->exec('pwd');
//echo $ssh->exec('ls -la');
$ssh->exec('ping 172.31.1.254', 'packet_handler');
echo '<br>';
$ssh->exec('pwd', 'packet_handler');
echo '<br>';

$ssh = new Net_SSH2('172.31.1.41', 222);
if (!$ssh->login('root', 's553355')) {
    exit('Login Failed');
}

$ssh->exec('ping 8.8.8.8', 'packet_handler');
echo '<br>';

?>