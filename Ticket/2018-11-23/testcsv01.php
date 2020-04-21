<?php
// ------------01
/*
$FileName = "_export.csv";
$file = fopen($FileName,"w");
$HeadingsArray=array('a; b');
fputcsv($file,$HeadingsArray); 
$valuesArray=array('1','2','3','4','5');
fputcsv($file,$valuesArray); 
fclose($file);
*/
// ------------02



// open the file "demosaved.csv" for writing
$FileName = "_export.csv";
$file = fopen($FileName,"w");
//$file = fopen('demosaved.csv', 'w');
 
// save the column headers
fputcsv($file, array('Column1 ', 'Column2 ', 'Column3 ', 'Column4 ', 'Column5'));
 
// Sample data. This can be fetched from mysql too
$data = array(
array('Data 11', 'Data 12', 'Data 13', 'Data 14', 'Data 15'),
array('Data 21', 'Data 22', 'Data 23', 'Data 24', 'Data 25'),
array('Data 31', 'Data 32', 'Data 33', 'Data 34', 'Data 35'),
array('Data 41', 'Data 42', 'Data 43', 'Data 44', 'Data 45'),
array('Data 51', 'Data 52', 'Data 53', 'Data 54', 'Data 55')
);
 
// save each row of the data
foreach ($data as $row)
{
fputcsv($file, $row);
}
 
// Close the file
fclose($file);

header("Location: $FileName");
echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
?>