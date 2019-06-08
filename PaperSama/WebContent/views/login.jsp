<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<!-- meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- style -->
<link rel="stylesheet" type="text/css" href="/css/bg_pinkPoint.css" />
<link rel="stylesheet" href="/layui/css/layui.css">

<!-- script -->
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="/layui/layui.js"></script>
<script src="/js/index.js"></script>

<!-- title -->
<title>登录 - PaperArea</title>
</head>
<body class="layui-main">
	<h1 class="layui-bg-green">登录</h1>
	<h2 class="layui-bg-red">${errMsg}</h2>
	<div>
		<form class="layui-form" action="/user/login" method="post">
			<div class="layui-form-item">
				<i class="layui-icon layui-icon-username"></i> <label
					class="layui-form-label">账户</label>
				<div class="layui-input-inline">
					<input class="layui-input" type="text" name="username"
						placeholder="请输入账户" required="required" /><br />
				</div>
			</div>

			<div class="layui-form-item">
				<i class="layui-icon layui-icon-password"></i> <label
					class="layui-form-label">密码</label>
				<div class="layui-input-inline">
					<input class="layui-input" type="text" name="password"
						placeholder="请输入密码" required="required" /><br />
				</div>
				<div class="layui-form-mid layui-word-aux">区分大小写</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<input class="layui-btn" type="submit" value="登录"> <input
						class="layui-btn layui-btn-primary" type="reset" value="重置">
				</div>
			</div>
		</form>
	</div>
</body>
</html>