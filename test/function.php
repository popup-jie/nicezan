<?php 
	function C($name, $method){
		require_once('./lib/'.$name.'Controller.class.php');
		eval('$obj = new '.$name.'Controller();$obj->'.$method.'();');
		return $obj;
		#eval不安全
		#$Controller = $name.'Controller';
		#$obj = new $Controller();
		#$obj->$method();

	}

	function M($name){
		require_once('./lib/'.$name.'Model.class.php');
		eval('$obj = new '.$name.'Model();');
		return $obj;
	}

	function V($name){
		require_once('./lib/'.$name.'View.class.php');
		eval('$obj = new '.$name.'View();');
		return $obj;
	}

	function daddslashes($str){
		return (!get_magic_quotes_gpc()) ? addslashes($str) : $str;
	}
?>