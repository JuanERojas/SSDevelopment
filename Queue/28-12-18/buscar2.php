<?php
// Get all data 

$opc = 'name';
$bus = $_GET['bus'];
session_start();
$registros = $_SESSION['registros'];

function acomodar_b($aux){
	
	$partes = explode("/", $aux);
	$aux=$partes[0];
	$b='b';
	if($aux>=1000){
		$aux = $aux/1000;
		$b=' Kb';
	}
	if($aux>=1000){
		$aux = $aux/1000;
		$b=' Mb';
	}
	$final= $aux.$b;
	$aux=$partes[1];
	$b='b';
	if($aux>=1000){
		$aux = $aux/1000;
		$b=' Kb';
	}
	if($aux>=1000){
		$aux = $aux/1000;
		$b=' Mb';
	}
	$final = $final.'/'.$aux.$b;
	//echo $final.'<br>';
	
	return $final;
}

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

