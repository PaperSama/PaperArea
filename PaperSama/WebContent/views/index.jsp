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
		<link rel="stylesheet" type="text/css" href="/css/bg_pinkPoint.css" />
		<link rel="stylesheet" href="/layui/css/layui.css">
		
		<!-- script -->
		<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
		<script src="/layui/layui.js"></script>
		<script src="/js/index.js"></script>
		
		<!-- title -->
		<title>欢迎来到 PaperArea</title>
	</head>
	<body class="layui-main">
		<header class="layui-header">
			<div>
				<ul class="layui-nav">
					<li class="layui-nav-item"><a>首页</a></li>
					<li class="layui-nav-item"><a>比赛</a></li>
					<li class="layui-nav-item"><a>关于</a></li>
					<li class="layui-nav-item"><a>个人</a></li>
				</ul>
			</div>
		
		<!-- 
		<c:if test="${empty username}">		
			<a class="layui-btn" href="login">登录</a>
			<a class="layui-btn" href="register">注册</a>
		</c:if>
		<c:if test="${not empty username}">
			<c:out value="${username}"></c:out>
			<a class="layui-btn" href="logout">退出</a>
		</c:if>
		 -->
		 
		</header>
		
		<div class="layui-row">
		    <div class="layui-col-lg8 layui-bg-gray">
				<h1>即将开赛</h1><br/>
				<div>
					<h2>DOTA 2 日常赛 第2期</h2>
					比赛项目：<a href="">DOTA 2</a><br />
					比赛时间：<a href="">2019年6月8日 15时00分 约5小时后</a><br />
					参赛人数：<a href="">10人</a><br />
					<a href="">我要参赛</a><br/>
				</div>
				<div>
					<h2>Artifact 新手赛</h2>
					比赛项目：<a href="">Artifact</a><br />
					比赛时间：<a href="">2019年6月9日 19时30分 约9小时后</a><br />
					参赛人数：<a href="">4人</a><br />
					<a href="">我要参赛</a><br/>
				</div>
				<h1>历史比赛</h1><br/>
				<div>
					<h2>DOTA 2 日常赛 第1期</h2>
					比赛项目：<a href="">DOTA 2</a><br />
					比赛时间：<a href="">2019年6月1日 15时00分</a><br />
					参赛人数：<a href="">10人</a><br />
					<a href="">查看详情</a><br/>
				</div>
			</div>
			<div class="layui-col-lg4 layui-bg-green">
				<c:if test="${empty username}">
					<a class="layui-btn" href="login">登录</a>
					<a class="layui-btn" href="register">注册</a>
				</c:if>
				<c:if test="${not empty username}">
					<h1>我的信息</h1>
					<a class="layui-btn" href="logout">退出登录</a>
					<div>
						<div>
							<h2>站内信息</h2>
							<img src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1d74b54c6a11ff9ddfd59b6abee671d351e18abc_medium.jpg" />
							<h3>${username}</h3><br />
							
						</div>
						<div>
							<h2>Steam信息</h2>
							<img src="https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1d74b54c6a11ff9ddfd59b6abee671d351e18abc_medium.jpg" />
							<h3>Little Strawberry <a>(76561197998814783)</a></h3><br />
						</div>
					</div>
				</c:if>
			</div>
		</div>
		
		<hr />
		<div>
			现在摆在这里的，仅仅是一个不包含逻辑的网站模板！<br />
			本网站将为本群服务，致力于创造一个公开举办比赛的平台。<br />
			目前正在征集意见中。如果您有什么意见可以留言在这里：
			
			<c:if test="${empty username}">
				<br />
				<h2>但你需要先<a href="login">登录</a>才能留言</h2>
			</c:if>
			<c:if test="${not empty username}">
				<form action="/comment/add" method="post" style="text-align: center;" class="layui-form">
					<input type="hidden" name="username" value="${username}"/>
					<textarea rows="10" cols="100" name="comment" class="layui-textarea" placeholder="请畅所欲言，对美观度、内容、功能等都可以提出意见。" required="required"></textarea><br />
					<input type="submit" value="留言" class="layui-btn"/>
				</form>
			</c:if>
		</div>
		<div>
			<a id="show">查看所有留言</a>
			<div id="comment"></div>
		</div>
		
		<footer>
			<hr />
			<p>© 2018-2019 PaperSama.com 版权所有</p>
			<a href="http://www.beian.miit.gov.cn">宁ICP备18001958号-1</a>
		</footer>
	</body>
	<script>
		$(function(){
			$("a#show").mousedown(function(){
				$.getJSON("/comment/show",function(result){
					$("#comment").empty();
					$.each(result, function(i, comment){
						$("#comment").prepend("<div class=\"layui-card\" id=\"div-" + JSON.stringify(comment.id) + "\"></div>");
						$("#div-" + JSON.stringify(comment.id)).append("<div class=\"layui-card-header\">" + (i + 1) + "：" + JSON.stringify(comment.context) + "</div>");
							if(JSON.stringify(comment.re)!="null"){
								$("#div-" + JSON.stringify(comment.id)).append("<div class=\"layui-card-hody\">开发者回复：" + JSON.stringify(comment.re) + "</div>");
							}
					})
				});
			});
		});
	</script>
</html>