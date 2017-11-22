<?php 
	header("Content-Type: text/html; charset=UTF-8");
	session_start();
	class factory{
		//移除掉所有PHP， HTML， XHTML标签
		//@param $arr 结果集
		//@param $where 条件
		public function __construct($result = array()){
			$this->result = $result;
		}
		public final function RemoveLabel($arr,$where){
			if(is_array($arr)){
				foreach ($arr['value'] as $key => $value) {
					$str = strip_tags($arr['value'][$key][$where]);
					$arr['value'][$key][$where] = $str;
					array_push($this->result,$arr['value'][$key]);
				}
				return $this->decodeUnicode(json_encode(array("value"=>$this->result,"count"=>count($this->result),'error'=>'')));
			}
		}

		//转换json字符集编码
		//@param $str json数组
		//retun json数组
		private final function decodeUnicode($str){
			return preg_replace_callback('/\\\\u([0-9a-f]{4})/i', create_function( '$matches', 'return mb_convert_encoding(pack("H*", $matches[1]), "UTF-8", "UCS-2BE");' ), $str); 
		}

		//注册登录修改
		//@param $pass 密码
		//return 加密后的密码
		public final function Md5Pass($pass){
			$str[1] = md5(crypt($str[1],substr($str[1],0,2)));
			return md5(crypt($pass,substr($pass,0,2)));
		}

		//生成图片缩略图
		//@param $PicArr 数组
		//return 返回图片生成正确与否
		public final function CreateImg($PicArr){
			$pic_name = $PicArr[0];
			$x = $PicArr[1];
			$y = $PicArr[2];
			$w = $PicArr[3];
			$h = $PicArr[4];
			$imgName = $PicArr[5];
			$path = $PicArr[6];
			$type = $PicArr[7];
			if($path == "upload"){
				$targ_w = $targ_h = 90;
			}
			else{
				$targ_w = 160;
				$targ_h = 100;
			}
			$filep="../../".$path."/";
			require_once('jcrop_image.class.php');
			$crop= new jcrop_image($filep, $pic_name,$x,$y,$w,$h,$targ_w,$targ_h,$imgName,$type);
			$file=$crop->crop();
			unset($file);
		}

		//获取当前客户端是否存在用户cookies
		//return 1或0
		public final function GetCookie(){
			if($_COOKIE['autoLogin']){ //获取cookies
				return 1;
			}else{
				return 0;
			}
		}

		//用户退出当前账号
		//清楚一系列的cookies
		public final function BackOut(){
	    	foreach($_COOKIE as $key=>$val){
			  setcookie($key,"",time()-100);
		 	}
		}

		//用户验证信息 验证码
		//@param $code 前台输入验证码值
		//return true false
		public final function ZipCode($code){
			//判断验证码输入的是否为英文字母
			if(preg_match("/^[a-zA-Z\s]+$/",$code[0])){
				if(strtolower($code[0])==$_SESSION["helloweba_gg"]){
				   return 1;
				}
			}
		}
		
		//邮箱验证
		public final function emailResult($str){
		    if(preg_match("/^[0-9a-zA-Z]+(?:[_-][a-z0-9-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*.[a-zA-Z]+$/i",$str)) 
		        return 1;     
		    return 0; 
		}


		//转义字符串
		public final function daddslashes($str){
			return (!get_magic_quotes_gpc()) ? addslashes($str) : $str;
		}
	}
?>