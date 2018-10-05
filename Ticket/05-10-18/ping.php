<html>
<?php
	$ipcliente = $_GET['ip'];
	
	$nombrePanel = $ipcliente.'';
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ipAntena = $ip1.".".$ip2.".".$ip3.".254";
	
	
?>
<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type='text/javascript' src='knockout-3.4.2.js'></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
	.responded {
		color:green;
	}
	.checking,.unchecked {
		color:#FF8C00;
	}
	.timeout {
		color:red;
	}
	}
</style>
</head>
<body bgcolor="B7D590">
	
	<ul data-bind="foreach:servers">
		<a href="#" data-bind="text:name,attr:{href: 'http://'+name}">tester</a> <span data-bind="text:status,css:status"></span>
	</ul>
	
<script>
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
			}, 1500);
		}
	}
	var PingModel = function (servers) {
		var self = this;
		var myServers = [];
		ko.utils.arrayForEach(servers, function (location) {
			myServers.push({
				name: location,
				status: ko.observable('unchecked')
			});
		});
		self.servers = ko.observableArray(myServers);
		ko.utils.arrayForEach(self.servers(), function (s) {
			s.status('checking');
			new ping(s.name, function (status, e) {
				s.status(status);
			});
		});
	};
	var komodel = new PingModel(['localhost',
		'10.15.15.2',
		'<?php echo $ipcliente;?>',
		'<?php echo $ipcliente;?>:6969/',
		'<?php echo $ipAntena;?>',
		'<?php echo $ipAntena;?>:6969'
		]);
	ko.applyBindings(komodel);
</script>
</body>
</html>