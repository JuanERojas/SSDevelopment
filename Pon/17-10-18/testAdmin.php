<?php
$con = fsockopen("192.168.1.1", 23, $errno, $errstr, 30);
$user = "root\r";
sleep(5);
fputs($con, $user);
sleep(5);
$pass = "s553355\r";
fputs($con, $pass);
sleep(5);
$msg = "help\r";
fputs($con, $msg);

//needed a \r at the end of my $msg variable
// \r\n
?>