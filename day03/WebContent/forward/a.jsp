<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String number = request.getParameter("number");
	String result = (String)request.getAttribute("result");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body>
	결과 : <%= number %>, <%= result %>
</body>
</html>