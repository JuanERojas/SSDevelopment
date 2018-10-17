<?php
$con = fsockopen("10.30.blah.blah", 23, $errno, $errstr, 30);
$pass = "admin";
sleep(5);
fputs($con, $pass);
sleep(5);
$msg = "camera move left";
fputs($con, $msg);

//needed a \r at the end of my $msg variable
// \r\n
?>