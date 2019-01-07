<?php
	error_reporting(E_ALL);
	$currDate = date('Y-m-d');
	$FileName = 'test.txt';
	$fp = fopen(getcwd()."/stats/".$FileName, 'w') or die("can't open file");
	fclose($fp);

	
/*	
	error_reporting(E_ALL);

	$pagename = 'my_page1';

	$newFileName = 'stats/'.$pagename.".php";
	$newFileContent = '<?php echo "something..."; ?>';

	if (file_put_contents($newFileName, $newFileContent) !== false) {
		echo "File created (" . basename($newFileName) . ")";
	} else {
		echo "Cannot create file (" . basename($newFileName) . ")";
	}
*/
?>
