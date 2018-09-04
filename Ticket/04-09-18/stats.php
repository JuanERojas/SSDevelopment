<?php
	
	$servername = "db.sslocal";
    $database = "SS-DBTK"; 
    $username = "userticket";
    $password = "ReadWriteTk@SS";
/*	
	$servername = "localhost";
    $database = "SS-DBTK"; 
    $username = "root";
    $password = "";
*/
	
	echo "<br>";
	echo "<br>";
	echo "ReclamosXTipo";
	echo "<br>";
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	$sql = "SELECT problema AS reclamo, COUNT(*) AS cant FROM reclamo r GROUP BY problema ORDER BY Cant DESC LIMIT 10;";
	$result1 = $conn->query($sql);
	if ($result1->num_rows > 0) {
		while($row = $result1->fetch_assoc()) {
			$reclamo= $row["reclamo"];
			$cantidad= $row["cant"];
			echo $reclamo."--------".$cantidad."<br>";
		}
	}
	echo "<br>";
	echo "<br>";
	echo "ReclamosXNodo";
	echo "<br>";
	
	$sql = "SELECT nodo AS panel, COUNT(*) AS cant FROM reclamo r GROUP BY nodo ORDER BY Cant DESC LIMIT 10;";
	$result2 = $conn->query($sql);
	if ($result2->num_rows > 0) {
		while($row = $result2->fetch_assoc()) {
			$panel= $row["panel"];
			$cantidad2= $row["cant"];
			echo $panel."--------".$cantidad2."<br>";
		}
	}
	echo "<br>";
	echo "<br>";
	echo "ReclamosXCliente";
	echo "<br>";
	
	$sql = "SELECT numcliente AS cliente, COUNT(*) AS cant FROM reclamo r GROUP BY numcliente ORDER BY Cant DESC LIMIT 10;";
	$result3 = $conn->query($sql);
	if ($result3->num_rows > 0) {
		while($row = $result3->fetch_assoc()) {
			$cliente= $row["cliente"];
			$cantidad3= $row["cant"];
			echo $cliente."--------".$cantidad3."<br>";
		}
	}
	echo "<br>";
	echo "<br>";
	echo "ReclamosXTecnico";
	echo "<br>";
	
	$sql = "SELECT tecnico AS tecnico, COUNT(*) AS cant FROM reclamo r GROUP BY tecnico ORDER BY Cant DESC LIMIT 10;";
	$result4 = $conn->query($sql);
	if ($result4->num_rows > 0) {
		while($row = $result4->fetch_assoc()) {
			$tecnico= $row["tecnico"];
			$cantidad4= $row["cant"];
			echo $tecnico."--------".$cantidad4."<br>";
		}
	}
	echo "<br>";
	echo "<br>";
	echo "ReclamosUltimaHora";
	echo "<br>";
	
	$sql = "SELECT idreclamo, tecnico, nodo, problema, numcliente, time FROM reclamo r;";
	$result5 = $conn->query($sql);
	if ($result5->num_rows > 0) {
		while($row = $result5->fetch_assoc()) {
			$idreclamo= $row["idreclamo"];
			$tecnico= $row["tecnico"];
			$nodo= $row["nodo"];
			$problema= $row["problema"];
			$numcliente= $row["numcliente"];
			$timest= $row["time"];
			
			$time = strtotime($timest);
			$timezone  = -3; //(GMT -3:00) 
			$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
			$curtime = strtotime($tiempo);
			
			/*
			$timezone  = -3; //(GMT -3:00) 
			$tiempo = gmdate("Y/m/j H:i:s", time() + 3600*($timezone));
			echo $timest."-:::-".$time."-:::-".$curtime."-::::-".$tiempo."-:::-".strtotime($tiempo)."<br>";
			*/
			
			if(($curtime-$time) < 3600) {     //3600 segundos --> 1 hora
				echo $idreclamo."---".$tecnico."---".$nodo."---".$problema."---".$numcliente."<br>";
			}else{
				//echo "ERROR <br>";
			}
			//echo $idreclamo."---".$tecnico."---".$nodo."---".$problema."---".$numcliente."<br>";
		}
	}
	
	$conn->close();
?>