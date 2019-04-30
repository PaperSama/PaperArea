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
		<script type="text/javascript">
			window.onload = function(){
				//1.获取节点 a 并为其添加 onclick 响应函数
				document.getElementsByTagName("a")[0].onclick = function(){
					
					//3.创建XMLHttpRequest 对象
					var request = new XMLHttpRequest();
					
					//4.准备发送请求的数据：url
					var url = this.href + "?math=" + new Date();//禁用缓存
					var method = "GET";
					
					//5.调用XMLHttpRequest 对象的  open 方法
					request.open(method, url);
					
					//6.调用XMLHttpRequest 对象的 send 方法
					request.send(null);
					
					//7.为XMLHttpRequest 对象添加 onreadystatechange 响应函数
					request.onreadystatechange = function(){
						//8.判断响应是否完成：XMLHttpRequest 对象的 readyState 属性值为4的时候
						if(request.readyState == 4){
							//9.再判断响应是否可用：XMLHttpRequest 对象 status 属性值为 200
							if(request.status == 200 || request.status == 304){
								//10.打印响应结果：responseText
								alert(request.responseText);
							}
						}
					}
					
					//2.取消 a 节点的默认行为
					return false;
				}
			}
		</script>
		
		<!-- title -->
		<title>PaperArea</title>
	</head>
	<body style="text-align: center">
		<h1>欢迎来到PaperArea</h1>
		<a href="index.jsp">Hello Ajax</a>
	</body>
</html>