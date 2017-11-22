<?php 

	$code = $_POST["sql"];
	$str = $_POST["str"];
  if($code == "setCookies"){  //设置cookies
    setcookie("username",$str[0],time()+6*7*24*3600); 
    setcookie("userpass",$str[1],time()+6*7*24*3600);
  }
  else if($code == "getCookies"){
    if($_COOKIE['username'] && $_COOKIE['userpass']){ //获取cookies
			echo "1";
		}
  }
?>