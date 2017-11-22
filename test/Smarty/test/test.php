<?php 
	require('../Smarty.class.php');
	$smarty = new Smarty();

	$smarty->left_delimiter="{"; //左定界符号
	$smarty->right_delimiter="}";//右定界符号
	$smarty->template_dir="tpl"; //html模板的位置
	$smarty->compile_dir="template_c"; //模板编译生成文件
	$smarty->cache_dir = "cache";//缓存

	//$smarty->caching = true;
	//$smarty->cache_lifetime = 120;

	// $smarty->assign('articletitle','文章标题');

	$arr = array(
		array('title'=>'smarty学习','author'=>'小明'),
		array('title'=>'smarty学习','author'=>'小明')
	);
	$smarty->assign('myArray', $arr);

	$smarty->display('test.tpl');
?>