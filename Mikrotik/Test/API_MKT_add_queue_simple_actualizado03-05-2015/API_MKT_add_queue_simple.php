<?php require_once('api_mt_include2.php'); ?>
<?php

/// AUTOR: NICOLAS DAITSCH ///
/// admin@tech-nico.com /////
///  API: agrega un queue simple y si este existe lo edita.

//////// configura tus datos
$ServerList ="192.168.100.1"; //ip_de_tu_API
$Username ="api"; //usuario_API
$Pass ="#pass"; //contraseña_API
$Port ="8727"; //puerto_API
/// VARIABLES DE FORMULARIO
$target= "192.168.0.5";  // IP Cliente
$name=    "nicolas222";
$maxlimit=    "5M/5M";
$comment= "Este es un ejemplo.";
if( $target !="" ){
    $API = new routeros_api();
    $API->debug = false;
    if ($API->connect($ServerList, $Username, $Pass, $Port)) {
       $API->write("/queue/simple/getall",false);
       $API->write('?name='.$name,true);
       $READ = $API->read(false);
       $ARRAY = $API->parse_response($READ); 
        if(count($ARRAY)>0){ // si el nombre de usuario "ya existe" lo edito
			$API->write("/queue/simple/set",false);  
			$API->write("=.id=".$ARRAY[0]['.id'],false);
            $API->write('=max-limit='.$maxlimit,true);   //   2M/2M   [TX/RX]			
			$READ = $API->read(false);
			$ARRAY = $API->parse_response($READ);
            echo "Error: El nombre no puede estar duplicado, el queue fue editado.";
            echo '<img src="../images/icon_error.png" />';
        }else{
            $API->write("/queue/simple/add",false);
            $API->write('=target='.$target,false);   // IP
            $API->write('=name='.$name,false);       // nombre
            $API->write('=max-limit='.$maxlimit,false);   //   2M/2M   [TX/RX]
            $API->write('=comment='.$comment,true);         // comentario
            $READ = $API->read(false);
            $ARRAY = $API->parse_response($READ);                       
            echo "El Usuario $name, ha sido creado con exito!.";
            echo '<img src="../images/okicon.png" />';
        }        
        $API->disconnect();
    }
}
?>