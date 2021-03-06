<?php

session_start();


function sendAuthorization($id, $minutes)//, $down, $up,) //ADD
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
	//$result = json_decode(curl_exec($ch));

    // Send user to authorize and the time allowed
    $data = json_encode(array(
        'cmd'=>'authorize-guest',
        'mac'=>$id,
        'minutes'=>$minutes));
		//,
		//'down'=>$down,	//ADD
		//'up'=>$up));	//ADD

    // Send the command to the API
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/api/s/default/cmd/stamgr');
    curl_setopt($ch, CURLOPT_POSTFIELDS, 'json='.$data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
    curl_exec ($ch);

    // Logout of the UniFi Controller
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
    curl_exec ($ch);
    curl_close ($ch);
    unset($ch);
	
	
	//return $result;
}

if ($_SESSION['loggingin'] == "unique key") // Check to see if the form has been posted to
{
	ob_start();
        //sendAuthorization($_SESSION['id'], (12*60)); //authorizing user for 12 hours
		sendAuthorization($_SESSION['id'], 5);
		//sendAuthorization($_SESSION['id'], 5, );
	ob_end_clean();
	unset($_SESSION['loggingin']);
}

?>
<p><font size="12">Publicidad</font></p>
<script>
//allow time for the authorization to go through
setTimeout("location.href='http://www.google.com.ar'",6000);
</script>
