<?php	
require_once '../../conf/Constants.php';
require_once '../../conf/BDConexion.php';
require_once 'functions.php';

$msj = "";
$error = false;

// -------------------------------------------------------------------------- GET NOMBRE PANEL	
    $nombrePanel = $_POST['nombrePanel'].'';
	$ipAntena = $nombrePanel;
	$ip1 = strstr($nombrePanel, '.',true);
	$nombre="ERROR";

	if($ip1!="172"){
		$nombre="P2P";
	}

	// if FO -> buscar por mascara
    if($nombre != 'P2P'){
		$ipbus = $_POST['nombrePanel'].'';

		define('FIRST_OCTET', 0);
		define('SECOND_OCTET', 1);
		define('THIRD_OCTET', 2);
		define('FOURTH_OCTET', 3);
		$fin = false;

        $sql = "SELECT nombre, ip, mask FROM `SS-DB`.panel;";
        $datosPanel = BDConexion::getInstancia()->getConexion()->query($sql);
        if ($datosPanel->num_rows > 0) {
            while($row = $datosPanel->fetch_assoc() AND !$fin) {
				$maskk = $row["mask"];
				if($maskk == null || $maskk == ''){
					$maskk = '24';
				}
				$iprango = $row["ip"];
				if(endswith($iprango, ".254")){
					$iprango = str_replace(".254", ".0", $iprango);
				}
                if( ip_pertenece($ipbus, $iprango, $maskk) ){
                    $nombre = $row["nombre"];
                    $fin = true;
                }
            }
		}
	}

// ------------------------------------------------------------------------- CARGAR EN BD RECLAMO		
	$tecnico = $_POST['tecnico'].'';
    $reclamo = $_POST['reclamo'].'';
	$numCliente = $_POST['numCliente'].'';
	$timezone  = -3; //(GMT -3:00) 
	$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
	
	$query = "INSERT INTO reclamo (idreclamo, tecnico, nodo, problema, numcliente, time, ip) 
				VALUES (NULL, ".$tecnico.", '".$nombre."', '".$reclamo."', ".$numCliente.", '".$tiempo."', '".$_POST['nombrePanel']."')";
	$res = BDConexion::getInstancia()->getConexion()->query($query);

	if(!$res){
		$error = true;
		$msj = "INSERT RECLAMO";
	}
	
// ------------------------------------------------------------------------- ENVIAR UDP	
// ----------------------------------------- GET idReclamo		
	$query = "SELECT idreclamo FROM reclamo r ORDER BY idreclamo DESC LIMIT 1;";
	$idReclamoRES = BDConexion::getInstancia()->getConexion()->query($query);
	while($row = $idReclamoRES->fetch_object()){
        $idreclamo= $row->idreclamo;
	}
	
	$query = "SELECT * FROM tecnico t WHERE idtecnico = ".$tecnico.";";
	$tecnicoRES = BDConexion::getInstancia()->getConexion()->query($query);
	while($row = $tecnicoRES->fetch_object()){
        $tecnico= $row->nombre;
    }

// ----------------------------------------- GUARDAR UDP	
	$server_ip   = '172.16.2.131';
	$server_port = 5529;
	$message     = $idreclamo.';'.$tecnico.';'.$nombre.';'.$reclamo.';'.$numCliente;
	$socket = socket_create(AF_INET, SOCK_DGRAM, SOL_UDP);
	
	if ($socket) {
		socket_sendto($socket, $message, strlen($message), 0, $server_ip, $server_port);
	} else {
		$error = true;
		$msj = $msj . "_SOCKET";
	}

// ------------------------------------------------------------------------- MODAL RESULTADO
	if (!$error) {
		echo 
		'<script>
		console.log("NO ERROR: '.$error.'_'.$msj.'");
		resultado();
			function resultado(){
				$("#codExito").text("200: Correcto");
				$("#mdExito").modal({});
			}
		</script>';
	} else {
		echo 
		'<script>
		console.log("ERROR: '.$error.'_'.$msj.'");
		resultado();
			function resultado(){
				$("#codError").text("7001: Error al aplicar la consulta");
				$("#mdError").modal({});
			}
		</script>';
	}	
?>