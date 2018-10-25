<?php require_once('api_mt_include2.php'); ?>
<?php
$ipRouteros="192.168.33.200";  // tu RouterOS.
$Username="usuario";
$Pass="contraseña";
$api_puerto=8727;

		echo '<div class="tabla">';
			echo '<div class="div_titulo_row">';
				echo '<div class="div_titulo" style="width:4%;">&nbsp;#</div>';	
				echo '<div class="div_titulo" style="width:20%;">&nbsp;Mac-Address</div>';	
				echo '<div class="div_titulo" style="width:22%;">&nbsp;Address</div>';	
				echo '<div class="div_titulo" style="width:22%;">&nbsp;To Address</div>';	
				echo '<div class="div_titulo" style="width:10%;">&nbsp;Server</div>';
				echo '<div class="div_titulo" style="width:19%;">&nbsp;Type</div>';	
			echo '</div>';	

    $API = new routeros_api();		
    $API->debug = false;
    if ($API->connect($ipRouteros , $Username , $Pass, $api_puerto)) {
       $API->write("/ip/hotspot/ip-binding/getall",true);   
       $READ = $API->read(false);
       $ARRAY = $API->parse_response($READ);
        if(count($ARRAY)>0){   // si hay mas de 1 binding.
				for($x=0;$x<count($ARRAY);$x++){			
						echo '<div class="div_comment">';
							echo '&nbsp;&nbsp; ;;;&nbsp;'.$ARRAY[$x]["comment"];
						echo '</div>';
						if ($ARRAY[$x]["disabled"]=="false"){  $clase="class='div_row_child'"; }else{ $clase="class='div_row_child div_row_disabled'"; }
						echo '<div class="div_row_repeat" id="'.$ARRAY[$x][".id"].'">';
							echo '<div class="div_row_child div_row_child_img" style="width:5%;">&nbsp;</div>';	
							echo '<div '. $clase .' style="width:20%;">&nbsp;'.$ARRAY[$x]["mac-address"].'</div>';	
							echo '<div '. $clase .' style="width:22%;">&nbsp;'.$ARRAY[$x]["address"].'</div>';	
							echo '<div '. $clase .' style="width:22%;">&nbsp;'.$ARRAY[$x]["address"].'</div>';	
							echo '<div '. $clase .' style="width:10%;">&nbsp;'.$ARRAY[$x]["server"].'</div>';
							echo '<div '. $clase .' style="width:18%;">&nbsp;'.$ARRAY[$x]["type"].'</div>';	    	    
						echo '</div>';
				}
        }else{ // si no hay ningun binding
            echo "No hay ningun IP-Bindings. //<br/>";
        } 
       $API->disconnect();
    }
	echo '</div>';
?>