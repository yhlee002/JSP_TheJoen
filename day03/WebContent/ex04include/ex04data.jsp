<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	int kor = request.getParameter("kor").equals("")? 0 : Integer.parseInt(request.getParameter("kor"));
	int eng = request.getParameter("eng").equals("")? 0 : Integer.parseInt(request.getParameter("eng"));
	int math = request.getParameter("math").equals("")? 0 : Integer.parseInt(request.getParameter("math"));
	int soc = request.getParameter("soc").equals("")? 0 : Integer.parseInt(request.getParameter("soc"));
	int sci = request.getParameter("sci").equals("")? 0 : Integer.parseInt(request.getParameter("sci"));
	int sum = (kor+eng+math+soc+sci);
	int avg = sum/5;
%>