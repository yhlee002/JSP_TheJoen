<%@page import="day03.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글의 경우 post 방식의 글씨가 깨지는 것을 막기위해 인코딩을 따로 해줘야 한다.(request를 가져올 때 써줘야함)
	request.setCharacterEncoding("UTF-8");
	Car car = new Car();
	car.setColor(request.getParameter("color"));
	car.setModel(request.getParameter("model"));
	car.setSpeed(Integer.parseInt(request.getParameter("speed")));
	
	//request의 속성에 담음
	request.setAttribute("car", car);

%>
<jsp:forward page="showCar.jsp"/>