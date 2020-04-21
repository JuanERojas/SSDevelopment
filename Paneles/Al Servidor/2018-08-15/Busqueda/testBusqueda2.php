<head>
	<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>-->
</head>
<body>
	<input type="text" id="busqueda" />
	<div id="resultado"></div>
	<!--<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>-->

	<script>
		$(document).ready(function(){
			var consulta;
			//hacemos focus al campo de búsqueda
			$("#busqueda").focus();
																										 
			//comprobamos si se pulsa una tecla
			$("#busqueda").keyup(function(e){
										  
				  //obtenemos el texto introducido en el campo de búsqueda
				  consulta = $("#busqueda").val();
				  //hace la búsqueda                                                                                  
				  $.ajax({
						type: "POST",
						url: "testBusqueda2.php",
						data: "b="+consulta,
						dataType: "html",
						beforeSend: function(){
						//imagen de carga
						$("#resultado").html("<p align='center'><img src='ajax-loader.gif' /></p>");
						},
						error: function(){
						alert("error petición ajax");
						},
						success: function(data){                                                    
						$("#resultado").empty();
						$("#resultado").append(data);                                                             
						}
				  });                                                                         
			});                                                     
		});
	</script>
</body
<?php
  
      $buscar = $_POST['b'];
        
      if(!empty($buscar)) {
            buscar($buscar);
      }
        
      function buscar($b) {
			$servername = "db.sslocal";
			$database = "SS-DB"; 	
			$username = "root";
			$password = "s553355S@";
            $con = mysql_connect($servername,$username, $password);
            mysql_select_db($database, $con);
        
            $sql = mysql_query("SELECT nombre, ip, marca, frecuencia, clientes FROM panel WHERE nombre LIKE '%".$b."%' LIMIT 10" ,$con);
			//$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel ORDER BY ".$order;
			//$result = $conn->query($sql);
			//$conn->close();
              
            $contar = @mysql_num_rows($sql);
              
            if($contar == 0){
                  echo "No se han encontrado resultados para '<b>".$b."</b>'.";
            }else{
              while($row=mysql_fetch_array($sql)){
                $nombre = $row['nombre'];
                $ip = $row['ip'];
                $marca = $row['marca'];
                $frecuencia = $row['frecuencia'];
                $clientes = $row['clientes'];
                echo $nombre." - "."<a>".$ip."</a>"."<br />";
            }
        }
  }
        
?>