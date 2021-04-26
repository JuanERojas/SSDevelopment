<?php

require_once dirname(__FILE__) . '/../conf/Constants.php';
require_once dirname(__FILE__) . '/../conf/BDConexion.php';

?>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>

<body>
<div class="modal fade" id="mdExito" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header modal-header-success justify-content-center">
                    <h5 class="modal-title" id="myModalLabel">Exito al operar el registro</h5>
                </div>
                <div class="modal-body">
                        <p class="font-weight-normal text-center">La operacion se ha completado correctamente</p>
                        <p class="font-weight-light text-center"><i id="codExito"></i></p>
                </div>
                <div class="modal-footer justify-content-center">
                    <input type='submit' class='btn btn-info' id='btnAceptarModalResultadoExito'
                        value='Aceptar' data-dismiss="modal">
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="mdError" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header modal-header-danger justify-content-center">
                    <h5 class="modal-title" id="myModalLabel">Error al operar el registro</h5>
                </div>
                <div class="modal-body">
                        <p class="font-weight-normal text-center">No se pudo realizar la operacion.</p>
                        <p class="font-weight-light text-center" id="codError"></p>
                </div>
                <div class="modal-footer justify-content-center">
                    <input type='submit' class='btn btn-info' id='btnAceptarModalResultadoError'
                        value='Aceptar' data-dismiss="modal">
                </div>
            </div>
        </div>
    </div>

</body>

</html>