<%@page import="java.time.LocalDate"%>
<%@page import="day03.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="day03.Student" scope="request"/>
<jsp:setProperty property="*" name="student"/>
<jsp:setProperty property="birthDate" name="student" value='<%=LocalDate.parse(request.getParameter("birthD"))%>'/>
<jsp:forward page="showStudent.jsp"/>