<?php
//include('phpseclib/Net/SSH2.php');
require 'csv/parsecsv.lib.php';

$csv = new ParseCsv\Csv('_export.csv');
print_r($csv->data);

$csv = new ParseCsv\Csv();
$csv->save('_export.csv', array(array('1986', 'Home', 'Nowhere', '')), true);

$FileName = "_export.csv";
header("Location: $FileName");
echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
?>