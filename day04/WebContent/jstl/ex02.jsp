<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02.jsp</title>
</head>
<body>
	<jsp:useBean id="user" class="day04.User" scope="page"/>
	<%-- 
		${user}, <%= user %>
	 --%>
	<%-- user 객체에 name, age를 추가해보자 --%>
	<c:set target="${user}" property="name" value="ironman"/>
	<c:set target="<%=user%>" property="age">10</c:set>
	
	${user.name}<br>
	${user.age}<br>
	
	<%-- Map 객체도 추가 가능 --%>
	<%-- <% Map userMap = new HashMap(); %> --%>
	<jsp:useBean id="userMap" class="java.util.HashMap" scope="request"/>
	<c:set target="${userMap}" property="key1" value="mapValue"/>
	${userMap.key1}
	<hr>
	
	<%--삭제 --%>
	<c:set var="test" scope="request">10</c:set>
	test : ${test}<br>
	<c:remove var="test" scope="request"/>
	test : ${test}<br>
	
	<jsp:useBean id="user01" class="day04.User" scope="request"/>
	<c:set target="<%= user01 %>" property="name" value="younghyun"/>
	<c:set target="${user01}" property="age" value="50"/>
	${user01.name}, ${user01.age}<br>
	<jsp:useBean id="user02" class="day04.User" scope="request"/>
	<c:set target="${user02}" property="name" value="ladda"/>
	<c:set target="<%= user02 %>" property="age">20</c:set>
	${user02.name}, ${user02.age}<br>
	
</body>
</html>