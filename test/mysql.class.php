<?php 
class mysql{
	/*
		报错函数
		@param string $error
	*/
	function err($error){
		die("对不起，您的操作有误，错误原因为：".$error);
	}

	/*
		链接数据库

		@param sring $config 数组array($dbhost,$dbuser,$dbpsw,$dbname,$dbcharset)
		@return bool

	*/
	function connect($config){
		extract($config) //数组还原变量

		if(!($con = mysql_connect($dbhost,$dbuser,$dbpsw))){ //建立数据库链接
			$this->err(mysql_error());
		}

		if(!mysql_select_db($dbname,$con)){ //调用数据库
			$this-err(mysql_error();
		}

		mysql_query("set names ".$dbcharset); //设置编发
	}

	/*
		执行sql语句
		@param string $sql
		@return bool 返回执行成功、资源或者执行失败
	*/

	function query($sql){
		if(!($query = mysql_query($sql))){
			$this->err($sql."<br />".mysql_error());
		}
		else{
			return $query;
		}
	}


	/*
		列表
		@param source $query sql 语句通过mysql_query执行出来的资源
		@return array 返回列表数组
	*/

	function findAll($query){
		while($rs = mysql_fetch_array($query,MYSQL_ASSOC)){ //mysql_fetch_array 资源转换为数组，一次转换一行
			$list[] = $rs;
		}
		return isset($list) ? $list : "";
	}

	/*
		单条

		@param source $query sql 语句通过mysql_query 执行出来的资源
		@return array 返回单条信息数组
	*/

	function findOne($query){
		$rs = mysql_fetch_array($query,MYSQL_ASSOC);
		return $rs;
	}

	/*
		获取某一行的某一个字段

		@param source $query sql 语句通过mysql_query 执行出的来的资源
	*/

	function findResult($query,$row= 0,$field = 0){
		$rs = mysql_result($query, $row,$field);
		return $rs;
	}


	/*
		添加函数
		@param string $table 表名
		@param array $arr 添加数组(包含字段和值的一堆数组)
	*/
	function insert($table,$arr){
		//$sql = "insert into 表名(多个字段) values(多个值)";
		foreach ($arr as $key => $value) {
			$value = mysql_real_escape_string($values); //过滤无效字符
			$keyArr[] = "`".$key."`";//把$arr数组当中的键名保存到$keyArr数组当中
			$valueArr[] = "'".$value."'"; //把$arr数组当中的键值保存到$valueArr当中
		}

		$keys = implode(',', $keyArr); //implode 数字拼成字符串
		$values = implode(',', $valueArr);
		$sql = "insert into ".$table."(".$keys.") values(".$values.")";

		$this->query($sql);
		return mysql_insert_id(); //插入主键的值
	}

	/*
		修改函数
		@param string $table 表名
		@param array $arr修改数组(包含字段和值为一位数组)
		@param string $where
	*/

	function update($table,$arr,$where){
		foreach ($arr as $key => $value) {
			$value = mysql_real_escape_string($values);
			$keyAndValue[] = "`".$key."`='".$value."'";
		}

		$keyAndValues = implode(',', $keyAndValue); //implode 数字拼成字符串
		$sql = "update ".$table." set ".$keyAndValues." where ".$where;
		$this->query($sql);
	}

	/*
		删除函数
		@param string $table 表名
		@param string $where
	*/
	function del($table,$where){
		$sql = "delect from ".$table." where ".$where;
		$this->query($sql);
	}
}
?>