<?php
	/*
    $servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "root";
    $password = "s553355S@";
	*/
	$servername = "localhost";
    $database = "SS-DB"; 
    $username = "root";
    $password = "";
	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
//	$archivo = fopen("/var/www/html/paneles-freq.csv", "r");
	$archivo = fopen("paneles-freq.csv", "r");
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
    $nombre = "";
    $ip = "";
    $marca = "";
    $frecuencia = 0;
    $clientes = 0;	
	
	$count=0;
	$datos = fgets($archivo, 4096);
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO fecha (idFecha, fecha) VALUE (1, :fecha)");
	$my_Insert_Statement->bindParam(':fecha', $datos);
	try { 
		if ($my_Insert_Statement->execute()) {
			echo "Nuevo registro creado, Fecha: " . $datos;
			echo "<br>";
		}
	} catch (PDOException $error) {
		$my_Insert_Statement = $my_Db_Connection->prepare("UPDATE fecha SET fecha = :fecha WHERE idFecha = 1");
		$my_Insert_Statement->bindParam(':fecha', $datos);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Registro actualizado, Fecha: " . $datos;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al actualizar" . $error->getMessage();
			echo "<br>";
		}
	}
	$ipsActu=array();
	$datos = fgets($archivo, 4096);
	while(($datos = fgets($archivo, 4096)) == true){
		$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO panel (idpanel, nombre, ip, marca, frecuencia, clientes, tiempo) VALUE (NULL, :nombre, :ip, :marca, :frecuencia, :clientes, :tiempo)");
		$count++;
		
		$resto = strstr($datos, ';', true);
		$nombre = substr(strstr($resto, ',',true),1,-1);
		$resto = substr(strstr($resto . ' ', ','),1,-1);
		$ip = substr(strstr($resto, ',',true).' ',0,-1);
		$resto = substr(strstr($resto . ' ', ','),1,-1);
		$marca = strstr($resto, ',',true);
		$frecuencia = substr(strstr($resto . ' ', ','),1,-1);
		
		//$tiempo = date("Y-m-d H:i:s");
		$timezone  = -3; //(GMT -3:00) 
		$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
		
		if(strlen($frecuencia) == 0){
			$frecuencia=0;
		}
		$clientes = substr(strstr($datos, ';'),1,-1);
		
		$my_Insert_Statement->bindParam(':nombre', $nombre);
		$my_Insert_Statement->bindParam(':ip', $ip);
		$my_Insert_Statement->bindParam(':marca', $marca);
		$my_Insert_Statement->bindParam(':frecuencia', $frecuencia);
		$my_Insert_Statement->bindParam(':clientes', $clientes);
		$my_Insert_Statement->bindParam(':tiempo', $tiempo);
		
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado, IDPanel: " . $count . " - Nombre: " . $nombre;
				echo "<br>";
			}
		} catch (PDOException $error) {
			$my_Insert_Statement = $my_Db_Connection->prepare("UPDATE panel SET `nombre` = :nombre, `marca` = :marca, `frecuencia` = :frecuencia, `clientes` = :clientes, `tiempo`= :tiempo WHERE `ip` LIKE :ip");
			$my_Insert_Statement->bindParam(':nombre', $nombre);
			$my_Insert_Statement->bindParam(':ip', $ip);
			$my_Insert_Statement->bindParam(':marca', $marca);
			$my_Insert_Statement->bindParam(':frecuencia', $frecuencia);
			$my_Insert_Statement->bindParam(':clientes', $clientes);
			$my_Insert_Statement->bindParam(':tiempo', $tiempo);
			try { 
				if ($my_Insert_Statement->execute()) {
					echo "Registro actualizado, IDPanel: " . $count . " - Nombre: " . $nombre;
					echo "<br>";
					array_push($ipsActu,$ip."");
				}
			} catch (PDOException $error) {
				echo "Error al actualizar" . $error->getMessage();
				echo "<br>";
			}
		}
	}
	fclose($archivo);
	/*
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT ip FROM panel";
	$result = $conn->query($sql);
	
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$ipResult= $row["ip"];
			
			if( !(in_array($ipResult, $ipsActu)) ){
				$my_Insert_Statement = $my_Db_Connection->prepare("UPDATE panel SET `frecuencia` = :frecuencia, `clientes` = :clientes WHERE `ip` LIKE :ip");
				$my_Insert_Statement->bindParam(':ip', $ip);
				$my_Insert_Statement->bindParam(':frecuencia', '0');
				$my_Insert_Statement->bindParam(':clientes', '0');
				try { 
					if ($my_Insert_Statement->execute()) {
						echo "Registro eliminado, IP: " . $ip;
						echo "<br>";
					}
				} catch (PDOException $error) {
					echo "Error al eliminar" . $error->getMessage();
					echo "<br>";
				}
			}
		}
	}
	$conn->close();
	*/
?>