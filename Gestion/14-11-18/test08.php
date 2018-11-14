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
	
	$ipAntena = $ip1.".".$ip2.".".$ip3.".254";

	$Pings=array();
	array_push($Pings,'Router');
	array_push($Pings,'Router Con 6464');
	array_push($Pings,'Router Con 8080');
	array_push($Pings,'Antena');
	array_push($Pings,'Antena Cambium');
	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type='text/javascript' src='knockout-3.4.2.js'></script>
<style type="text/css">
	.responded {
		background-color:green;
	}
	.checking,.unchecked {
		background-color:#FF8C00;
	}
	.timeout {
		background-color:red;
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<table border="2" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="250" align="left">Dirección</th>
			<th width="200" align="center">IP</th>
			<th width="70" align="right">Estado</th>
		</tr>
		<tbody data-bind="foreach:servers" >
			<tr>
				<td width="250"><i id="td1">Google</i></td>
				<td width="200"><b><a href="http://www.google.com.ar" id="td2">8.8.8.8</a></b></td>
				<td width="70" class="checking" id="result"></td>
			</tr>
		</tbody>
	</table>
	<br>
</div>
<script>
	//PING 3-2-4
	function ping(ip) {
		
		document.getElementById("result").setAttribute("class", "unchecked");
		var inUse = true;
		var ip = ip;
		var img = new Image();
		img.onload = function () {
			alert('TEST1');
			inUse = false;
			document.getElementById("result").setAttribute("class", "responded");
		};
		img.onerror = function (e) {
			//alert(inUse+'TEST2');
			if (inUse) {
				inUse = false;
				document.getElementById("result").setAttribute("class", "responded");
			}

		};
		var start = new Date().getTime();
		img.src = "http://" + ip;
		var timer = setTimeout(function () {
			//alert(inUse+'TEST4');
			if (inUse) {
				inUse = false;
				document.getElementById("result").setAttribute("class", "timeout");
			}
		}, 3000);
		setTimeout(function(){
			window.stop();
		}, 4000);
	}
	//new ping('8.8.8.8');
	document.getElementById("td1").innerHTML = "<?php echo 'Router 6969';?>";
	document.getElementById("td2").innerHTML = "<?php echo $ipcliente;?>";
	new ping('<?php echo $ipcliente;?>:6969');

</script>
</body>
</html>