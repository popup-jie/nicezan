<html>
	<head>
		<title>内容页</title>
	</head>
	<body>
		<div style='background:red;width:120px;height:120px'>
			{foreach from=$myArray item=curr_id}
				<div class='fl' style='color:blue'>{$curr_id.title}</div>
				<div class='fl' style='color:#fff'>{$curr_id.author}</div>
			{/foreach}
		</div>
	</body>
</html>