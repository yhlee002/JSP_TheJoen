<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//기본 객체를 이용해서 데이터를 가져와보자
		//pageContext
		//request
		
		//해당 페이지에서는 이러한 속성이 없기 떄문에 null 출력(null은 문자열로는 다운캐스팅 가능)
		String name = (String)pageContext.getAttribute("이름"); 
		out.print("pageContext : "+name+"<br>");
	
//		해당 페이지에서는 이러한 속성이 없기 떄문에 null 반환(null은 문자열로는 다운캐스팅 불가능 => NullPointer)
// 		int age = (Integer)request.getAttribute("나이"); //NullPointer
// 		out.print("request : "+age+"<br>");
		
		//이를  열었던 브라우저를 끄고 새로운 브라우저에서 열면 session : null이 출력될 것(세션 종료)
		String[] hobby = (String[])session.getAttribute("취미");
		out.print("session : "+Arrays.toString(hobby)+"<br>");
		
		String db = (String)application.getAttribute("디비");
		out.print("application : "+db+"<br>");
	%>
</body>
</html>