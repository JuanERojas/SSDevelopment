<?php
/*
$myObj->name = "John";
$myObj->age = 30;
$myObj->city = "New York";
$myJSON = json_encode($myObj);

$myObj->name = "John2";
$myObj->age = 31;
$myObj->city = "New York2";

$myJSON = json_encode($myObj);
*/

$st = "{roleName : 'admin', roleIds : [1,2,3] }";

$st = $st.","."{roleName : 'editor', roleIds : [4,5,6] }";

$myJSON = json_encode($st);

echo $myJSON;
?>