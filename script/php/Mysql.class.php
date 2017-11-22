<?php
	$dbm='mysql';
	$host = "127.0.0.1";
	$dbName = "nicezandb";
	$user = "root";
	$pass = "mysql8100";  
	$dsn = "$dbm:host=$host;dbname=$dbName";
	class DPO extends PDO{
		//构造函数
		public function __construct($countA = array()){
			$this->countA = $countA;
		}

		//建立数据库链接
		private final function connetion(){
			try{
				parent::__construct("$GLOBALS[dsn]",$GLOBALS['user'],$GLOBALS['pass']);
				//$this->pdo = new PDO($this->dsn,$this->user,$this->pass); 
			}catch(PDOException$e){
				die("Error".$e->__toString()."<br/>");
			}
		}

		//执行sql语句，并设置编码
		//@param $sql 储存过程
		private final function exx($sql){
			try{
				parent::query('set names utf8');
				parent::setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true );
				parent::setAttribute(PDO::ATTR_EMULATE_PREPARES, true );
				return parent::query($this->seString($sql));
			}
			catch(PDOException$e){
				die("Error".$e->__toString()."<br/>");
			}
		}

		//过滤针对mysql的无效字符 将变量转成字符串类型
		private final function seString($sql){ 
			return strval($sql);
		}

		//抛出异常错误
		private final function error($str){
			die("Error".$str."<br>");
		}

		//调用数据库方法
		//@param $sql 函数名字
		//@param $str 参数 是个一维数组 array()
		public final function StartSql($sql,$str){
			$this->connetion();
			$sa = "";
			for($i=0;$i <count($str);$i++){ //拼凑参数
				if($i != 0){
					$sa.=",";
				}
				$sa.= "'".$str[$i]."'";
			}

			$res = $this->exx('call '.$sql.'('.$sa.')');
			try{
				if(parent::errorInfo()[2] != null){ //如果存储过程执行有错误
					$this->json = array("value" => false,"error" => parent::errorInfo()[2]);
				}
				else{

					return $this->DateResult($res);
				}
			}
			catch(PDOException$e){
				$this->error($e->__toString());
			}
		}

		//返回data数据
		//@param $result 结果集
		private final function DateResult($result){
			do{  
			    while ($row = $result->fetch(PDO::FETCH_ASSOC)){  
			        array_push($this->countA, $row);  
		    	}
			}while($result->nextRowset());

			if(empty($this->countA)){ //update,insert,delete
				if(count($result) == 1){ //修改更新执行成功
					$this->json = array("value" => true,"count" => count($result),"error" => "");
				}
				else{ //修改更新执行失败。服务器问题或者带宽问题
					$this->json = array("value" => false,"count" => count($result),"error" => "");
				}
			}
			else{
				$this->json = array("value" => $this->countA,"count" => count($this->countA),"error" => "");
			}
			return json_encode($this->json);
		}
	}	
?>