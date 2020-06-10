<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전달받은 파라미터(id, password)를 사용하려면 request객체를 이용해서 직접 받아 써야 한다.
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>

<div>
	환영합니다: <%= id %>님<br>
	비번 : <%= password %>
</div>