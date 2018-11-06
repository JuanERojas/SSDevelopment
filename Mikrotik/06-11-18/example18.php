<?php
// Get all ips NAT

//header('Content-Type: text/plain');
require('routeros_api.class.php');

echo 'GET all IPs NAT<br>';

if ($archivo = fopen('cred.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$msj= $msj.$linea;
		}	
	}
fclose($archivo);
$credenciales = explode(';', $msj);
$ipRouteros=$credenciales[0];  		// tu RouterOS.
$Username=$credenciales[1];			// Usuario
$Pass=$credenciales[2]; 			// Pass
$api_puerto=$credenciales[3]; 		// Port

$API = new RouterosAPI();
$API->debug = true;

if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	//$API->write('/ip/address/print',true);
	$API->write('/ip/firewall/nat/print',true);
	$ARRAY4 = $API->read(false);
	$mostrar='';
	$impr=false;
	$cont=0;
	$json = '{}';
	$json = json_decode($data,true);
	
	$libres=array();
	
	foreach($ARRAY4 as $v) { // Cargar JSON con IP Libres
		echo $v.'<br>';
	}
	$API->disconnect();
}

// ---------------------------------------------------------------------- INSERT BD

	$servername = "db.sslocal";
    $database = "SS-MK"; 
    $username = "usermk";
    $password = "ReadWriteMk@SS";
	
	$sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
		
	
    $tipo = 'Test';//$_POST['tecnico'].'';
    $comment = 'Cliente abcsde';//$_POST['reclamo'].'';
    $ipInterna = '172.16.31.23';//$_POST['numCliente'].'';
    $ipPublica = '';//$_POST['numCliente'].'';
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO `log` (idlog, tipo, `comment`, ipInterna, ipPublica, `time`) VALUES (NULL, :tipo, :comment, :ipInterna, :ipPublica, :tiempo)");
	
	$my_Insert_Statement->bindParam(':tipo', $tipo);
	$my_Insert_Statement->bindParam(':comment', $comment);
	$my_Insert_Statement->bindParam(':ipInterna', $ipInterna);
	$my_Insert_Statement->bindParam(':ipPublica', $ipPublica);
	
	
	//$tiempo = date("Y-m-d H:i:s");
	$timezone  = -3; //(GMT -3:00) 
	$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
	$my_Insert_Statement->bindParam(':tiempo', $tiempo);
	
	
	try { 
		if ($my_Insert_Statement->execute()) {
			//echo "Nuevo registro creado";
			//echo "<br>";
		}
	} catch (PDOException $error) {
		echo "Error al insertar" . $error->getMessage();
		echo "<br>";
	}
?>
