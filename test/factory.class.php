<?php 
	class factory{
		static function creat($type){
			return new $type;
		}
	}

?>