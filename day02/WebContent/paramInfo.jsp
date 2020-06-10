<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//이 페이지는 매개변수를 받지 않고 url만 알아도 접근 가능	

	//request라는 객체를 이용해서 파라미터(name은 곧 속성명 name을 의미)를 전달받는다.
	//request.getParameter(html의 name 속성명);
	//request.getParameter()의 return값은 언제나 String형태이므로 다른 자료형의 값이  들어올 떄는 변환 필요
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String sex = request.getParameter("sex");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paramInfo.jsp</title>
</head>
<body>
 Hello
 <p>이름 : <%= name %></p>
 <p>주소 : <%= address %></p>
 <p>성별 : <%= sex %></p>
</body>
</html>