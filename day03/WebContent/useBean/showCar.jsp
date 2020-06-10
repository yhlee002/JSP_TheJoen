<%@page import="day03.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Car car = (Car)request.getAttribute("car");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showCar.jsp</title>
</head>
<body>
	차 색상 : <%= car.getColor() %><br>
	모델 : <%= car.getModel() %><br>
	최대 속력 : <%= car.getSpeed() %>
</body>
</html>