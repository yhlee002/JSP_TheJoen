<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03_exShow.jsp</title>
</head>
<body>
	<fieldset>
		<c:if test="${param.age > 20 }">성인</c:if><br>
		<strong>국어</strong> : 
		<c:choose>
			<c:when test="${param.kor == 100}">A</c:when>
			<c:when test="${param.kor >= 90}">B</c:when>
			<c:when test="${param.kor >= 80}">C</c:when>
			<c:otherwise>F</c:otherwise>
		</c:choose>
		점<br>
		
		<strong>영어</strong> : 
		<c:choose>
			<c:when test="${param.eng == 100}">A</c:when>
			<c:when test="${param.eng >= 90}">B</c:when>
			<c:when test="${param.eng >= 80}">C</c:when>
			<c:otherwise>F</c:otherwise>
		</c:choose>
		점<br>
		
		<strong>수학</strong> : 
		<c:choose>
			<c:when test="${param.math == 100}">A</c:when>
			<c:when test="${param.math >= 90}">B</c:when>
			<c:when test="${param.math >= 80}">C</c:when>
			<c:otherwise>F</c:otherwise>
		</c:choose>
		점<br>
	</fieldset>
	
	
	
	
	
	
	
</body>
</html>