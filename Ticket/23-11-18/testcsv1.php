<?php


<?php
/*
$username="root";		$password="";		$database="exam_codes";
$con = mysql_connect("localhost",$username,$password) or die( "Unable to Connect database");
mysql_select_db($database,$con) or die( "Unable to select database");
*/
// Table Name that you want
// to export in csv
//$ShowTable = "stats";

$FileName = "_export.csv";
$file = fopen($FileName,"w");
/*
$sql = mysql_query("SELECT * FROM  `$ShowTable` LIMIT 11");
$row = mysql_fetch_assoc($sql);
*/
// Save headings alon
	//$HeadingsArray=array();
	$HeadingsArray=array('a','b','c','d','e');
	/*
	foreach($row as $name => $value){
		$HeadingsArray[]=$name;
	}
	*/
	fputcsv($file,$HeadingsArray); 
	
// Save all records without headings

	//while($row = mysql_fetch_assoc($sql)){
	//$valuesArray=array();
	$valuesArray=array('1','2','3','4','5');
	/*
	foreach($row as $name => $value){
		$valuesArray[]=$value;
	}
	*/
	fputcsv($file,$valuesArray); 
	//}
	fclose($file);

header("Location: $FileName");

echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
?>


?>