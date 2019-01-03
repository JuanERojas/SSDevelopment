<?php
/*
	$servername = "localhost";
    $database = "SS-DBFO"; 
    $username = "root";
    $password = "";
*/
	$servername = "172.16.2.173";
	// $servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
	
    $codPon = $_POST['codPon'].'';
    $iniNap = $_POST['iniNap'].'';
    $finNap = $_POST['finNap'].'';
	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
	$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO pon (idpon, codigo) VALUE (NULL, :codPon);");
	$my_Insert_Statement->bindParam(':codPon', $codPon);
	
	try { 
		if ($my_Insert_Statement->execute()) {
			echo "Nuevo registro creado";
			echo "<br>";
		}
	} catch (PDOException $error) {
		echo "Error al insertar" . $error->getMessage();
		echo "<br>";
	}
	
	
	
	$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO nap (idnap, numero, codpon) VALUE (NULL, :numero, '".$codPon."');");
	$my_Insert_Statement->bindParam(':numero', $numero);

	for ($numero = $iniNap; $numero <= $finNap; $numero++) {
		//echo $codPon."-".$numero."<br>";
		$my_Insert_Statement->bindParam(':numero', $numero);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado";
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}
	
	
?>