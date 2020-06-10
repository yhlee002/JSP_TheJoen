<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="day03.Student" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <jsp:getProperty property="name" name="student"/><br>
	나이 : <jsp:getProperty property="age" name="student"/><br>
	국어 : <jsp:getProperty property="kor" name="student"/><br>
	영어 : <jsp:getProperty property="eng" name="student"/><br>
	수학 : <jsp:getProperty property="math" name="student"/><br>
	생일 : <jsp:getProperty property="birthDate" name="student"/>
</body>
</html>