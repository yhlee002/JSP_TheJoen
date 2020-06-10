<%@ page import="java.time.LocalDate" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
jsp의 주석
 --%>
 <!-- html의 주석은 jsp파일에서는 java로 변환됨 -->
<% 
//스크립트릿
LocalDate today = LocalDate.now();
//System.out.println("콘솔용...");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var todayis new Date();
	alert(todayis);
</script>
</head>
<body>
<%-- 표현식 : <%= 값  %> --%>
<%-- 선언식 : <% 선언식 %> --%>
오늘은 : <%=today.getDayOfMonth() %> 일<br>
<%
	int num1 = 10;
	int num2 = 20;
	out.print("두 수의 합 : "+(num1 + num2));
%>
두 수의 합 : <%=num1+num2 %>

</body>
</html>