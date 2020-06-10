<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String birthDate = request.getParameter("birthDate");
	String sex = request.getParameter("sex");
	if(sex == "m"){ sex = "남자";}
	else if(sex == "w"){sex = "여자";}
	String lunchMenu = request.getParameter("lunchMenu");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx_out.jsp</title>
</head>
<body>
	<h3>Hello</h3>
	<ul>
		<li>Name : <%= name %></li>
		<li>Age : <%= age %></li>
		<li>Address : <%= address %></li>
		<li>Email : <%= email %></li>
		<li>Birth date : <%= birthDate %></li>
		<li>Sex : <%= sex %></li>
		<li>Lunch menu : <%= lunchMenu %></li>
	</ul>
</body>
</html>