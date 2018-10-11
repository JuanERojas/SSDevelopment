<!DOCTYPE html>
<?php
//Start session to grab MAC Address and have it available throughout the auth process
	session_start();
//Get MAC Address and assign it to _SESSION variable to be available throughout the auth process
	if($_GET['id']) {
		$id = $_GET['id'];
	} else {
		echo "Direct Access is not allowed";
		exit();
	}
//Get original target URL for redirect after auth
	if ($_GET['url']) {
		$url = $_GET['url'];
	} else {
//If original URL not specified, default to azylis.net
		$url = 'http://www.google.fr';
	}
?>
<html>
<head>
<title>Welcome to </title> <!--Put whatever you want displayed as the title of the tab-->
</head>
<style>
body {
	font-family: arial;
}
variable {
	color: #FF0000;
}
</style>
<body>
<h3>your company name</variable></h3> <!--Remove the <variable> tags and put in your company name -->
<form action="auth.php" method=POST>
Username: <input type=text name=username required /><br />
Password: <input type=password name=password required /><br />
E-Mail: <input type=text name=email required /><br /> <!-- Optional field if you would like to require email input -->
<input type=hidden name=mac value=<?php echo $id; ?> />
<input type=hidden name=url value=<?php echo $url; ?> />
<input type=submit name=submit value="Se connecter" />
</body>

</html>