<html>
<?php
	$ipcliente = $_GET['ip'];
	
	//PING
		
	$nombrePanel = $ipcliente.'';
	$ipclienteCm = "10.".substr($nombrePanel." ",4,-1);
	
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ipPanel = $ip1.".".$ip2.".".$ip3.".254";

?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css"></style>
</head>
<body bgcolor="B7D590">
<div align="left">
	<br>
	<br>
	<?php 
			function urlExists($url=NULL)  
			{  
				if($url == NULL) 
					return false;  
				$ch = curl_init($url);  
				curl_setopt($ch, CURLOPT_TIMEOUT, 5);  
				curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);  
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);  
				$data = curl_exec($ch);  
				$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);  
				curl_close($ch);  
				if($httpcode>=200 && $httpcode<300){  
					return true;  
				} else {  
					return false;  
				}  
			}
			urlExists($ipPanel);
		?>
</div>
<script></script>
</body>
</html>