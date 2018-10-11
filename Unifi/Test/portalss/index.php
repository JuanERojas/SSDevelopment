<!-- UIKit-Styled UniFi Portal v0.1 - 06/07/2014 -->
<!-- This template is maintained at the following thread: -->
<!-- http://community.ubnt.com/t5/UniFi/a/td-p/905986 -->

<?php

//PHP SCRIPT FOR SIMPLE PORTAL
//REQUIREMENTS:
//curl needs to be enabled (php_curl.dll for widnows)

session_start();

$_SESSION['id'] = $_GET['id'];          //user's mac address
$_SESSION['ap'] = $_GET['ap'];          //AP mac
$_SESSION['ssid'] = $_GET['ssid'];      //ssid the user is on (POST 2.3.2)
$_SESSION['time'] = $_GET['t'];         //time the user attempted a request of the portal
$_SESSION['refURL'] = $_GET['url'];     //url the user attempted to reach
$_SESSION['loggingin'] = "unique key";  //key to use to check if the user used this form or not
					// -- prevents them from simply going to /authorized.php on their own

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" dir="ltr" class="uk-height-1-1">
<head>
	<title>SS Servicios</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- UIKit Styles -->
	<link rel="stylesheet" href="css/uikit.active.css" />
	<link rel="stylesheet" href="css/custom.css" />
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/uikit.min.js"></script>
	<!-- End UIKit Styles -->
</head>

<body class="uk-height-1-1">
	<!-- see README.txt for HTML customization instructions -->
	<div class="uk-vertical-align uk-text-center uk-height-1-1"><!-- Open Display Panel -->
		<div class="uk-vertical-align-middle" style="width: 320px;"> <!-- Set the column width here -->
			<div class="uk-container-center">

				<div class="uk-panel uk-panel-divider">&nbsp</div> 

				<!-- Logo Panel and Welcome Text -->
				<div class="uk-panel-box uk-panel-box-secondary">
					<span>&nbsp</span>
					<div class="uk-panel-teaser">
						<img src="logo.png" alt="SSServicios" />
					</div>
					<span class="uk-text-large">Bienvenido a <br />SSServicios!</span>
				</div> <!-- Close Logo Panel -->

				<div class="uk-panel uk-panel-divider">&nbsp</div> 

				<!-- UniFi Portal Forms Panel -->
				<div class="uk-panel-box uk-panel-box-secondary">

					<!-- IF NO AUTHENTICATION -->
					<unifi if="auth_none">
						<form name="input" id="submit-form" method="post" action="authorized.php"" class="uk-form">
							<!-- A Lonely Connect Button -->
							<div>
								<input name="submit" type="submit" value="Ingresar" id="submit" class="uk-button-large uk-button-primary uk-width-1-1" />
							</div>
						</form>
					</unifi>
				</div> <!-- Close UniFi Portal Forms Panel -->

				<div class="uk-panel uk-panel-divider">&nbsp</div>

				<!-- Terms of Use Panel -->
				<div class="uk-panel-box uk-panel-box-secondary">
					<h3 class="uk-panel-title"><i class="uk-icon-legal"></i> Términos de uso</h3>
					<p>Al continuar, estarias confirmando que has leido, entendido y aceptado los  <a href="#termsmodal" data-uk-modal >Términos de uso</a></p>
				</div> <!-- Close Terms of Use Panel -->

				<div class="uk-panel uk-panel-divider">&nbsp</div>

				<!-- Plug for Operator or Installer (Optional) - Remember to add website IP
				to allowed 	list in Guest Portal config for Unauthorized Access to sites
				linked here.  You can also just delete/comment the next 6 lines -->
				<div class="uk-panel">
					<div class="uk-panel-teaser">
						<a href="http://www.ssservicios.com.ar/" target="_blank"><img src="operator.png" alt="Conexiones inalámbricas por SSServicios" /></a>
					</div>
					<span class="uk-text-small"><a href="http://www.ssservicios.com.ar/" target="_blank">Conexiones inalambricas SSServicios</a></span>
				</div> <!-- Close Plug Panel -->

			</div>
		</div>	
	</div> <!-- Main Display Panel is now Closed -->

	<!-- This is the Modal Popup box for Terms of Use -->
	<div class="uk-modal" id="termsmodal">
		<div class="uk-modal-dialog">
			<a class="uk-modal-close uk-close"></a>
			<h3><i class="uk-icon-legal"></i> Terms of Use</h3>
			<p>By accessing the wireless network, you acknowledge that you're of legal age, you have read and understood and agree to be bound by this agreement</p>
			<ul>
				<li>The wireless network service is provided by the property owners and is completely at their discretion. Your access to the network may be blocked, suspended, or terminated at any time for any reason.</li>
				<li>You agree not to use the wireless network for any purpose that is unlawful and take full responsibility of your acts.</li>
				<li>The wireless network is provided &quot;as is&quot; without warranties of any kind, either expressed or implied. </li>
			</ul>
		</div>
	</div>	

</body>
</html>