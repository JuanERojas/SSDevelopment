<?php require_once('api_mt_include2.php'); ?>
<?php
$ipRouteros="10.11.11.1";  	// tu RouterOS.
$Username="ro.api";	// Usuario
$Pass="Roapi2018"; 			// Pass
$api_puerto=8728; 				// Port

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