<?php
ini_set ('error_reporting', E_ALL);
  
      $buscar = $_POST['b'];
        
      if(!empty($buscar)) {
            buscar($buscar);
      }
        
      function buscar($b) {
			$servername = "localhost";
			$database = "SS-DB"; 	
			$username = "root";
			$password = "";
			
			$conn = new mysqli($servername, $username, $password, $database);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}
/*			
            $con = mysql_connect($servername,$username, $password);
            mysql_select_db($database, $con);
        
            $sql = mysql_query("SELECT nombre, ip, marca, frecuencia, clientes FROM panel WHERE nombre LIKE '%".$b."%' LIMIT 10" ,$con);
*/			
			$sql = "SELECT nombre, ip, marca, frecuencia, clientes FROM panel WHERE nombre LIKE '%".$b."%' LIMIT 100";
			$result = $conn->query($sql);
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$nombre = $row['nombre'];
					$ip = $row['ip'];
					$marca= $row["marca"];
					$frecuencia= $row["frecuencia"];
					$clientes= $row["clientes"];
				
					echo $nombre." - "."<a>".$ip."</a>"." - "."<a>".$marca."</a>"." - "."<a>".$frecuencia."</a>"." - "."<a>".$clientes."</a>"."<br />";
				}
			}
            
/*			
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
*/			
        }
//  }
        
?>