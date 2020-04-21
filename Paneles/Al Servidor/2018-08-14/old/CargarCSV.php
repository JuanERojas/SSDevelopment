<?php
    $servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "root";
    $password = "s553355S@";
	echo "-------";
	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
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
	
	$datos = fgets($archivo, 4096);
	while(($datos = fgets($archivo, 4096)) == true){
		$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO panel (idpanel, nombre, ip, marca, frecuencia, clientes) VALUE (NULL, :nombre, :ip, :marca, :frecuencia, :clientes)");
		$count++;
		
		$resto = strstr($datos, ';', true);
		$nombre = substr(strstr($resto, ',',true),1,-1);
		$resto = substr(strstr($resto . ' ', ','),1,-1);
		$ip = substr(strstr($resto, ',',true).' ',0,-1);
		$resto = substr(strstr($resto . ' ', ','),1,-1);
		$marca = strstr($resto, ',',true);
		$frecuencia = substr(strstr($resto . ' ', ','),1,-1);
		if(strlen($frecuencia) == 0){
			$frecuencia=0;
		}
		$clientes = substr(strstr($datos, ';'),1,-1);
		
		$my_Insert_Statement->bindParam(':nombre', $nombre);
		$my_Insert_Statement->bindParam(':ip', $ip);
		$my_Insert_Statement->bindParam(':marca', $marca);
		$my_Insert_Statement->bindParam(':frecuencia', $frecuencia);
		$my_Insert_Statement->bindParam(':clientes', $clientes);
		
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado, IDPanel: " . $count . " - Nombre: " . $nombre;
				echo "<br>";
			}
		} catch (PDOException $error) {
			$my_Insert_Statement = $my_Db_Connection->prepare("UPDATE panel SET `nombre` = :nombre, `marca` = :marca, `frecuencia` = :frecuencia, `clientes` = :clientes WHERE `ip` LIKE :ip");
			$my_Insert_Statement->bindParam(':nombre', $nombre);
			$my_Insert_Statement->bindParam(':ip', $ip);
			$my_Insert_Statement->bindParam(':marca', $marca);
			$my_Insert_Statement->bindParam(':frecuencia', $frecuencia);
			$my_Insert_Statement->bindParam(':clientes', $clientes);
			try { 
				if ($my_Insert_Statement->execute()) {
					echo "Registro actualizado, IDPanel: " . $count . " - Nombre: " . $nombre;
					echo "<br>";
				}
			} catch (PDOException $error) {
				echo "Error al actualizar" . $error->getMessage();
				echo "<br>";
			}
		}
	}
	fclose($archivo);
?>