<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ex04data.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04score.jsp</title>
</head>
<body>
	<h3><%= name %>학생의 점수</h3>
	국어 : <%= kor %>점<br>
	영어 : <%= eng %>점<br>
	수학 : <%= math %>점<br>
	사회 : <%= soc %>점<br>
	과학 : <%= sci %>점<br>
	총점 : <%= sum %>점, 평균 : <%= avg %>점
	
	
</body>
</html>