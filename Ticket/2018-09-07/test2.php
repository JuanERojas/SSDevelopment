<?php	
	
	$servername = "db.sslocal";
    $database = "SS-DB"; 
    $username = "ross";
    $password = "ReadOnly@SS";
/*	
	$servername = "localhost";
    $database = "SS-DB"; 
    $username = "root";
    $password = "";
*/	
	$conn = new mysqli($servername, $username, $password, $database);
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}	
	
    $nombrePanel = $_POST['nombrePanel'].'';
	$nombrePanel = "172.16.9.223";
	$ip1 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip2 = strstr($nombrePanel, '.',true);
	$nombrePanel = substr(strstr($nombrePanel, '.'),1,-1)." ";
	$ip3 = strstr($nombrePanel, '.',true);
	
	$ip = $ip1.".".$ip2.".".$ip3.".254";
	echo $ip."<br>";
	$nombre="ERROR";
	
	$sql = "SELECT nombre FROM panel WHERE ip LIKE '".$ip."';";
	$result = $conn->query($sql);
	$conn->close();
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			echo "----";
			$nombre= $row["nombre"];
		}
	}
	echo $nombre;
?>