<?php
// AP: 78:8a:20:48:45:0a
session_start();


function listDevices() //ADD
{
    $unifiServer = "https://172.16.2.244:8443";
    $unifiUser = "portal";
    $unifiPass = "Portal@2018";

    // Start Curl for login
    $ch = curl_init();
	
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, FALSE);
	
	
    // We are posting data
    curl_setopt($ch, CURLOPT_POST, TRUE);
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
    // Login to the UniFi controller
    curl_setopt($ch, CURLOPT_URL, "$unifiServer/api/login");
	
	$data = json_encode(array("username" => $unifiUser,"password" => $unifiPass));
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
	
    //curl_setopt($ch, CURLOPT_POSTFIELDS,"login=login&username=$unifiUser&password=$unifiPass");
    // send login command
    curl_exec ($ch);
	

    // Send user to authorize and the time allowed
	// 8760  ['type' => 'all', 'conn' => 'all', 'within' => intval($historyhours)] v 24:da:9b:67:6f:77 v c4:e9:84:1c:08:47
	$end = ((time()) * 1000);
	$start = $end - (7 * 24 * 3600 * 1000);
	
    $data = json_encode(array(
        'attrs' => ['bytes', 'num_sta', 'time'],
		'start' => $start,
		'end' => $end,
		'mac' => '78:8a:20:48:45:0a'
		));

    // Send the command to the API
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/api/s/default/stat/report/daily.ap');
	
	
    curl_setopt($ch, CURLOPT_POSTFIELDS, 'json='.$data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    //curl_exec ($ch);
	//$result = json_decode(curl_exec($ch));
	$result = json_encode(curl_exec($ch), JSON_PRETTY_PRINT);

    // Logout of the UniFi Controller
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
    curl_exec ($ch);
    curl_close ($ch);
    unset($ch);
	
	
	return $result;
}


	//ob_start();
        //sendAuthorization($_SESSION['id'], (12*60)); //authorizing user for 12 hours
		//sendAuthorization($_SESSION['id'], 5);
		echo listDevices();
	//ob_end_clean();

?>
<p><font size="12">Publicidad</font></p>
<script>
//allow time for the authorization to go through
//setTimeout("location.href='http://www.google.com.ar'",6000);
</script>
