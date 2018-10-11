<?php

//PHP SCRIPT FOR SIMPLE PORTAL
//REQUIREMENTS:
//curl needs to be enabled (php_curl.dll for windows)



$id = $_GET['id'];
$url = $_GET['url'];
$ap = $_GET['ap'];

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
  <title>Guest WiFi</title>
  <meta name="author" content="panos">
 <!-- <link rel="icon" href="/favicon.ico" type="image/vnd.microsoft.icon" /> -->
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
 <!-- <link rel="stylesheet" type="text/css" media="all" href="responsive.css"> -->
 <style>.error {color: #FF0000;}</style>
    <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/guest.js"></script><script>
function validateForm()
{
var x=document.forms["login"]["firstname"].value;
if (x==null || x=="")
  {
  alert("First name must be filled out");
  return false;
  }

var x=document.forms["login"]["lastname"].value;
if (x==null || x=="")
  {
  alert("Last name must be filled out");
  return false;
  }
var x=document.forms["login"]["emailaddress"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Please enter a valid e-mail address");
  return false;
  }
}
</script>
</head>

<body>
<div class="login-content content-box">
     <div class="tou-box">
          <form name="login" method="post" action="authorized.php" onsubmit="return validateForm()">
		     <section id="container">
		        <div class="logo">
			 	  <h2 id="top">Guest WiFi</h2>
		        </div>

		       <p class="info">Welcome to our Guest WiFi.<br />
		       Please enter the User Information and read the Terms of Use before continuing.</p>
			   <br /><hr>
			   <p class="info">Required User Information: <br />

					Firstname: <input type="text" name="firstname"><br />
					Lastname: <input type="text" name="lastname"><br />
					Email:<input type="text" name="emailaddress" size="25"><br />
					<input type="hidden" name="id" value="<?php echo $id; ?>">
					<input type="hidden" name="ap" value="<?php echo $ap; ?>">
				</p>





	 <div class="tou-box">
				<!-- <h2>Terms of Use</h2> -->
				<div class="tou-wrapper" id="tou">
					<div class="tou">
					<p>Terms of Agreement</p>
				<br>
				<ul>
				<p>By accessing the wireless network, you acknowledge that you're of legal age, you have read and understood and agree to be bound by this agreement
				This is an agreement between you and LeGrove Apartments Watford and its affiliates ("LeGrove Apartments Watford", "we", or "us") for 802.11b/g/n wireless and broadband communications services and related services and features (the "Service").</p>
				<li><b>Service Availability:</b> An 802.11b/g/n and/or Ethernet-compatible computer, card, and/or device ("Unit") are required to enable the Service to operate. You are responsible for ensuring the compatibility of your Unit with the Service. The availability and performance of the Service is subject to all memory, storage and other limitations in the Unit. Service is available to your Unit only when it is within the operating range of our system and/or directly connected. Service is subject to unavailability, including unavailability due to emergencies, collocation failures, transmission and equipment limitations, or maintenance and repair, and may be interrupted, refused, limited or curtailed. We are not responsible for data, messages or pages that you may lose or that become misdirected because of interruptions or performance issues with the Service or wireless communications networks generally. We may impose usage or Service limits, Suspend Service, or block certain kinds of usage in our sole discretion to protection users or our business. Network speed is no indication of the speed at which your Unit or the Service sends or receives data. Actual network speed will vary based on unit configuration, compression and network congestion.
				</li>
				<li><b>Use of Service:</b> You agree not to resell any aspect of the Service, whether for profit or otherwise, or to authorize any other individual or entity to use the Service. You agree not to use the Service or your Unit for any fraudulent, unlawful, harassing or abusive purposes, or in such a way as to create damage or risk to our business, reputation, employees, subscribers, facilities, and third parties or the public generally. You agree that sharing the Service with another party breaches the Agreement and may constitute fraud or theft, for which LeGrove Apartments Watford reserves the rights set forth herein and all other legal and equitable remedies. You agree that you will not use the Service or your Unit to send any illegal, harassing, threatening, obscene, offensive or unsolicited commercial text or e-mail messages or to intentionally transmit any computer viruses.
				</li>
				<li><b>Content Disclaimer:</b> Cautions or Restrictions. LeGrove Apartments Watford does not control, nor is it in any way liable for, data or content that you can access or receive via the Service. The Internet contains unedited materials, some of which are sexually explicit or may be offensive to you. LeGrove Apartments Watford has no control over and accepts no responsibility for such materials. LeGrove Apartments Watford is not a publisher or third-party content that can be accessed through the Service, and is not responsible for any opinions, advice, statements, services or other information provided by third parties and accessible through the Service. You are responsible for evaluating such content. You are responsible for paying all fees and charges from third party vendors whose sites, products or services you access, buy or use via the Service. LeGrove Apartments Watford does not guarantee the accuracy, completeness or usefulness of information that is obtained through the Service, and delays or omissions may occur. If you choose to use the Service to access web sites or content provided by third parties or purchase products from third parties, then your personal information may be available to the third-party provider. The way third parties handle and use your personal information related to the use of their service is governed by their policies and has no responsibility for their policies, or third parties' compliance with them
				</li>
				<li><b>Privacy and Security:</b> Wireless/Wired systems use radio channels or local area networks to transmit voice and data communication information. Privacy cannot be guaranteed, and we shall not be liable to you for any lack of privacy you experience while using the Service. You agree to protect your password and you are responsible for any usage of your account. Although we support customer-initiated security solutions such as virtual private networks, encryption and personal firewalls, we do not provide these solutions for our customers' use and are not responsible for their effectiveness.
				</li>
				<li><b>Marketing:</b> We value your privacy. Your personal information will be kept confidential and will never be sold to third parties. It will only be used for communications & marketing from LeGrove Apartments and any associated companies. An opt-out option is available on the final page where you agree to these terms & conditions.
				</ul>
					
					</div>
				</div>
				<fieldset class="accept-tou">
					<input id="accept-tou" type="checkbox" checked="checked" name="accept-tou" value="yes" />
					<label class="normal" ><a href="javascript:void(0)" id="show-tou">I accept the Terms of Use</a></label>
				</fieldset>
				<hr>
				<div class="form-controls">
					<!-- submit (only for no authentication) -->




					<unifi if="auth_none">
						<!-- <input name="connect" type="submit" value="Connect" id="connect" class="button requires-tou" /> -->
						<input id="submit" type="submit" name="submit" value="Connect" onClick="this.form.submit(); this.disabled=true; this.value='Sending…'; "/>
					</unifi>
					</div>


			</div>
		</form>
	</div>

    </form>

<script type="text/javascript">
$(function() {
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
<div id="footer">
		<font color="white" size="2">
		<b>Wifi Powered By Your Company Name</b>
		</font>
		</footer>
</body>
</html>