<%@page import="day03.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글의 경우 post 방식의 글씨가 깨지는 것을 막기위해 인코딩을 따로 해줘야 한다.(request를 가져올 때 써줘야함)
	request.setCharacterEncoding("UTF-8");
	
%>
<%-- 
	color, model, speed
	html 태그의 name과 car 클래스의 속성명이 같아야함(대소문자 구분) - 매칭되지 않는 속성에는 값이 들어가지 X
	※Date와 같은 자료형은 일일히  변환해서 넣어줘야 하는 것이 단점
 --%>
<jsp:useBean id="car" class="day03.Car" scope="request"/>
<jsp:setProperty property="*" name="car"/>
<jsp:forward page="showCar02.jsp"/>