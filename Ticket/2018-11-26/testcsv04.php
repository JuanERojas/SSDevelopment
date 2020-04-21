<?php
$list = array (
    array('aaa', 'bbb', 'ccc', 'dddd'),
    array('123', '456', '789'),
    array('aaa', 'bbb')
);
$r=array('aaa', 'bbb', 'ccc', "dddd");
array_push($r,'eee');

$FileName = "_export.csv";
$fp = fopen($FileName, 'w');

foreach($list as $l) {
		$juan=$l[1];
		//$str='a;b;c;d;3'.';'.$juan;
		$str='a;b;c;d;3'.';'.$l[1].';'.$l[0];
		$aux= array($str);
		fputcsv($fp, $aux);
}
fclose($fp);

header("Location: $FileName");


function addCsv($fp, $str){
		//fputcsv($fp, $str);
	}
?>