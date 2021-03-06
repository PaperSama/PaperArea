<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- style -->
<link rel="stylesheet" type="text/css" href="/css/bg_pinkPoint.css">
<link rel="stylesheet" href="/layui/css/layui.css">

<!-- script -->
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="/layui/layui.js"></script>
<script src="/js/index.js"></script>

<!-- title -->
<title>注册 - PaperArea</title>
</head>
<body class="layui-main">
	<h1 class="layui-bg-green">注册</h1>
	<h2 class="layui-bg-red">${errMsg}</h2>
	<div>
		<form class="layui-form" action="/user/register" method="post">
			<div class="layui-form-item">
				<i class="layui-icon layui-icon-username"></i> <label
					class="layui-form-label">账户</label>
				<div class="layui-input-inline">
					<input class="layui-input" type="text" name="username"
						placeholder="请输入账户" id="name" /><br />
				</div>
				<label style="color: red;" id="nameError"></label>
			</div>

			<div class="layui-form-item">
				<i class="layui-icon layui-icon-password"></i> <label
					class="layui-form-label">密码</label>
				<div class="layui-input-inline">
					<input class="layui-input" type="text" name="password" placeholder="请输入密码" /><br />
				</div>
				<div class="layui-form-mid layui-word-aux">区分大小写</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">协议</label>
				<div class="layui-input-block">
					<input type="checkbox" name="switch" lay-skin="switch" lay-text="同意|拒绝" required="required"/>
				</div>
				<div class="layui-form-mid layui-word-aux">注册账号后，我的言行会遵守中国法律。并愿意在此网站公开我的部分信息。</div>
			</div>

			<div class="layui-form-item">
				<div class="layui-input-block">
					<input class="layui-btn" type="submit" value="注册">
					<input class="layui-btn layui-btn-primary" type="reset" value="重置">
				</div>
			</div>
		</form>
	</div>
</body>
<script>
	$(function() {
		$("#name").blur(function() {
			var arg = document.getElementById("name").value;
			//alert(arg);
			$("#nameError").load(("ajax/checkName?arg=" + arg));
		});

	});
</script>
</html>