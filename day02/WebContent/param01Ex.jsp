<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//메뉴
	String[] menus = request.getParameterValues("menu");
	String mn = "";
	for(int i = 0; i < menus.length; i++){
		if(i == menus.length - 1){
			mn += menus[menus.length-1];
		}else{
			mn += menus[i]+", ";
		}
	}
//두 수의 연산
	int num1 = request.getParameter("num1").equals("")? 0 : Integer.parseInt(request.getParameter("num1"));
	int num2 = request.getParameter("num2").equals("")? 0 : Integer.parseInt(request.getParameter("num2"));
	
	int sum =  num1 + num2;
	int sub = num1 > num2 ? num1 - num2 : num2 - num1;
	int g = num1 * num2;
	double n = (num1*1.0)/(num2*1.0);
	
//날짜
	String date = request.getParameter("date");
	LocalDate localDate = LocalDate.parse(date);
	LocalDate localDate2 = localDate.plusDays(10); 
//날짜의 10일  후

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form01Ex결과 출력화면</title>
</head>
<body>
	<ol>
		<li>선택한 메뉴 : <%= mn %></li>
		<li>입력한 두 수 : <%= num1 %>, <%= num2 %>
			<ul>
				<li>두 수의 합 : <%= sum %></li>
				<li>두 수의 차 : <%= sub %></li>
				<li>두 수의 곱 :<%= g %> </li>
				<li>두 수의 나눔 : <%= n %></li>
			</ul>
		</li>
		<li>입력한 날짜 : <%= localDate %></li>
		<li>입력한 날짜의 10일 뒤 : <%= localDate2 %></li>
	</ol>
</body>
</html>