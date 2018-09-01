<?php

	$servername = "db.sslocal";
    $database = "SS-DBFO"; 
    $username = "wrss";
    $password = "ReadWrite@SS";
	
    $sql = "mysql:host=$servername;dbname=$database;";
    $dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];
	
    try { 
      $my_Db_Connection = new PDO($sql, $username, $password, $dsn_Options);
      echo "Conexion realizada";
    } catch (PDOException $error) {
      echo 'Error al conectar: ' . $error->getMessage();
    }
	echo "<br>";
	
	
    $my_Insert_Statement = $my_Db_Connection->prepare("INSERT INTO nap (idnap, numero, codpon) VALUE (NULL, :codNap, :codPon)");
	
	

	$pon="P01";
	for ($n = 1; $n < 12; $n++) {
		//echo "P01"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P02";
	for ($n = 1; $n < 9; $n++) {
		//echo "P02"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P03";
	for ($n = 1; $n < 9; $n++) {
		//echo "P03"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P04";
	for ($n = 1; $n < 9; $n++) {
		//echo "P04"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P05";
	for ($n = 1; $n < 10; $n++) {
		//echo "P05"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P06";
	for ($n = 1; $n < 12; $n++) {
		//echo "P06"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P07";
	for ($n = 1; $n < 16; $n++) {
		//echo "P07"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P08";
	for ($n = 1; $n < 12; $n++) {
		//echo "P08"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P09";
	for ($n = 1; $n < 13; $n++) {
		//echo "P09"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P10";
	for ($n = 1; $n < 14; $n++) {
		//echo "P10"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P11";
	for ($n = 1; $n < 15; $n++) {
		//echo "P11"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P12";
	for ($n = 1; $n < 16; $n++) {
		//echo "P12"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P13";
	for ($n = 1; $n < 15; $n++) {
		//echo "P13"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P14";
	for ($n = 1; $n < 13; $n++) {
		//echo "P14"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P15";
	for ($n = 1; $n < 15; $n++) {
		//echo "P15"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="P16";
	for ($n = 1; $n < 10; $n++) {
		//echo "P16"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}
	
	
	
	

	$pon="C01";
	for ($n = 1; $n < 16; $n++) {
		//echo "C01"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C02";
	for ($n = 1; $n < 8; $n++) {
		//echo "C02"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C03";
	for ($n = 1; $n < 12; $n++) {
		//echo "C03"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C04";
	for ($n = 1; $n < 9; $n++) {
		//echo "C04"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C05";
	for ($n = 1; $n < 12; $n++) {
		//echo "C05"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C06";
	for ($n = 1; $n < 9; $n++) {
		//echo "C06"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C07";
	for ($n = 1; $n < 12; $n++) {
		//echo "C07"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}

	$pon="C08";
	for ($n = 1; $n < 8; $n++) {
		//echo "C08"." NAP".$n;
		//echo "<br>";
		$my_Insert_Statement->bindParam(':codNap', $n);
		$my_Insert_Statement->bindParam(':codPon', $pon);
		try { 
			if ($my_Insert_Statement->execute()) {
				echo "Nuevo registro creado - ".$pon." NAP".$n;
				echo "<br>";
			}
		} catch (PDOException $error) {
			echo "Error al insertar" . $error->getMessage();
			echo "<br>";
		}
	}
	
?>