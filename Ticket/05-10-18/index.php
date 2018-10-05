<html>
<?php

	$numcliente = $_GET['cl'];
	$ipcliente = $_GET['ip'];
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	$sql = "SELECT idtecnico, nombre FROM tecnico";
	$result2 = $conn->query($sql);
	
	$sql = "SELECT tecnico FROM reclamo r ORDER BY idreclamo DESC LIMIT 1;";
	$result1 = $conn->query($sql);
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$ultTecnico= $row["tecnico"];
		}
	}		
	$conn->close();
	
	$msj="";
	//Leer
	if ($archivo = fopen('mensaje.txt', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
	fclose($archivo);
	
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
    select {
        width:173px;
    }
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
	.button {
		background-color: #4CAF50; /* Green */
		border: none;
		color: white;
		padding: 10px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		cursor: pointer;
	}
	.button2 {
		background-color: #AF4C55; /* Green */
		border: none;
		color: white;
		padding: 10px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
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
	.msj {
		width: 300px;
		padding: 25px;
		margin: 25px;
		border: 10px solid red;
		border-radius: 5px;
	}
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
<div align="center">
	<h1>SSServici<a onclick="sumO();">o</a>s v1.0</h1>
	<h2>Rec<a onclick="sumL();">l</a>a<a onclick="sumM();">m</a><a onclick="sumO2();">o</a><a onclick="sumS();">s</a></h2>
	<h4>
	<br>
	<br>
	<table><tr><th class="msj" align="center">
<?php
		echo $msj;
	?>
	</table></tr></th>
	<br>
	<br>
	<h2>
	<tr>
		<th align="right">
			Cliente: 
		</th>
		<td align="right">
			<i><b><?php echo $numcliente; ?></b></i>
		</td>
	</tr>
	<br>
	<tr>
		<th align="right">
			IP: 
		</th>
		<td align="right">
			<i><b><?php echo $ipcliente; ?></b></i>
		</td>
	</tr>
	</h2>
		<table>
			<tr>
				<td >
					<INPUT TYPE = "Text" NAME = "codCliente" id="codCliente" width="100" value="<?php echo $numcliente; ?>" style="display:none">
				</td>
			</tr>
			<tr>
				<td>
					<INPUT TYPE = "Text" NAME = "nombrePanel" id="nombrePanel" width="100" value="<?php echo $ipcliente; ?>" style="display:none">
				</td>
			</tr>
			<tr>
				<th align="right">
					Reclamo: 
				</th>
				<th align="left">
					<input type="checkbox" id="reclamo-1" value="Microcortes" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-1">Microcortes</label><br>
					<input type="checkbox" id="reclamo-2" value="Cortes Prolongados" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-2">Cortes Prolongados</label><br>
					<input type="checkbox" id="reclamo-3" value="Sin Servicio" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-3">Sin Servicio</label><br>
					<input type="checkbox" id="reclamo-4" value="Baja Velocidad" onclick="ValidarCheckBox(this);"/>
					<label for="reclamo-4">Baja Velocidad</label><br> 
				</th>
			</tr>
			<tr>
			</tr>
			<tr>
				<th align="right">
					Tecnico: 
				</th>
				<th>
					<select id="tecnico" width="150">
	<?php
						if ($result2->num_rows > 0) {
							while($row = $result2->fetch_assoc()) {
								$idtecnico= $row["idtecnico"];
								$nombre= $row["nombre"];
		?>
						<option value="<?php echo $idtecnico; ?>" <?php if ($ultTecnico == $idtecnico ) echo 'selected' ; ?>><?php echo $nombre; ?></option>
	<?php
							}
						}
		?>
					</select>
				</th>
			</tr>
		</table>
		<br>
		<input type="submit" class="button" value="Agregar" id="submit" onclick="clic();">
	<br>
	<script  src="insert.js"></script>
	<div id="result"></div>
	<br>
	<br>
	<br>
	<br>
	<button class="button" onclick="window.open('stats.php','_blank');" target="_blank">Estadísticas</button>
	<br>
	<br>
	<br>
	<ul data-bind="foreach:servers">
		<li align="left">
			<span data-bind="text: lugar"></span>
			<a href="#" data-bind="text:name,attr:{href: 'http://'+name}">tester</a> <span data-bind="text:status,css:status"></span>
		</li>
	</ul>
</div>
<script>
	function clic(){
		setTimeout(function(){
			var p = document.getElementById('p1');
			var divContains_P = document.getElementById('result').contains(p);
			if(divContains_P){
				document.getElementById("submit").disabled=true;
				document.getElementById("submit").className='button2';
				document.getElementById("submit").value='Listo';
			}
		}, 300);
	}	
	
	var EE="";
	function ValidarCheckBox(obj){
		var select = obj.value;
		if(select == "Microcortes"){
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-3").checked = false;
		}
		if(select == "Cortes Prolongados"){
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-3").checked = false;
		}
		if(select == "Sin Servicio"){
			document.getElementById("reclamo-1").checked = false;
			document.getElementById("reclamo-2").checked = false;
			document.getElementById("reclamo-4").checked = false;
		}
		if(select == "Baja Velocidad"){
			document.getElementById("reclamo-3").checked = false;
		}
	}
	//Recuperar MSJ
	function sumO(){
		if(EE == ""){
			EE="O";
		}else{
			EE="";
		}
	}
	function sumL(){
		if(EE == "O"){
			EE="OL";
		}else{
			EE="";
		}
	}	
	function sumM(){
		if(EE == "OL"){
			EE="OLM";
		}else{
			EE="";
		}
	}
	function sumO2(){
		if(EE == "OLM"){
			EE="OLMO";
		}else{
			EE="";
		}
	}
	function sumS(){
		if(EE == "OLMO"){
			alert("EE");
			EE="";
		}else{
			EE="";
		}
	}
	
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
			}, 1500);
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
</script>
</body>
</html>