<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	int age = request.getParameter("age").equals("")? 0 : Integer.parseInt(request.getParameter("age"));
	int salary = request.getParameter("salary").equals("")? 0 : Integer.parseInt(request.getParameter("salary"));

%>