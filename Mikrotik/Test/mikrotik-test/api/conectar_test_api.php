<?php require_once('api_mt_include2.php'); ?>
<?php
//   Este archivo es para testear si conecta el API con tu Mikrotik!!! Solo para prueba!!.
//   Si no te funciona te recomiendo leer "Api Mikrotik - Segunda parte"
//   http://www.tech-nico.com/blog/api-mikrotik-segunda-parte-usando-el-api-con-php/

$ipRouteros="192.168.33.200";  // tu RouterOS.
$Username="usuario";
$Pass="contraseña";
$api_puerto=8727;

$API = new routeros_api();
$API->debug = false;
if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
   $API->write("/system/ident/getall",true);
   $READ = $API->read(false);
   $ARRAY = $API->parse_response($READ);
   $name = $ARRAY[0]["name"];
    if(count($ARRAY)>0){   // si esta conectado
           $API->write("/system/licen/getall",true);
           $READ = $API->read(false);
           $ARRAY = $API->parse_response($READ);		
           $nlevel = $ARRAY[0]["nlevel"];
           $API->write("/system/reso/getall",true);
           $READ = $API->read(false);
           $ARRAY = $API->parse_response($READ);		
           $cpu = $ARRAY[0]["cpu"];
           $cpu_frequency = $ARRAY[0]["cpu-frequency"];  
           $arquitectura = $ARRAY[0]["board-name"];  
           $API->write("/system/pack/getall",true);
           $READ = $API->read(false);
           $ARRAY = $API->parse_response($READ);		
           $version = $ARRAY[0]["version"];	   
           
           echo '<img src="icon_led_green.png" />&nbsp;';	    
           echo "<strong>".$name."(" .$arquitectura. ")</strong>&nbsp;&nbsp;";
           echo "v:" . $version. "&nbsp;&nbsp;";
           echo "level:" . $nlevel . "&nbsp;&nbsp;";
           echo $cpu."(".$cpu_frequency." Mhz.)";
    }else{  //el servidor API esta of line
           echo '<img src="icon_led_grey.png" />&nbsp;'.$ARRAY['!trap'][0]['message'];	 
    }    

}else{
    echo "<font color='#ff0000'>La conexion ha fallado. Verifique si el Api esta activo.</font>";
}
$API->disconnect();
?>