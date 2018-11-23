<?php
$list = array (
    array('aaa', 'bbb', 'ccc', 'dddd'),
    array('123', '456', '789'),
    array('"aaa"', '"bbb"')
);

$FileName = "_export.csv";
$fp = fopen($FileName, 'w');
 
fputcsv($fp, array('a;b;c;d'));
 
fclose($fp);

header("Location: $FileName");
echo "Complete Record saves as CSV in file: <b style=\"color:red;\">$FileName</b>";
?>