<?php 

echo getcwd();

echo '<br>';

$page_name = dirname(__FILE__);
$each_page_name = explode('/', $page_name);
echo end($each_page_name);
?>