<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	int num3 = Integer.parseInt(request.getParameter("num3"));
	
	//name이 중복될 때에는 하나의 값(첫번쨰 값)만 넘어옴
	int num4  = Integer.parseInt(request.getParameter("num4")); 
	int num5  = Integer.parseInt(request.getParameter("num4")); 
// 	String[] num4arr = request.getParameterValues("num4");
	
	//숫자로 다루려면 자료형을 int로 변경해야 하는데, 빈 값은 변경(parseInt)이 불가능하므로 빈값인지 확인하는 과정이 필요하다.
	int intNum1 = request.getParameter("num1").equals("") ? 0 : Integer.parseInt(request.getParameter("num1"));
	
	//checkbox의 경우에는 배열로 받는 메소드를 사용해야한다.
	String[] fishes = request.getParameterValues("fish");
	String fish = "";
	for(int i = 0; i < fishes.length; i++){
		fish += fishes[i]+" ";
	}
	
	//date
	String date = request.getParameter("date");
	System.out.println(date);
	LocalDate localDate = LocalDate.parse(date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramInfo01.jsp</title>
</head>
<body>
	입력된 세 수의 합 : <%= intNum1 + num2 + num3 %><br>
	선택한 물고기 : <%= fish %><br>
	<%= localDate.getYear() %>년, <%= localDate.getMonthValue() %>월, <%= localDate.getDayOfMonth() %>일
<%-- 	<%= intNum1 %> --%>

</body>
</html>