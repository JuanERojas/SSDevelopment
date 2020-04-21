<html>
<?php

	$numcliente = $_GET['cl'];
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
	array_push($Pings,'Panel');
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type='text/javascript' src='knockout-3.4.2.js'></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
	html *
	{
		font-family: sans-serif;
	}
	body {
		font-family: Arial, Helvetica, sans-serif;
	}
	.pointer {
		cursor: pointer;
	}
	a:link {
		text-decoration: none;
	}
	a:visited {
		text-decoration: none;
	}
	a {
		text-decoration: none;
	}
	.responded {
		background-color:green;
	}
	.checking,.unchecked {
		background-color:#FF8C00;
	}
	.timeout {
		background-color:red;
	}
	table {
		border-collapse: collapse;
	}
	tr:hover {
		background-color:#f5f5f5;
	}
</style>
</head>
<body bgcolor="B7D590">
<div align="center">
	<h1>SSServicios v1.3</h1>
	<h2>Gestion</h2>
	<h4>
	<br>
	<br>
	<br>
	<!--ul data-bind="foreach:servers">
		<li align="left">
			<span data-bind="text: lugar"></span>
			<a href="#" data-bind="text:name,attr:{href: 'http://'+name}">tester</a> <span data-bind="text:status,css:status"></span>
		</li>
	</ul--->
	<table border="2" bgcolor="FFFFFF">
		<tr bgcolor="CFCFCF">
			<th width="250" align="left">Dirección</th>
			<th width="200" align="center">IP</th>
			<th width="70" align="right">Estado</th>
		</tr>
		<tbody data-bind="foreach:servers" >
			<tr>
				<td width="250"><i data-bind="text:lugar">tester</i></td>
				<td width="200"><b><a href="#" data-bind="text:name,attr:{href: 'http://'+name}">tester</a></b></td>
				<td width="70" data-bind="css:status"></td>
			</tr>
		</tbody>
		
	</table>
</div>
<script>	
	//PING
	function ping(ip, callback) {

		if (!this.inUse) {
			this.status = 'unchecked';
			this.inUse = true;
			this.callback = callback;
			this.ip = ip;
			var _that = this;
			this.img = new Image();
			this.img.onload = function () {
				_that.inUse = false;
				_that.callback('responded');

			};
			this.img.onerror = function (e) {
				if (_that.inUse) {
					_that.inUse = false;
					_that.callback('responded', e);
				}

			};
			this.start = new Date().getTime();
			this.img.src = "http://" + ip;
			this.timer = setTimeout(function () {
				if (_that.inUse) {
					_that.inUse = false;
					_that.callback('timeout');
				}
			}, 3000);
		}
	}
	var Pings = ['<?php echo $Pings[0];?>',
		'<?php echo $Pings[1];?>',
		'<?php echo $Pings[2];?>',
		'<?php echo $Pings[3];?>',
		'<?php echo $Pings[4];?>',
		'<?php echo $Pings[5];?>'
	]
	var PingModel = function (servers) {
		var self = this;
		var myServers = [];
		var cont=0;
		var lu='';
		ko.utils.arrayForEach(servers, function (location) {
			lu= Pings[cont];
			myServers.push({
				name: location,
				lugar: ko.observable(lu),
				status: ko.observable('unchecked')
			});
			cont=cont+1;
		});
		self.servers = ko.observableArray(myServers);
		ko.utils.arrayForEach(self.servers(), function (s) {
			s.status('checking');
			new ping(s.name, function (status, e) {
				s.status(status);
			});
		});
	};
	var komodel = new PingModel(['<?php echo $ipcliente;?>',
		'<?php echo $ipcliente;?>:6464',
		'<?php echo $ipcliente;?>:8080',
		'<?php echo $ipcliente;?>:6969',
		'<?php echo $ipclienteCm;?>:6969',
		'<?php echo $ipAntena;?>:6969'
		]);
	ko.applyBindings(komodel);
	setTimeout(function(){
		window.stop();
	}, 4000);
</script>
</body>
</html>