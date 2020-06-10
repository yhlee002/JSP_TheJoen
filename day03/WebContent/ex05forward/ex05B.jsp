<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//ex05B.jsp 에서의 request 객체
	System.out.println("ex05B.jsp");
	System.out.println(request); //org.apache.catalina.connector.RequestFacade@b408db
	System.out.println(request.getParameter("id"));
	System.out.println(request.getAttribute("id")); 
%>