<?php

session_start();

function login()
{
    //$unifiServer = "https://172.16.2.244:8443";
	$unifiServer = "https://172.31.1.41:6969";
    $unifiUser = "root";
    $unifiPass = "s553355";
	
    // Start Curl for login
    $ch = curl_init();
	
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, FALSE);
	
	
    // We are posting data
    curl_setopt($ch, CURLOPT_POST, TRUE);
    /*
	// Set up cookies
    $cookie_file = "/tmp/unifi_cookie";
    curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
    curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
    // Allow Self Signed Certs
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    // Force SSL3 only
    //curl_setopt($ch, CURLOPT_SSLVERSION, 3);
	curl_setopt($ch, CURLOPT_SSLVERSION, 1);
	*/
    // Login to the UniFi controller
    curl_setopt($ch, CURLOPT_URL, "$unifiServer/user/login");
	
	$data = json_encode(array("username" => $unifiUser,"password" => $unifiPass));
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
	
    //curl_setopt($ch, CURLOPT_POSTFIELDS,"login=login&username=$unifiUser&password=$unifiPass");
    // send login command
    //curl_exec ($ch);
	$result = json_decode(curl_exec($ch));

    // Logout of the UniFi Controller
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
    curl_exec ($ch);
    curl_close ($ch);
    unset($ch);
	
	
	return $result;
}

	//ob_start();
		echo login();
	//ob_end_clean();

?>