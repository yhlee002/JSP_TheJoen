<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String animal = request.getParameter("animal");
	if(animal.equals("cat")){
		response.sendRedirect("catImage.jsp");
	}else if(animal.equals("fish")){
		response.sendRedirect("fishImage.jsp");
	}else{
		response.sendRedirect("dogImage.jsp");
	}
%>