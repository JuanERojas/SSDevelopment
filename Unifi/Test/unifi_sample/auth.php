<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<?php
//error_reporting(E_ALL);
//ini_set('display_errors', '1');
	session_start();
	require_once 'config.php.inc';
	$user = trim($_POST['username']);
	$password = trim($_POST['password']);
	$email = trim($_POST['email']);
	$mac = trim($_POST['mac']);
	$url = trim($_POST['url']);
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $unifiServer."/api/s/default/cmd/stamgr");
	$auth = auth_user($user,$password,$email,$table);
	if($auth) {
	echo 'Connexion OK !';	
		//Minutes to authorize, change to suit your needs
		$minutes = 10;
		sendAuthorization($mac,$minutes,$url);
		header('Location: http://www.google.fr'); // here is the URL you want to redirect
	} else {
	echo "Wrong credentials!"
	} 
	sleep(10);
	header('Location: '.$url.''); // if wrong credentials redirect to login page
?>
