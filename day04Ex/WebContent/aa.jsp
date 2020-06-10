<%@page import="day04Ex.Score"%>
<%@page import="day04Ex.Student"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:useBean id="student" class="day04Ex.Student" scope="request"/>
<jsp:setProperty property="name" name="student" value="${param.name}"/>
<jsp:setProperty property="age" name="student" value="${param.age}"/>
<jsp:setProperty property="birthDate" name="student" value='<%=LocalDate.parse(request.getParameter("birthD"))%>'/>
<jsp:setProperty property="address" name="student" value="${param.address}"/>

<jsp:useBean id="score" class="day04Ex.Score" scope="request"/>
<jsp:setProperty property="kor" name="score" value="${param.kor}"/>
<jsp:setProperty property="math" name="score" value="${param.math}"/>
<jsp:setProperty property="computer" name="score" value="${param.computer}"/>


<jsp:setProperty property="score" name="student" value="${score}"/>

<%
	/*
	Score score = new Score();
	score.setKor(Integer.parseInt(request.getParameter("kor")));
	score.setKor(Integer.parseInt(request.getParameter("math")));
	score.setKor(Integer.parseInt(request.getParameter("computer")));
	

	Student student = new Student();
	student.setName(request.getParameter("name"));
	student.setAge(Integer.parseInt(request.getParameter("age")));
	student.setScore(score);
	student.setBirthDate(LocalDate.parse(request.getParameter("birthD")));
	student.setAddress(request.getParameter("address"));
	*/
	
	ArrayList<Student> studentList;
	if(session.getAttribute("studentList")==null){
		studentList = new ArrayList<Student>();
		session.setAttribute("studentList", studentList);
		studentList.add(student);
	}else{
		studentList = (ArrayList<Student>)session.getAttribute("studentList");
		studentList.add(student);
	}

	
	
	response.sendRedirect("InputStudent.jsp");
%>


