<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{text-align:center; width:1100px;}
	#top{ line-height:100px; color:white; background:blue; width:1100px; height:100px;}
	#menu{padding-top:180px; background:red; color:white; width:300px; height:320px; float:left; }
	#center{line-height:500px; background:yellow; width:800px; height:500px; float:left; }
	#bottom{line-height:200px; width:1096px; height:200px; float:left; border:2px solid black;}
	#bottom::after{content:""; display:box; clear:both;}
	
</style>
<body>
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="menu">
		<jsp:include page="addPage.jsp"></jsp:include>	
	</div>
	<div id="center">
		main jsp file
	</div>
	<div id="bottom">
	<jsp:include page="bottomPage.jsp"></jsp:include>
	</div>
</body>
</html>