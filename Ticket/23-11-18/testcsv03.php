<?php
//include('phpseclib/Net/SSH2.php');
//require 'csv/parsecsv.lib.php';
/*
$csv = new ParseCsv\Csv('_export.csv');
print_r($csv->data);

$csv = new ParseCsv\Csv();
$csv->save('_export.csv', array(array('1986', 'Home', 'Nowhere', '')), true);

$FileName = "_export.csv";
header("Location: $FileName");
echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
*/

$FileName = "_export.csv";
$file = fopen($FileName, 'r+');
function generateCsv($data, $delimiter = ',', $enclosure = '"') {
	
		//$handle = fopen('php://temp', 'r+');
		$FileName = "_export.csv";
		$handle = fopen($FileName, 'r+');
		foreach ($data as $line) {
			fputcsv($handle, $line, $delimiter, $enclosure);
		}
		rewind($handle);
		while (!feof($handle)) {
		   $contents .= fread($handle, 8192);
		}
		fclose($handle);
		return $contents;
}

$data = array(
       array(1, 2, 4),
       array('test string', 'test, literal, comma', 'test literal "quotes"'),
		);

echo generateCsv($data);

header("Location: $FileName");
echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
?>