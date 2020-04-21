<?php

session_start();


function sendAuthorization($id, $minutes)
{
    $unifiServer = "https://172.16.2.244:8443";
    $unifiUser = "portal";
    $unifiPass = "Portal@2018";

	
	echo "0<br>";
    // Start Curl for login
    $ch = curl_init();
	echo "1<br>";
    // We are posting data
    curl_setopt($ch, CURLOPT_POST, TRUE);
    // Set up cookies
    $cookie_file = "/tmp/unifi_cookie";
    curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
    curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
	echo "2<br>";
    // Allow Self Signed Certs
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	echo "3<br>";
    // Force SSL3 only
    curl_setopt($ch, CURLOPT_SSLVERSION, 3);
    // Login to the UniFi controller
    curl_setopt($ch, CURLOPT_URL, "$unifiServer/login");
    curl_setopt($ch, CURLOPT_POSTFIELDS,"login=login&username=$unifiUser&password=$unifiPass");
    // send login command
    curl_exec ($ch);
	echo "4<br>";

    // Send user to authorize and the time allowed
    $data = json_encode(array(
        'cmd'=>'authorize-guest',
        'mac'=>$id,
        'minutes'=>$minutes));

    // Send the command to the API
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/api/cmd/stamgr');
    curl_setopt($ch, CURLOPT_POSTFIELDS, 'json='.$data);
    curl_exec ($ch);
	echo "5<br>";

    // Logout of the UniFi Controller
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
    curl_exec ($ch);
    curl_close ($ch);
    unset($ch);
	echo "6<br>";
	?>
	<script>
//	alert("auth");
	</script>
	<?php
}

if ($_SESSION['loggingin'] == "unique key") // Check to see if the form has been posted to
{
	
	//ob_start();
	echo "-1<br>";
        sendAuthorization($_SESSION['id'], (12*60)); //authorizing user for 12 hours
	//ob_end_clean();
	unset($_SESSION['loggingin']);
}

?>
<p><font size="12">Redirecting....</font></p> <!--// text visible during redirection, you can place your html code here -->
<script>
//allow time for the authorization to go through
setTimeout("location.href='http://www.google.com/'",15000); // 6000 is time do not set it below that, it is also the time that Redirecting.. is visible
</script>