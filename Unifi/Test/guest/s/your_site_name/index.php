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
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>WI-FI</title>
  <meta name="author" content="hello-www.com">
  <link rel="icon" href="/favicon.ico" type="image/vnd.microsoft.icon" />
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
  <link rel="stylesheet" type="text/css" media="all" href="responsive.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/guest.js"></script>
</head>
<body class="login-page">
	<section id="container">
 		<div class="logo">
			<h2 id="top">SS Servicios</h2>
			<p align=center><img src="./images/logo.png"></p>
		</div>
		<p class="info">SS Servicios.</p>
				</div>
			</form>
	</div>
	</div>
	<div class="login-content content-box">
		<form name="login" action="authorized.php" method="post">
			<div class="tou-box"><br>
				<p class="info"> </p>
				<div class="tou-wrapper" id="tou">
					<div class="tou">
					<p>test:</p>
					<p>mas test.</p>
					<ul>
						<li>opc1.</li>
						<li>opc2.</li>
						<li>opc3. </li>
					</ul>
					</div>
				</div>
				<fieldset class="accept-tou">
					<input id="accept-tou" type="checkbox" checked="checked" name="accept-tou" value="yes" />
					<label class="normal" >Aceptar <a href="javascript:void(0)" id="show-tou">Terminos de uso.</a></label>
				</fieldset>
				<div class="form-controls">
					<!-- submit (only for no authentication) -->
					      <section id="buttons">
			<input type="submit" name="connect" value="Conectar" id="submitbtn" class="submitbtn" tabindex="3" />
                       <br style="clear:both;">
					   </form>
					</section>			
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
$(function() {
	var form = $('#submit-form');
	form.submit(function() {
		form.find('input[name=connect]').disable();
		form.find('input[name=byfree]').disable();
		form.find('input[name=byvoucher]').disable();
		form.find('input[name=bycredit]').disable();
	});
	$('#tou').hide();
	$('#show-tou').click(function() {
		$('#tou').show();
	});
	$('#accept-tou').click(function() {
		if (!$('#accept-tou').checked()) {
			$('input.requires-tou').disable();
		}
		else {
			$('input.requires-tou').enable();
		}
	})
});
</script>
</body>
</html>