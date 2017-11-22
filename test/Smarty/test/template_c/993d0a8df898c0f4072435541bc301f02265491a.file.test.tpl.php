<?php /* Smarty version Smarty-3.1.16, created on 2016-06-29 11:49:59
         compiled from "tpl\test.tpl" */ ?>
<?php /*%%SmartyHeaderCode:719557733d7e92b236-03335491%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '993d0a8df898c0f4072435541bc301f02265491a' => 
    array (
      0 => 'tpl\\test.tpl',
      1 => 1467172374,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '719557733d7e92b236-03335491',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_57733d7e961d43_32068636',
  'variables' => 
  array (
    'myArray' => 0,
    'curr_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57733d7e961d43_32068636')) {function content_57733d7e961d43_32068636($_smarty_tpl) {?><html>
	<head>
		<title>内容页</title>
	</head>
	<body>
		<div style='background:red;width:120px;height:120px'>
			<?php  $_smarty_tpl->tpl_vars['curr_id'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['curr_id']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['myArray']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['curr_id']->key => $_smarty_tpl->tpl_vars['curr_id']->value) {
$_smarty_tpl->tpl_vars['curr_id']->_loop = true;
?>
				<div class='fl' style='color:blue'><?php echo $_smarty_tpl->tpl_vars['curr_id']->value['title'];?>
</div>
				<div class='fl' style='color:#fff'><?php echo $_smarty_tpl->tpl_vars['curr_id']->value['author'];?>
</div>
			<?php } ?>
		</div>
	</body>
</html><?php }} ?>
