<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
System.out.println("ex05D.jsp");
System.out.println(request.getParameter("id"));
//request.setAttribute("id", "groot");
System.out.println(request.getAttribute("id"));
%>