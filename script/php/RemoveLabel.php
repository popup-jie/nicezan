<?php 
	$arr = $_POST['arr'];
	$str = mb_substr(strip_tags($arr),0,197,"UTF-8");
	$str = "<p>".$str."...</p>";
	echo $str;

?>