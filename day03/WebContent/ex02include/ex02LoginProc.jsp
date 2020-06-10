<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02LoginProc.jsp</title>
</head>
<body>
	<h3>로그인 완료</h3>
	<%@ include file="ex02show.jsp" %>
</body>
</html>