<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%-- jstl을 쓰려면 디렉티브로 taglib을 선언해줘야 한다. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex01.jsp</title>
</head>
<body>
	<c:set var="name01" value="ironman" scope="request"/>
	<%-- request.setAttribute("name01", "ironman"); --%>
	name01의 값은 : ${name01}
	name01의 값은 : <%= request.getAttribute("name01") %>
</body>
</html>