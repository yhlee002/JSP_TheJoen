<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//logProc.jsp
	
	//임의의 id,password
	String dbUserId = "groot";
	String dbPassword = "test123";
	
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	
	if(dbUserId.equals(userId) && dbPassword.equals(password)){
		//로그인 성공
		response.sendRedirect("success.jsp");
	}else{
		//로그인 실패
		response.sendRedirect("fail.jsp");
	}
%>