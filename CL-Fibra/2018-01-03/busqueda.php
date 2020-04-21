<?php
ini_set ('error_reporting', E_ALL);
  
/*    $buscarCl = $_POST['bcl'];
	$buscarPon = $_POST['bpon'];
	$buscarNap = $_POST['bnap'];
*/        
    if(!empty($_POST['bcl'])) {
        buscarCl($_POST['bcl']);
    }
	if(!empty($_POST['bpon'])) {
        buscarPon($_POST['bpon']);
    }
	if(!empty($_POST['bnap'])) {
        buscarNap($_POST['bnap']);
    }
        
	function buscarCl($b) {
			$servername = "172.16.2.173";
			// $servername = "db.sslocal";
			$database = "SS-DBFO"; 
			$username = "wrss";
			$password = "ReadWrite@SS";
			
			$conn = new mysqli($servername, $username, $password, $database);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}		
			$sql = "SELECT p.codigo AS pon, n.numero AS nap, c.codcliente AS cliente, c.`time` AS age FROM cliente AS c INNER JOIN nap AS n ON c.codnap = n.idnap INNER JOIN pon AS p ON n.codpon = p.codigo WHERE c.codcliente LIKE '%".$b."%' ORDER BY p.codigo, n.numero + 0  LIMIT 15";
			$result = $conn->query($sql);
			
			echo "<table class='egt' align='center'  border='1' bgcolor='FFFFFF'>";
			echo "<tr bgcolor='CFCFCF'><th width='70'>PON</th><th width='70'>NAP</th><th width='90'>CLIENTE</th><th width='250'>AGE</th></tr>";
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$pon = $row['pon'];
					$nap = $row['nap'];
					$cliente= $row["cliente"];
					$age= $row["age"];
				
					//echo "<tr>".$pon." - "."<b>".$nap."</b>"." - "."<i>".$cliente."</i>"." - "."<i>".$age."</i></tr>";
					//echo "<tr><td><b>".$pon."</b></td><td><b>".$nap."</b></td><td><i>".$cliente."</i></td><td><i>".$age."</i></td></tr>";
					
					$ponHTML = "<td align='left'><b><a href='verRegistroN-P.php?codPon=".$pon."' target='_blank'>".$pon."</a></b></td>";
					$napHTML = "<td align='center'><b><a href='verRegistroN-P.php?codPon=".$pon."&codNap=".$nap."' target='_blank'>".$nap."</a></b></td>";
					$clienteHTML = "<td align='right'><i><b>".$cliente."</b></i></td>";
					$ageHTML = "<td align='right'><i>".$age."</i></td>";
					
					echo "<tr>".$ponHTML.$napHTML.$clienteHTML.$ageHTML."</tr>";
				}
			}
			echo "</table>";
            
    }
	function buscarPon($b) {
			$servername = "172.16.2.173";
			// $servername = "db.sslocal";
			$database = "SS-DBFO"; 
			$username = "wrss";
			$password = "ReadWrite@SS";
			
			$conn = new mysqli($servername, $username, $password, $database);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}		
			$sql = "SELECT p.codigo AS pon, n.numero AS nap, c.codcliente AS cliente, c.`time` AS age FROM cliente AS c INNER JOIN nap AS n ON c.codnap = n.idnap INNER JOIN pon AS p ON n.codpon = p.codigo WHERE p.codigo LIKE '%".$b."%' ORDER BY p.codigo, n.numero + 0  LIMIT 15";
			$result = $conn->query($sql);
			
			echo "<table class='egt' align='center'  border='1' bgcolor='FFFFFF'>";
			echo "<tr bgcolor='CFCFCF'><th width='70'>PON</th><th width='70'>NAP</th><th width='90'>CLIENTE</th><th width='250'>AGE</th></tr>";
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$pon = $row['pon'];
					$nap = $row['nap'];
					$cliente= $row["cliente"];
					$age= $row["age"];
				
					//echo "<tr>".$pon." - "."<b>".$nap."</b>"." - "."<i>".$cliente."</i>"." - "."<i>".$age."</i></tr>";
					//echo "<tr><td><b>".$pon."</b></td><td><b>".$nap."</b></td><td><i>".$cliente."</i></td><td><i>".$age."</i></td></tr>";
					
					$ponHTML = "<td align='left'><b><a href='verRegistroN-P.php?codPon=".$pon."' target='_blank'>".$pon."</a></b></td>";
					$napHTML = "<td align='center'><b><a href='verRegistroN-P.php?codPon=".$pon."&codNap=".$nap."' target='_blank'>".$nap."</a></b></td>";
					$clienteHTML = "<td align='right'><i><b>".$cliente."</b></i></td>";
					$ageHTML = "<td align='right'><i>".$age."</i></td>";
					
					echo "<tr>".$ponHTML.$napHTML.$clienteHTML.$ageHTML."</tr>";
				}
			}
			echo "</table>";
            
    }
	
		function buscarNap($b) {
			$servername = "172.16.2.173";
			// $servername = "db.sslocal";
			$database = "SS-DBFO"; 
			$username = "wrss";
			$password = "ReadWrite@SS";
			
			$conn = new mysqli($servername, $username, $password, $database);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}		
			$sql = "SELECT p.codigo AS pon, n.numero AS nap, c.codcliente AS cliente, c.`time` AS age FROM cliente AS c INNER JOIN nap AS n ON c.codnap = n.idnap INNER JOIN pon AS p ON n.codpon = p.codigo WHERE n.numero LIKE '%".$b."%' ORDER BY p.codigo, n.numero + 0  LIMIT 15";
			$result = $conn->query($sql);
			
			echo "<table class='egt' align='center'  border='1' bgcolor='FFFFFF'>";
			echo "<tr bgcolor='CFCFCF'><th width='70'>PON</th><th width='70'>NAP</th><th width='90'>CLIENTE</th><th width='250'>AGE</th></tr>";
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$pon = $row['pon'];
					$nap = $row['nap'];
					$cliente= $row["cliente"];
					$age= $row["age"];
				
					//echo "<tr>".$pon." - "."<b>".$nap."</b>"." - "."<i>".$cliente."</i>"." - "."<i>".$age."</i></tr>";
					//echo "<tr><td><b>".$pon."</b></td><td><b>".$nap."</b></td><td><i>".$cliente."</i></td><td><i>".$age."</i></td></tr>";
					
					$ponHTML = "<td align='left'><b><a href='verRegistroN-P.php?codPon=".$pon."' target='_blank'>".$pon."</a></b></td>";
					$napHTML = "<td align='center'><b><a href='verRegistroN-P.php?codPon=".$pon."&codNap=".$nap."' target='_blank'>".$nap."</a></b></td>";
					$clienteHTML = "<td align='right'><i><b>".$cliente."</b></i></td>";
					$ageHTML = "<td align='right'><i>".$age."</i></td>";
					
					echo "<tr>".$ponHTML.$napHTML.$clienteHTML.$ageHTML."</tr>";
				}
			}
			echo "</table>";
            
    }
        
?>