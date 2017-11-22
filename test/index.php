<!DOCTYPE>
<html>
	<head>
		<meta charset='utf-8'/>
		<script type="text/javascript" src='../script/package/jquery-1.9.1.min.js'></script>
	</head>
	<body>
		<a href='/video/20160628' target="_blank">点击我。重定向页面路由</a>
	</body>
	<script type="text/javascript">
		$(function(){
			$("a").click(function(event){
				var href = $(this).attr("href").split("/");
				$.ajax({
					url:"test.php",
					type:"post",
					async:false,
					data:{dir:href},
					success:function(r){
						window.open(r);
						
					}
				})
				return false;
			})
		})
	</script>
</html>