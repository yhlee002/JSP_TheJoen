<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		조건절
		데이터가 있을 경우 또는 없을 경우
		<c:if test="${조건절}">참일 때 실행 코드</c:if>
	 --%>
	<c:if test="true">무조건 실행</c:if>
	<c:if test="false">무조건 실행</c:if>
	<c:if test="${param.age > 20}" var="result">파라미터 age가 20보다 크다.</c:if>
	<%--
		위의 조건식의 결과가 result에 들어감 
		param은 request.getParameter()를 대체함 
		param은 String타입으로 반환하는데, 숫자인 20과도 비교해준 것		
	--%>
	결과 : ${result}<br>
	<%-- choose절 : if-else 또는 switch와 같은 역할(if-else절이 없기 때문에 이를 사용) --%>
	<c:choose>
		<c:when test="${param.kor > 90 }">A</c:when>
		<c:when test="${param.kor > 80 }">B</c:when>
		<c:when test="${param.kor > 70 }">C</c:when>
		<c:otherwise>under the D</c:otherwise>
	</c:choose>

</body>
</html>