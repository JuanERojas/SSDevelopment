<?php
ini_set ('error_reporting', E_ALL);
  
      $buscar = $_POST['b'];
        
      if(!empty($buscar)) {
            buscar($buscar);
      }
        
      function buscar($b) {
			$servername = "db.sslocal";
			$database = "SS-DBFO"; 
			$username = "wrss";
			$password = "ReadWrite@SS";
			
			$conn = new mysqli($servername, $username, $password, $database);
			if ($conn->connect_error) {
				die("Connection failed: " . $conn->connect_error);
			}		
			$sql = "SELECT p.codigo AS pon, n.numero AS nap, c.codcliente AS cliente, c.`time` AS age FROM cliente AS c INNER JOIN nap AS n ON c.codnap = n.idnap INNER JOIN pon AS p ON n.codpon = p.codigo WHERE c.codcliente LIKE '%".$b."%' ORDER BY p.codigo, n.numero + 0  LIMIT 10";
			$result = $conn->query($sql);
			
			if ($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$pon = $row['pon'];
					$nap = $row['nap'];
					$cliente= $row["cliente"];
					$age= $row["age"];
				
					echo $pon." - "."<a>".$nap."</a>"." - "."<a>".$cliente."</a>"." - "."<a>".$age."</a><br>";
				}
			}
            
        }
        
?>