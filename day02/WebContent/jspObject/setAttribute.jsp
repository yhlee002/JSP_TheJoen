<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("이름", "루피");	//키는 문자열, 값은 객체면 가능(클래스타입, 숫자, 문자열 모두 가능)
	request.setAttribute("나이", 19);
	session.setAttribute("취미", new String[]{"축구", "농구", "야구"});
	application.setAttribute("디비", "mysql");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setAttribute.jsp</title>
</head>
<body>
	<ul>
		<!-- getAttribute()의 반환값 형태는 Object이기 때문에 다운캐스팅을 해서 써야한다. -->
		<li>pageContext : <%= (String)pageContext.getAttribute("이름") %></li> <!-- 다운캐스팅 -->
		<li>request : <%= (Integer)request.getAttribute("나이") %> </li>
		<li>session : <%= Arrays.toString((String[])session.getAttribute("취미")) %> </li>
		<li>application : <%= (String)application.getAttribute("디비") %> </li>
	</ul>
	<a href="useObject.jsp">gogo</a>
</body>
</html>