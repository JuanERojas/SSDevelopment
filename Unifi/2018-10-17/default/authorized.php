<?php

session_start();

function sendAuthorization($id, $minutes)
{
    $unifiServer = "https://172.16.2.244:8443";
    $unifiUser = "portal";
    $unifiPass = "Portal@2018";
	
	$page_name = dirname(__FILE__);
	$each_page_name = explode('/', $page_name);
	$site = end($each_page_name);

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
	echo '<br>'.$site.'<br>';
    // Send the command to the API
    curl_setopt($ch, CURLOPT_URL, $unifiServer.'/api/s/'.$site.'/cmd/stamgr'); // Api apunta al sitio
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
		sendAuthorization($_SESSION['id'], 1);
	ob_end_clean();
	unset($_SESSION['loggingin']);
}

?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>SSServicios</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">

				<!-- Header -->
					<header id="header">
						<h1>Cargando...</h1>
						<p>Internet &nbsp;&bull;&nbsp; Fibra Óptica &nbsp;&bull;&nbsp; Sueños</p>
						<nav>
							<ul>
								<li><a href="https://www.twitter.com" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="https://www.facebook.com" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
								<!--li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li-->
								<li><a href="mailto:info@ssservicios.com" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
							</ul>
						</nav>
					</header>

				<!-- Footer -->
					<footer id="footer">
						<span class="copyright">&copy; SSServicios. Design: <a href="http://html5up.net">HTML5 UP</a>.</span>
					</footer>

			</div>
		</div>
		<script>
			window.onload = function() { document.body.classList.remove('is-preload'); }
			window.ontouchmove = function() { return false; }
			window.onorientationchange = function() { document.body.scrollTop = 0; }
			setTimeout("location.href='http://www.google.com.ar'",8000);
		</script>
	</body>
</html>
