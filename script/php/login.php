<?php
	#用户登录，注册，修改密码加密方式
 
	$sql = $_POST["sql"];
	$str = $_POST["str"];
  if($_COOKIE['username'] && $_COOKIE['username']){  //存在cookies的时候
		$str = array($_COOKIE['username'],$_COOKIE['userpass'],"");
	}
  else{ 
	  $str[1] = md5(crypt($str[1],substr($str[1],0,2)));
	}

	include ("./mysql.php");
?>
