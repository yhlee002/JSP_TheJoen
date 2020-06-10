<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06showView.jsp</title>
</head>
<body>
	<h3><%= (String)request.getAttribute("name")%>학생의 성적</h3>
	국어 : <%= (Integer)request.getAttribute("kor") %><br>
	영어 : <%= (Integer)request.getAttribute("eng") %>점<br>
	수학 : <%= (Integer)request.getAttribute("math") %>점<br>
	사회 : <%= (Integer)request.getAttribute("soc") %>점<br>
	과학 : <%= (Integer)request.getAttribute("sci") %>점<br>
	총점 : <%= (Integer)request.getAttribute("sum") %>점, 평균 : <%= (Integer)request.getAttribute("avg") %>점
</body>
</html>