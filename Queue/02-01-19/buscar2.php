<?php
// Get all data 

$opc = 'name';
$bus = $_GET['bus'];
session_start();
$registros = $_SESSION['registros'];


?>
<div id="data">
<?php
	foreach($registros as $r) {
		if(strlen(strstr(strtolower($r['name']), strtolower($bus.''))) > 0){
			echo '<br>';
			echo $r['core'].'<br>';
			echo $r['name'].'<br>';
			echo $r['target'].'<br>';
			//echo $r['max-limit'].'<br>';
			//acomodar_b($r['max-limit']);
			echo acomodar_b($r['max-limit']).'<br>';
			echo $r['comment'].'<br>';
		}
	}
?>
</div>
<script></script>	

