<?php
// ---------------------------------------------------------------------- INSERT BD
function guardar_log ($cm, $ipI, $ipP) {
	$servername = "db.sslocal";
    $database = "SS-MK"; 
    $username = "usermk";
    $password = "ReadWriteMk@SS";
	
	$sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      //echo "Conexion realizada";
    } catch (PDOException $error) {
      //echo 'Error al conectar: ' . $error->getMessage();
    }
	//echo "<br>";
		
	
    $tipo = 'Baja IP';
    $comment = $cm;
    $ipInterna = $ipI;
    $ipPublica = $ipP;
	
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
		//echo "Error al insertar" . $error->getMessage();
		//echo "<br>";
	}
}

// Eliminar IPs

$old = $_POST['old'].'';


require('routeros_api.class.php');

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


// Variables 
$commentRemv=$old; //Usado en find
$commentLibre='LIBRE';

$API = new RouterosAPI();
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
	
	// find id cliente NAT 1
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
	
	// REMOVE regla NAT 1
	$API->comm("/ip/firewall/nat/remove",
        array(
            ".id" => $ipfn[0][".id"],
            )
        );
	
	// find id cliente NAT 2
	$ipfn=$API->comm("/ip/firewall/nat/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));

	
	// REMOVE regla NAT 2
	$API->comm("/ip/firewall/nat/remove",
        array(
            ".id" => $ipfn[0][".id"],
            )
        );
		
	
	// find id cliente para SET
	$ipfn=$API->comm("/ip/address/print", 
                 array(
                ".proplist"=> ".id",
                "?comment" => $commentRemv, //Comment para Remove
                ));
		
	// SET regla ip-address como LIBRE
	$API->comm("/ip/address/set",
		  array(
			   ".id" => $ipfn[0]['.id'], // ID IP cliente en ip-address
			   'comment'  => $commentLibre,
			   )
		  );
	guardar_log($commentRemv, '', '');

	$API->disconnect();
}


?>