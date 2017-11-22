<?php 
	$dbm='mysql';
	$host = "10.3.16.57";
	$dbName = "nicezandb";
	$user = "root";
	$pass = "mysql8100";  
	$dsn = "$dbm:host=$host;dbname=$dbName";
	class db extends PDO{
		public function __construct(){
			try{
				parent::__construct("$GLOBALS[dsn]",$GLOBALS['user'],$GLOBALS['pass']);
			}catch(PDOException$e){
				die("Error".$e->__toString()."<br/>");
			}
		}
		public final function query($sql){
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
		private final function seString($sql){ 
			return strval($sql);
		}
	}
	function sqls($sql,$str){
		$sa = "";
		for($i=0;$i <count($str);$i++){ //拼凑参数
			if($i != 0){
				$sa.=",";
			}
			$sa.= "'".$str[$i]."'";
		}
		$db = new db;
		$countA = array();
		try{
			$res = $db->query('call '.$sql.'('.$sa.')');
			if($db->errorInfo()[2]  != null){ //如果存储过程执行有错误
				$json = array("value" => false,"error" => $db->errorInfo()[2]);
			}
			else{
			do{  
		    while ($row = $res->fetch(PDO::FETCH_ASSOC)){  
		        array_push($countA, $row);  
		    }
			}while($res->nextRowset());  
				if(empty($countA)){ //update,insert,delete
					if(count($res) == 1){
						$json = array("value" => true,"count" => count($res),"error" => "");
					}
					else{
						$json = array("value" => false,"count" => count($res),"error" => "");
					}
				}
				else{
					$json = array("value" => $countA,"count" => count($countA),"error" => "");
				}
			}
		}
		catch(PDOException$e){
			die("Error".$e->__toString()."<br/>");
		}
		echo json_encode($json);
	}
	if(isset($sql) != true && isset($str) != true){
		$sql = $_POST["sql"];
		$str = $_POST["str"];
	}
	sqls($sql,$str);
?>