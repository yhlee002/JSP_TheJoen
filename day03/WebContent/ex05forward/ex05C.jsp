<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
System.out.println("ex05C.jsp");
System.out.println(request.getParameter("id"));
request.setAttribute("id", "groot");
System.out.println(request.getAttribute("id"));
%>

<jsp:forward page="ex05D.jsp"></jsp:forward>
<!-- 액션 태그는 스크립트릿 안에서 사용X -->
<!-- forward는 request를 그대로 전달 -->