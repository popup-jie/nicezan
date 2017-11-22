<?php 
	//$sql = $_POST["sql"];
	//$str = $_POST["str"]; //ip
  
  header("Content-type: text/html; charset=utf-8"); 
  /*$host = "localhost";
  $ip =$_SERVER['REMOTE_ADDR'];
  $por= $_SERVER['REMOTE_PORT'];
//$fp = fsockopen("www.k686.com", 80, &$errno, &$errstr, 10);  
$fp = stream_socket_client("tcp://".$host.":8100", $errno, $errstr, 30);
if(!$fp) {  
        echo "$errstr ($errno)<br>\n";  
} else {  
        fputs($fp,"GET / HTTP/1.0\nHost:localhost:8100\n\n");  
        if(!feof($fp)) {  
                echo '1';
        }  
        fclose($fp);  
        exit;*/
        
   if("10.3.16.47" != "10.3.16.57"){
     //注销当前用户
     //unset($_SESSION['username']);
     //echo "您已在别处登录！<a href='login.html'>从新登录</a>";
     
     exit;
    }else{
     echo "欢迎您：".$username;
     echo " <a href='logout.php'>注销</a>";
     exit;
    }

?>