<?php

	session_start();
	$code = $_POST["sql"];
	if($code == ""){
		if($setcookie['cover']){ //删除封面图片缓存
			setcookie('cover',"",time()-100); 
		}
		if($setcookie['head_img']){ //删除头像图片缓存
			setcookie('head_img',"",time()-100); 
		}
		if($_COOKIE['username']){ //删除cookies账号
			setcookie('username',"",time()-100); 
		}
		if($_COOKIE['userpass']){ //删除cookies密码
			setcookie('userpass',"",time()-100);
		}	
    if($_COOKIE['IsLogin']){ //删除cookies登录状态
			setcookie('IsLogin',"",time()-100);
		}	
    foreach($_COOKIE as $key=>$val){
		  setcookie($key,"",time()-100);
	  }
	}
	else if($code == "cover"){
		if($_COOKIE['cover']){ //删除封面图片缓存
			setcookie('cover',"",time()-100); 
		}
		if($_COOKIE['head_img']){ //删除头像图片缓存
			setcookie('head_img',"",time()-100); 
		}
	}
 
	else{
		if(strtolower($code)==$_SESSION["helloweba_gg"]){
		   echo '1';
		   unset($_SESSION['helloweba_gg']); 
		   session_destroy();
		}
	}
?>
