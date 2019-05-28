<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
	<head>
		<!-- meta -->
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		
		<!-- style -->
		<link rel="stylesheet" type="text/css" href="css/bg_pinkPoint.css">
		
		<!-- script -->
		<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
		
		<!-- title -->
		<title>登录 - PaperArea</title>
	</head>
	<body>
		<div style="text-align: center">
			<form action="user/login" method="post">
				账户 <input type="text" name="username" /><br />
				密码 <input type="text" name="password" /><br />
				<input type="submit" value="登录"/><a href="register">注册</a>
			</form>
		</div>
	</body>
</html>