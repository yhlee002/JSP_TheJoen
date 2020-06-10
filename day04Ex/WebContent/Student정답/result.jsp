<%@page import="day04Ex.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보, 성적 출력 화면</title>
</head>
<body>
<%-- process.jsp가 아닌 result.jsp에서 총합을 구할 때
	<c:set var="korSum" value="0"/>
	<c:set var="mathSum" value="0"/>
	<c:set var="computerSum" value="0"/>
--%>
	<c:forEach var="student" items="${studentList}">
		<b>이름</b> : ${student.name}<br>
		<b>나이</b> : ${student.age}<br>
		<b>생일 </b>: ${student.birthDate}<br>
		<b>주소</b> : ${student.address}<br>
		<b>성적 </b>
		국어 : ${student.score.kor}, 수학 : ${student.score.math},
		컴퓨터 : ${student.score.computer}<br>
		<c:set var="korSum" value="${korSum + student.score.kor}"/>
		<c:set var="mathSum" value="${mathSum + student.score.math}"/>
		<c:set var="computerSum" value="${computerSum + student.score.computer}"/>
		<hr>
	</c:forEach>
	<!-- 
	세 학생의 국어 총점 : ${korSum}<br>
	세 학생의 수학 총점 : ${mathSum}<br>
	세 학생의 컴퓨터  총점 : ${computerSum}<br>
	 -->
	 국어 총점 : ${subjectMap.korSum}
	 수학 총점 : ${subjectMap.mathSum}
	 컴퓨터 총점 : ${subjectMap.computerSum}
	<hr>
	<!-- 
	세 학생의 국어 평균 : ${Math.floor((korSum/3)*100)/100}<br>
	세 학생의 수학 평균 : ${Math.floor((mathSum/3)*100)/100}<br>
	세 학생의 컴퓨터 평균 : ${Math.floor((computerSum/3)*100)/100}<br>
	 -->
	 국어 평균 : ${subjectMap.korSum/studentList.size() }<br>
	 수학 평균 : ${subjectMap.mathSum/studentList.size() }<br>
	 컴퓨터  평균 : ${subjectMap.computerSum/studentList.size() }<br>
</body>
</html>