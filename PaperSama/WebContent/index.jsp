<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- meta -->
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		
		<!-- style -->
		<link rel="stylesheet" type="text/css" href="css/bg_pinkPoint.css">
		
		<!-- script -->
		<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
		<script type="text/javascript">
			$(function(){
				var url = "json/indexInit";
				var args = {"time":new Date()};
				$.post(url,args,function(result){
					$result = $(result);
					$("#content").append($rsult);
				});
			});
		</script>
		
		<!-- title -->
		<title>PaperArea</title>
	</head>
	<body style="text-align: center">
		<h1>欢迎来到PaperArea</h1>
		<div id="content"></div>
	</body>
</html>