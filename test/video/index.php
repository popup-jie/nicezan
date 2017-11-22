<html>
	<head>
		<meta charset='utf-8'/>
		<meta charset=''/>
		<script type="text/javascript" src='/script/package/jquery-1.9.1.min.js'></script>
	</head>
	<body>
		<div>
			<?php
				//$url_this = $_SERVER[PHP_SELF];
				session_start();
				print_r($_SESSION['url']);
			?>
		</div>
	</body>
	<script type="text/javascript">
		$(function(){
			
		});
	</script>
</html>
