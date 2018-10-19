<?php

    $host="192.168.1.1"; 
    $port = 23; // open a client connection 
    $fp = fsockopen ($host, $port, $errno, $errstr); 
    if (!$fp) { 
    $result = "Error: could not open socket connection"; 
    } 
    else { // get the welcome message fgets ($fp, 1024); // write the user string to the socket 
    fputs($fp, 'root\r'); // get the result $result .= fgets ($fp, 1024); // close the connection
    fputs ($fp, "END");
    fclose ($fp); // trim the result and remove the starting ?
    $result = trim($result);
    $result = substr($result, 2); // now print it to the browser 
    } ?> 
    Server said: <? echo $result; ?>