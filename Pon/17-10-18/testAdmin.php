<?php

error_reporting(E_ALL);

echo "0--<br>";
$con = fsockopen("192.168.1.1", 23, $errno, $errstr, 30);

echo "--<br>";
$user = "root\r\n";
sleep(5);
fputs($con, $user);
while ($line = fgets($con)) {
    echo "+<br>";
	echo $line;
}

echo "--<br>";
sleep(5);
$pass = "s553355\r\n";
fputs($con, $pass);
while ($line = fgets($con)) {
    echo "/<br>";
    echo $line;
}

echo "--<br>";
sleep(5);
$msg = "help\r\n";
fputs($con, $msg);
while ($line = fgets($con)) {
    echo $line;
}
echo "--<br>";

//needed a \r at the end of $msg variable
// \r\n
?>