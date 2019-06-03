<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
	<head>
		<!-- meta -->
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1.0" />
		
		<!-- style -->
		<link rel="stylesheet" type="text/css" href="css/bg_pinkPoint.css" />
		<link rel="stylesheet" href="../layui/css/layui.css">
		
		<!-- script -->
		<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
		<script src="../layui/layui.js"></script>
		<script src="../js/index.js"></script>
		
		<!-- title -->
		<title>欢迎来到 PaperArea</title>
	</head>
	<body>
		<header style="float: right">
		<c:if test="${empty username}">		
			<a class="layui-btn" href="login">登录</a>
			<a class="layui-btn" href="register">注册</a>
		</c:if>
		<c:if test="${not empty username}">
			<c:out value="${username}"></c:out>
			<a class="layui-btn" href="logout">退出</a>
		</c:if>
		</header>
		<div>
			<h1 class="layui-bg-green" style="text-align: center">欢迎来到 PaperArea</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
			<h1>填充文本</h1>
		</div>
		<footer>
			
		</footer>
	</body>
</html>