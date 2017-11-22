<?php
	
	
	require_once('./Mysql.class.php');
	require_once('./Mysql.function.php');

	$func = new factory();
	$db = new DPO();
	//存储过程名字
	$MysqlFun = $_POST['sql'];
	$MysqlAllow = $_POST['json'];

	$findme = array("'",","," ","/","<",">","="); 
	//记录开始时间
	// if( $_COOKIE['startTime'] && $_COOKIE['startSql'] ){
	// 	if( time() >  $_COOKIE['startTime'] && $_COOKIE['startSql'] != $MysqlFun){
	// 		setcookie("startTime",time() + 3,time() + 3);
	// 		setcookie("startSql",$MysqlFun,time() + 3);
	// 	}else{
	// 		echo "11";
	// 	}
	// }else{
	// 	setcookie("startTime",time() + 3,time() + 3);
	// 	setcookie("startSql",$MysqlFun,time() + 3);
	// }

	//处理无效字符串
	foreach ($findme as $key => $value) {
		if(strpos($MysqlFun, $findme[$key])){
			die(json_encode(array('value'=>'Stringfade')));
			break;
		}
	}
	if(count($MysqlAllow) > 0 && empty($MysqlAllow)){
		for($i = 0; $i < count($findme); $i++){
			for($j = 0; $j < count($MysqlAllow); $j++){
				if(strpos($findme[$i], $MysqlAllow[$j])){
					die(json_encode(array('value'=>'Stringfade')));
					break;
				}
			}
		}
	}
	$MysqlFun = $func->daddslashes($MysqlFun);
	//所有后台存储过程全部都写成 字符串的形式，去检索
	$CodeAllow = array('CreateImg','GetCookie','BackOut','ZipCode','SetCookies',"delectcover","cover","login","reg","changepass","Dhistory","DLoginStatus","S_Select_MoreZan");
	if(in_array($MysqlFun,$CodeAllow)){
		switch ($MysqlFun) {
			case 'CreateImg':
				$func->CreateImg($MysqlAllow);
				break;
			case 'BackOut':
				$db->StartSql("S_Select_LoginUserId",array($MysqlAllow[0],$_COOKIE['autoLogin'],'out'));
				$func->BackOut();
				$arr = json_encode(array('value'=>'true'));
				break;
			case 'GetCookie':
				 if($func->GetCookie() == 1){
				 	$arr = $db->StartSql("S_Select_LoginUserId",array($_COOKIE['autoLogin'],'','login'));
				 }else{
					$arr = json_encode(array('value' => $func->GetCookie()));
				 }
				break;
			case 'ZipCode':
				$arr = json_encode(array('value' => $func->ZipCode($MysqlAllow)));
				break;
			case 'SetCookies':
				$coks = md5(crypt(time().rand(1,9999995)));
				setcookie("autoLogin",$coks,time() + 6 * 7 * 3600);
				$db->StartSql("S_Select_LoginUserId",array($MysqlAllow[0],$coks,''));
				$arr = json_encode(array('value'=>'true'));
				break;
			case "delectcover":
				if($_COOKIE['cover']){ //删除封面图片缓存
					setcookie('cover',"",time()-100); 
				}
				$arr = json_encode(array('value'=>'true'));
				break;
			case "cover":
				if($_COOKIE['cover']){ //删除封面图片缓存
					setcookie('cover',"",time()-100); 
				}
				if($_COOKIE['head_img']){ //删除头像图片缓存
					setcookie('head_img',"",time()-100); 
				}
				$arr = json_encode(array('value'=>'true'));
				break;
			case 'login': 	//登录
				if($func->GetCookie() == 1){
					$arr = $db->StartSql("S_Select_LoginUserId",array($_COOKIE['autoLogin'],'','login'));
				}
				else if(!$func->emailResult($MysqlAllow[0])){
					die(json_encode(array('value'=>'emailFalse'))); //邮箱正则 匹配到邮箱不正确
				}
				else{
					$MysqlAllow[1] = $func->Md5Pass($MysqlAllow[1]);
					$arr = $db->StartSql("S_Select_Userinfo",$MysqlAllow);
				}
				break;
			case 'reg': //注册
				if(!$func->emailResult($MysqlAllow[0])){
					die(json_encode(array('value'=>'emailFalse'))); //邮箱正则 匹配到邮箱不正确
				}
				$arr = $db->StartSql("I_Insert_Userinfo",$MysqlAllow);
				break;
			case "changepass": //修改密码
				$MysqlAllow[1] = $func->Md5Pass($MysqlAllow[1]);
				$arr = $db->StartSql("S_Select_Userinfo",$MysqlAllow);
				$arr = json_encode(array('value'=>'true'));
				break;
			case "Dhistory": //删除历史记录
				$arr = $db->StartSql("D_Delect_history",$MysqlAllow);
				break;
			case "DLoginStatus": //删除登陆状态
				$arr = $db->StartSql("D_Delect_LoginStatus",$MysqlAllow);
				break;
			case "S_Select_MoreZan": //获取最赞评论
				// session_start();
				// if(!empty($_SESSION['strarr'])){ //请求判断是否为空
					$arr = $db->StartSql("S_Select_MoreZan",array($_SESSION["strarr"]));
				// }
				break;
			default:break;
		}
	}
	else{
		switch ($MysqlFun) {
			case 'S_Select_ContentAll': //移出HTML标签
				$arr = $db->StartSql($MysqlFun,$MysqlAllow);
				$arr = json_decode($arr,true);
				$arr = $func->RemoveLabel($arr,"content");
				break;			
			default:
				$arr = $db->StartSql($MysqlFun,$MysqlAllow);
				break;
		}
	}
	echo isset($arr) ? $arr : "";
?>