<?php

	$servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
    $codPon = $_POST['codPon'].'';
    $iniNap = $_POST['iniNap'].'';
    $finNap = $_POST['finNap'].'';
/*	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT idpon, codigo FROM pon";
	$resultPon = $conn->query($sql);
	
	$conn->close();
	
	$existe=false;
	if ($resultPon->num_rows > 0) {
		while($row = $resultPon->fetch_assoc()) {
			$idPon= $row["idpon"];
			$codigoPon= $row["codigo"];
			
			if($codigoPon == $codPon){
				$true;
			}
		}
	}
	
*/		
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
	
/*	if($existe){
		$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO cliente (idcliente, codcliente, codnap, time) VALUES (NULL, :codCliente, :codNap, :tiempo)");
	}else{
		$my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO pon (idpon, codigo) VALUE (NULL, :codPon);");
*/	}
	
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
		
	//for $iniNap a $finNap
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
?>