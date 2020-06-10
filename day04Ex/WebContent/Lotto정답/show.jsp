<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.f_red{color:red}
</style>
</head>
<body>
	<div>
		로또 번호 : 
		<c:forEach var="num" items="${lotto}">
			<span>${num}</span>
		</c:forEach>
	</div>
	<div>
		입력 번호 : 
		<c:forEach var="num" items="${picList}">
			<c:choose>
				<c:when test="${winning.contains(num)}">
					<span class="f_red">${num}</span>
				</c:when>
				<c:otherwise>
					<span>${num}</span>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
</body>
</html>