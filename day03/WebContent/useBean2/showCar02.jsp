<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- request에서 car라는 속성이 있다면 새로 생성하거나 덮어쓰는 것이 아니라 해당 속성을 가져온다. --%>
<jsp:useBean id="car" class="day03.Car" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	차 색상 : <jsp:getProperty property="color" name="car"/><br>
	차 종 : <jsp:getProperty property="model" name="car"/><br>
	최대 속력 : <jsp:getProperty property="speed" name="car"/>
</body>
</html>