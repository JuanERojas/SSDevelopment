<?php

require_once 'paginas/scripts.php';
require_once 'conf/Constants.php';
require_once 'conf/BDConexion.php';
require_once 'paginas/funciones/functions.php';


if( isset( $_GET['cl']) && isset( $_GET['ip']) ){
    $numcliente = $_GET['cl'];
    $ipcliente = $_GET['ip'];

    // RECLAMOS LISTA ------------------------------------------------------------------
    $recl="";
    $data="[]";
	$json = '{}';
	$json = json_decode($data,true);
	$reclamos=array();
	if ($archivo = fopen('reclamos.sss', 'r')) {
		while (!feof($archivo)) {
			$linea = fgets($archivo);
			$partes = explode("*", $linea);
			$prob=$partes[0];
			$nmbProb=strstr($partes[1], ';',true);
			$conf=substr(strstr($partes[1], ';'), 1, strlen(strstr($partes[1], ';').' ')-1);
			$configs = explode(";", $conf);
			$json['reclamo'] = $prob;
			$json['nombre'] = $nmbProb;
			$json['config'] = $configs;
			array_push($reclamos,$json);
		}	
	}
    fclose($archivo);
    

    // TECNICOS SELECT -----------------------------------------------------------------
    $query = "SELECT idtecnico, nombre FROM tecnico";
    $tecnicos = BDConexion::getInstancia()->getConexion()->query($query);


    // ULTIMO TECNICO ------------------------------------------------------------------
    $query = "SELECT tecnico FROM `SS-DBTK`.reclamo r ORDER BY idreclamo DESC LIMIT 1;";
    $uTecnico = BDConexion::getInstancia()->getConexion()->query($query);
    while($row = $uTecnico->fetch_object()){
        $ultTecnico= $row->tecnico;
    }

    // ULTIMOS RECLAMOS ------------------------------------------------------------------
    $query = "SELECT t.nombre AS tecnico, nodo, problema, numcliente, r.ip, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:1800' HOUR_SECOND) ORDER BY time DESC LIMIT 15";
    $uReclamos = BDConexion::getInstancia()->getConexion()->query($query);
    

    // LINKS IPS CLIENTE -----------------------------------------------------------------
    $ip_panel1='';
    $nombre_panel='';
    $marca_panel='';
            
    $ip_antena = $ipcliente;
    $ipbus = $ipcliente;

    define('FIRST_OCTET', 0);
    define('SECOND_OCTET', 1);
    define('THIRD_OCTET', 2);
    define('FOURTH_OCTET', 3);
    $fin = false;

    $query = "SELECT nombre, marca, ip, mask FROM `SS-DB`.panel;";
    $comLink = BDConexion::getInstancia()->getConexion()->query($query);
    while($row = $comLink->fetch_assoc() AND !$fin) {
        
        $maskk = $row["mask"];
        if($maskk == null || $maskk == ''){
            $maskk = '24';
        }
        $iprango = $row["ip"];
        if(endswith($iprango, ".254")){
            $iprango = str_replace(".254", ".0", $iprango);
        }
        if( ip_pertenece($ipbus, $iprango, $maskk) ){
            $nombre_panel = $row["nombre"];
            $ip_panel1 = $row["ip"];
            $marca_panel = $row["marca"];
            $fin = true;
        }
    } 
    if ($marca_panel == 'Cambium'){
        $ip_antena = '10' . substr($ipcliente, 3);
    }
//}
?>                        

<head>
    <meta charset="UTF-8">
    <meta name="theme-color" content="#1E88E5" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="img/icon.png"/>
    <title>Ticket</title>

</head>
<body id="body">
    
<?php include_once 'paginas/navbar.php'?>

    <div id="fondo3" class="container-fluid" style="top: -20px">

        <div class="row d-flex justify-content-center">
            <!-- INICIO PARTE DATOS DEL RECLAMO -->
            <div id="fondo1" class="col-md-6 text-center">
            <!-- DATOS PARA ENVIAR AL INSERTAR -->
            <input type = "Text" name = "codCliente" id="codCliente" width="100" value="<?php echo $numcliente; ?>" style="display:none">
            <input type = "Text" name = "nombrePanel" id="nombrePanel" width="100" value="<?php echo $ipcliente; ?>" style="display:none">

                <div class="form-row align-items-center mx-auto border border-dark rounded">
                    <div class="form-check col-md-6" >
                        <h5>Reclamo: </h5>
                        <div class="text-left" id="checkBoxes" style=" margin-left: 30px;">
<?php	
        $cont=1;	
        foreach($reclamos as $r) {
?>
                            <input type="checkbox" class="form-check-input" id="reclamo-<?php echo $cont;?>" value="<?php echo $r['reclamo'];?>" onclick="ValidarCheckBox(this);"/>
                            <label class="form-check-label" for="reclamo-<?php echo $cont;?>"><?php echo $r['nombre'];?></label>
                            <br>
					
<?php
			$cont++;
		}
        ?>
                        </div>
                    </div>


                    <div class="form-check col-md-6">
                        <h5>Tecnico: </h5> 
                        <select id="tecnico" width="150" class="custom-select my-1 mr-sm-2">
<?php           
                    while($row = $tecnicos->fetch_assoc()) {
                        $idtecnico= $row['idtecnico'];
                        $nombre= $row['nombre'];
                        if(($ultTecnico != $idtecnico )){
                            echo    '<option value="'.$idtecnico .'"> 
                                        '.$nombre.'
                                    </option>';
                        }else{
                            echo    '<option selected="true" value="'.$idtecnico .'" > 
                                        '.$nombre.'
                                    </option>';
                        }
?>
                            
<?php
                    }
?>
                        </select>
                        <hr>
                        <div style="text-align: center;">
                            <button type="button" class="btn btn-success btn-lg" id="insertarReclamo" > 
                                <i class="fas fa-check"></i> Agregar 
                            </button>
                        </div>
                        <br>
                    </div>
                </div>
                <br>
            </div>
            
            <!-- FIN PARTE DATOS DEL RECLAMO -->

            <!-- PARTE INFORMACION DEL CLIENTE -->
            <div id="fondo1" class="col-md-6 text-center">
                <div class="form-row align-items-center mx-auto border border-dark rounded">
                    <div class="col-lg-12 text-center p-2">
                        
                        <h1 class="h5 mb-3 font-weight-normal text-blue"><i><b>Cliente: <?php echo $numcliente; ?> </b></i></h1>
                        <h1 class="h5 mb-3 font-weight-normal text-blue"><i><b>IP:</b> <?php echo $ipcliente; ?> </i></h1>
                        <hr>
                        <div class="row d-flex justify-content-center">
                            <div class="card border-info mb-3 col-md-5" >
                                <div class="card-header">Router</div>
                                <div class="card-body text-info">
                                    <h6 class="card-title">
                                        <a href="http://<?php echo $ipcliente; ?>" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Ir al router"><?php echo $ipcliente; ?></a>
                                    </h6>
                                </div>
                            </div>
                            <div class="col-md-1"> </div>
                            <div class="card border-info mb-3 col-md-5" >
                                <div class="card-header">Antena</div>
                                <div class="card-body text-info">
                                    <h6 class="card-title">
                                        <a href="http://<?php echo $ip_antena; ?>:6969" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Ir a la antena"><?php echo $ip_antena; ?></a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="card border-info mb-3 col-md-5" >
                                <div class="card-header">Nombre Panel</div>
                                <div class="card-body text-info">
                                    <h6 class="card-title">
                                        <!-- <a href="/tickets/paginas/estadisticas/exfecha.php?nodo=<?php //echo $nombre_panel; ?>" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Estadísticas del panel"> -->
                                            <?php echo $nombre_panel; ?>
                                        <!-- </a> -->
                                    </h6>
                                </div>
                            </div>
                            <div class="col-md-1"> </div>
                            <div class="card border-info mb-3 col-md-5" >
                                <div class="card-header">Panel IP</div>
                                <div class="card-body text-info">
                                    <h6 class="card-title">
                                        <a href="http://<?php echo $ip_panel1; ?>:6969" target="_blank" data-toggle="tooltip" data-placement="bottom" title="Ir al panel"><?php echo $ip_panel1; ?></a>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <!-- FIN PARTE INFORMACION DEL CLIENTE -->

            <!-- TABLA ULTIMOS RECLAMOS -->
            <div id="fondo1" class="col-md-12 text-center">
                <div class="form-row align-items-center mx-auto border border-dark rounded">
                    <div class="col-lg-12 text-center p-2">
                        <table class="table table-sm table-dark rounded">
                            <thead>
                                <tr class="bg-success"> 
                                    <th scope="col">Tecnico</th>
                                    <th scope="col">Panel</th>
                                    <th scope="col">Reclamo</th>
                                    <th scope="col">Cliente</th>
                                    <th scope="col">Cliente IP</th>
                                    <th scope="col">Hora</th>
                                </tr>
                            </thead>
                            <tbody>
<?php           
                    while($row = $uReclamos->fetch_assoc()) {
                        
                        echo    '<tr>';
                        echo        '<td>';
                        echo            $row["tecnico"];
                        echo        '</td>';
                        // echo        '<td> <a href="/tickets/paginas/estadisticas/exfecha.php?nodo='.$row["nodo"].'" target="_blank"  data-toggle="tooltip" data-placement="bottom" title="Estadísticas del panel">';
                        echo        '<td>';
                        echo            $row["nodo"];
                        echo        '</a> </td>';
                        echo        '<td>';
                        echo            $row["problema"];
                        echo        '</td>';
                        echo        '<td>';
                        echo            $row["numcliente"];
                        echo        '</td>';
                        echo        '<td>';
                        echo            $row["ip"];
                        echo        '</td>';
                        echo        '<td>';
                        echo            $row["time"];
                        echo        '</td>';
                        echo    '</tr>';
                    }
?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- FIN TABLA ULTIMOS RECLAMOS -->
        </div>
    </div>
    <div id="contenido"></div>
    
    <?php require_once 'paginas/modalResultado.php'?>
    
    <script>
        function ValidarCheckBox(obj){
                var select = obj.value;
        <?php	foreach($reclamos as $r) {	?>
                    if(select == "<?php echo $r['reclamo'];?>"){	
        <?php 			foreach($r['config'] as $c) {	
                            $c = trim(preg_replace('/\s+/', ' ', $c));
            ?>
                            document.getElementById("reclamo-<?php echo $c;?>").checked = false;
        <?php			} ?>
                    }
        <?php	} ?>
            }
    </script>
    <script type="text/javascript" charset="utf8" src="/tickets/JQuery/index.js"></script>
</body>

<?php
}else{
    require_once 'paginas/sindatos.php';
}
?>
