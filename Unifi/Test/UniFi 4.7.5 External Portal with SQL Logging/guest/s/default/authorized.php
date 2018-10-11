<?php
//Detect users browser and OS version for logging
$user_agent     =   $_SERVER['HTTP_USER_AGENT'];

function getOS() { 

    global $user_agent;

    $os_platform    =   "Unknown OS Platform";

    $os_array       =   array(
                            '/windows nt 10/i'     =>  'Windows 10',
                            '/windows nt 6.3/i'     =>  'Windows 8.1',
                            '/windows nt 6.2/i'     =>  'Windows 8',
                            '/windows nt 6.1/i'     =>  'Windows 7',
                            '/windows nt 6.0/i'     =>  'Windows Vista',
                            '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
                            '/windows nt 5.1/i'     =>  'Windows XP',
                            '/windows xp/i'         =>  'Windows XP',
                            '/windows nt 5.0/i'     =>  'Windows 2000',
                            '/windows me/i'         =>  'Windows ME',
                            '/win98/i'              =>  'Windows 98',
                            '/win95/i'              =>  'Windows 95',
                            '/win16/i'              =>  'Windows 3.11',
                            '/macintosh|mac os x/i' =>  'Mac OS X',
                            '/mac_powerpc/i'        =>  'Mac OS 9',
                            '/linux/i'              =>  'Linux',
                            '/ubuntu/i'             =>  'Ubuntu',
                            '/iphone/i'             =>  'iPhone',
                            '/ipod/i'               =>  'iPod',
                            '/ipad/i'               =>  'iPad',
                            '/android/i'            =>  'Android',
                            '/blackberry/i'         =>  'BlackBerry',
                            '/webos/i'              =>  'Mobile'
                        );

    foreach ($os_array as $regex => $value) { 

        if (preg_match($regex, $user_agent)) {
            $os_platform    =   $value;
        }

    }   

    return $os_platform;

}

function getBrowser() {

    global $user_agent;

    $browser        =   "Unknown Browser";

    $browser_array  =   array(
                            '/msie/i'       =>  'Internet Explorer',
                            '/firefox/i'    =>  'Firefox',
                            '/safari/i'     =>  'Safari',
                            '/chrome/i'     =>  'Chrome',
                            '/opera/i'      =>  'Opera',
                            '/netscape/i'   =>  'Netscape',
                            '/maxthon/i'    =>  'Maxthon',
                            '/konqueror/i'  =>  'Konqueror',
                            '/mobile/i'     =>  'Handheld Browser'
                        );

    foreach ($browser_array as $regex => $value) { 

        if (preg_match($regex, $user_agent)) {
            $browser    =   $value;
        }

    }

    return $browser;

}


$user_os        =   getOS();
$user_browser   =   getBrowser();

// Enter db parameters Host, UserName, Password, and database name.
$con=mysqli_connect("MYSQL-HOSTNAME","MYSQL-USER","MYSQL-PASS","DB-NAME");
// Check connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// escape variables for security
$firstname = mysqli_real_escape_string($con, $_POST['firstname']);
$lastname = mysqli_real_escape_string($con, $_POST['lastname']);
$emailaddress = mysqli_real_escape_string($con,$_POST['emailaddress']);
$id = mysqli_real_escape_string($con, $_POST['id']);
$ap = mysqli_real_escape_string($con, $_POST['ap']);
$datetime = date_create()->format('Y-m-d H:i:s');

$sql="INSERT INTO WIFIUSERS (FirstName, LastName, emailAddress, id, ap, datetime, browser, os)
VALUES ('$firstname', '$lastname', '$emailaddress', '$id', '$ap', '$datetime', '$user_browser', '$user_os')";

if (!mysqli_query($con,$sql)) {
  die('Error: ' . mysqli_error($con));
}

mysqli_close($con);


session_start();

$allowtime = 12;

 

function sendAuthorization($id, $minutes)
{
	// CHANGE TO YOUR DETAILS
$unifiServer = "https://127.0.0.1:8443";
$unifiUser = "UNIFI-IP";
$unifiPass = "UNIFI-PASS!";

// Start Curl for login
$ch = curl_init();
// We are posting data
//curl_setopt($ch, CURLOPT_RETURNTRANSFER, FALSE);
curl_setopt($ch, CURLOPT_POST, TRUE);
// Set up cookies
$cookie_file = "/tmp/unifi_cookie";
curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file);
// Allow Self Signed Certs
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
// Force SSL3 only
curl_setopt($ch, CURLOPT_SSLVERSION, 1);
// Login to the UniFi controller
curl_setopt($ch, CURLOPT_URL, "$unifiServer/api/login");
$data = json_encode(array("username" => $unifiUser, "password" => $unifiPass));
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));

// curl_setopt($ch, CURLOPT_POSTFIELDS, "login=login&username=$unifiUser&password=$unifiPa​ss");
// send login command
curl_exec ($ch);
echo "Checkpoint 1";

// Send user to authorize and the time allowed
$data = json_encode(array(
'cmd'=>'authorize-guest',
'mac'=>$id,
'minutes'=>$minutes));

// Send the command to the API
// curl_setopt($ch, CURLOPT_URL, $unifiServer.'/api/cmd/stamgr');
curl_setopt($ch, CURLOPT_URL, $unifiServer . "/api/s/default/cmd/stamgr");
curl_setopt($ch, CURLOPT_POSTFIELDS, 'json='.$data);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
curl_exec ($ch);

//$result = json_decode(curl_exec($ch));
//return $result;

// Logout of the UniFi Controller
curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
curl_exec ($ch);
curl_close ($ch);
unset($ch);
}

if ($_SESSION['loggingin'] == "unique key") // Check to see if the form has been posted to
{
ob_start();
//echo sendAuthorization($_SESSION['id'], $allowtime);
SendAuthorization($_SESSION['id'], $allowtime*60); //authorizing user for X minutes
ob_end_clean();
unset($_SESSION['loggingin']);
}

?>

<script>
//allow time for the authorization to go through
setTimeout("location.href='http://www.Google.com'",5000);
</script>


<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <title>Guest WiFi</title>
  <meta name="author" content="panos">
  <link rel="stylesheet" type="text/css" media="all" href="style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/guest.js"></script>
</head>
<body>
<div class="login-content content-box">
     <div class="tou-box">
          <form name="login" action="authorized.php" method="post">
		     <section id="container">
		     		        <div class="logo">
			 	  <h2 id="top">Connected to Guest Wifi</h2>
		        </div>
		        <p class="info">Hi <?php echo $_POST['firstname']; ?>, you are now connected to the Guest WiFi. <br /><br />
				Your session is now valid for 12 hours. If you wish to use WiFi beyond this point please re-authenticate.<br /><br />
				<div class="text">
				<script type="text/javascript">

(function () {
    var timeLeft = 5,
        cinterval;

    var timeDec = function (){
        timeLeft--;
        document.getElementById('countdown').innerHTML = timeLeft;
        if(timeLeft === 0){
            clearInterval(cinterval);
        }
    };

    cinterval = setInterval(timeDec, 1000);
})();

</script>
<center>You Will Be Redirected...<br />
Please wait ! <span id="countdown">5</span></center>
</div>
				</p>
		       <hr>

			</div>

		</form>
	</div>

    </form>
	<div id="footer">
		<font color="white" size="2">
		<b>Wifi Powered By Your Company Name</b>
		</font>
		</footer>
</body>
</html>