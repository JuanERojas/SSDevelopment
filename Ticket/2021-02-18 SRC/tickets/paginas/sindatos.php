<?php

//require_once 'scripts.php';


$query = "SELECT t.nombre AS tecnico, nodo, problema, numcliente, r.ip, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:1800' HOUR_SECOND) ORDER BY time DESC LIMIT 15";
$uReclamos = BDConexion::getInstancia()->getConexion()->query($query);

?>

<head>
    <meta charset="UTF-8">
    <meta name="theme-color" content="#1E88E5" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="/tickets/img/icon.png"/>
    <title>Ticket</title>

</head>
<body id="body">
    
<?php include_once 'navbar.php'?>

    <div id="fondo3" class="container-fluid" style="top: -20px">

        <div class="row d-flex justify-content-center">
            <div id="fondo1" class="col-md-6 text-center">

                    <div class="form-row align-items-center mx-auto border border-dark rounded">
                        <div class="col-lg-12 text-center p-2">
                            <img class="mb-4 img-login" src="/tickets/img/unnamed.png" alt="" width="150" height="150">
                            <h1 class="h3 mb-3 font-weight-normal text-blue">Tickets</h1>
                        </div>
                    </div>
                    <br>
            </div>
        </div>
        <div class="row d-flex justify-content-center">
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
        </div>
    </div>
</body>
