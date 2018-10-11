<?php
error_reporting(E_ALL ^ E_DEPRECATED);
ini_set('display_errors', '1');

$mysql_db = "dbname";  //Your database name here !
$mysql_host = "localhost"; //If the MySQL server is running on the same server as the web auth page
$mysql_user = "root"; //Change to the appropriate user that has access to DB/table
$mysql_pass = ""; //Change to the appropriate password for the user above
$table = "creds";  //Change to the appropriate table name. in hotspot.sql, the default name is creds.

//UniFi server credentials
$unifiServer = "https://ip_of_your_unifi_controller:8443"; //Change to the IP/FQDN of your UniFi Server
//It's important to note that if this server is offsite, you need to have port 8443 forwarded through to it
$unifiUser = "admin"; //Change to your UniFi Username
$unifiPass = "unificontrollerpassword"; //Change to your UniFi Password

//Establish connection the MySQL server using credentials as above.  If connection cannot be made, the process will fail and produce a troubleshooting error
$mysqli = new mysqli($mysql_host, $mysql_user, $mysql_pass, $mysql_db);
	if ($mysqli->connect_error) {
    die('Erreur de connexion (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
	}

//The function to authenticate a user using Username, Password, and Email as authentication paramaters then return a true boolena to the auth.php page
function auth_user($username,$password,$email,$table) {
	$link = mysqli_connect("localhost", "root", "", "hotspot");
	$query = "SELECT * FROM `$table` WHERE `username` = \"$username\"";
	$execute = mysqli_query($link, $query);
	while($row = mysqli_fetch_assoc($execute)) {
		if(($row['password'] == $password) && ($row['email'] == $email)) {
			return true;
		} else {
			echo 'false';
			echo 'Your username, password, or email was not found.<br />You will be redirected to the login page momentarily';
			sleep(5);
			header('Location: auth.php');
		}
	}
//If not requiring email as an authentication parameter, comment out the above while loop and uncomment the following while loop
/*
	while($row = mysql_fetch_assoc($execute)) {
		if($row['password'] == $password) {
			return true;
		} else {
			echo 'false';
			echo 'Your username and/or password was not found.<br />You will be redirected to the login page momentarily';
			sleep(5);
			header('Location: auth.php');
		}
	}
*/
}



function sendAuthorization($id, $minutes, $url) {
	$unifiServer ="https://00.00.00.00:8443"; // your unifi controller ip address
	$unifiUser = "admin";	// unifi controller username
	$unifiPass = "password"; // the password of controller username

	// Start Curl for login
	$ch = curl_init();
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
	curl_setopt($ch, CURLOPT_SSLVERSION, 1);
	// Login to the UniFi controller
	curl_setopt($ch, CURLOPT_URL, "$unifiServer/api/login");
	$data = json_encode(array("username" => $unifiUser,"password" => $unifiPass));
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
	curl_exec ($ch);
	
	// Send user to authorize and the time allowed
	$data = json_encode(array(
		'cmd'=>'authorize-guest',
        'mac'=>$id,
        'minutes'=>$minutes));
	// Send the command to the API
	curl_setopt($ch, CURLOPT_URL, $unifiServer . "/api/s/default/cmd/stamgr");
	curl_setopt($ch, CURLOPT_POSTFIELDS,$data);
	curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
	curl_exec ($ch);

// Logout of the UniFi Controller
	curl_setopt($ch, CURLOPT_URL, $unifiServer.'/logout');
	curl_exec ($ch);
	curl_close ($ch);
	unset($ch);
}
if ($_SESSION['loggingin'] = "md5(microtime().rand());") // Check to see if the form has been posted to
{
ob_start();
sendAuthorization($_SESSION['id'], $allowtime); //authorizing user for 12 hours
ob_end_clean();
unset($_SESSION['loggingin']);
}


?>

