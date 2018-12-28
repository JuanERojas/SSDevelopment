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
			echo $r['max-limit'].'<br>';
			//$aux= intval($r['max-limit']);
			$partes = explode("/", $r['max-limit']);
			$aux=$partes[0];
			$b='b';
			if($aux>=1000){
				$aux = $aux/1000;
				$b='Kb';
			}
			if($aux>=1000){
				$aux = $aux/1000;
				$b='Mb';
			}
			//echo $aux.$b.'<br>';
			echo $r['comment'].'<br>';
		}
	}
?>
</div>
<script></script>	

