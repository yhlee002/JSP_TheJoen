<%@page import="java.util.ArrayList"%>
<%@page import="day04Ex.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	ArrayList<Student> stList = (ArrayList<Student>)session.getAttribute("studentList");
	int kor01 = stList.get(0).getScore().getKor();
	int kor02 = stList.get(1).getScore().getKor();
	int kor03 = stList.get(2).getScore().getKor();
	
	int math01 = stList.get(0).getScore().getMath();
	int math02 = stList.get(1).getScore().getMath();
	int math03 = stList.get(2).getScore().getMath();
	
	int computer01 = stList.get(0).getScore().getComputer();
	int computer02 = stList.get(1).getScore().getComputer();
	int computer03 = stList.get(2).getScore().getComputer();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 출력 페이지</title>
</head>
<body>
	<%--
	for(int i = 0 ; i < stList.size(); i++){
		out.print(i+"<br>");
		out.print(stList.get(i).getScore().getKor()+"<br>");
		out.print(stList.get(i).getScore().getMath()+"<br>");
		out.print(stList.get(i).getScore().getComputer()+"<br>");
	}
		
	--%>

	<h3>첫번째 학생 정보</h3>
	이름 : <%= stList.get(0).getName() %><br>
	나이 : <%= stList.get(0).getAge() %><br>
	생일 : <%= stList.get(0).getBirthDate() %><br>
	주소 : <%= stList.get(0).getAddress() %><br>
	국어 점수 : <%= stList.get(0).getScore().getKor() %><br>
	수학 점수 : <%= stList.get(0).getScore().getMath() %><br>
	컴퓨터 점수 : <%= stList.get(0).getScore().getComputer() %><br>
	<h3>두번째 학생 정보</h3>
	이름 : <%= stList.get(1).getName() %><br>
	나이 : <%= stList.get(1).getAge() %><br>
	생일 : <%= stList.get(1).getBirthDate() %><br>
	주소 : <%= stList.get(1).getAddress() %><br>
	국어 점수 : <%= stList.get(1).getScore().getKor() %><br>
	수학 점수 : <%= stList.get(1).getScore().getMath() %><br>
	컴퓨터 점수 : <%= stList.get(1).getScore().getComputer() %><br>
	<h3>세번째 학생 정보</h3>
	이름 : <%= stList.get(2).getName() %><br>
	나이 : <%= stList.get(2).getAge() %><br>
	생일 : <%= stList.get(2).getBirthDate() %><br>
	주소 : <%= stList.get(2).getAddress() %><br>
	국어 점수 : <%= stList.get(2).getScore().getKor() %><br>
	수학 점수 : <%= stList.get(2).getScore().getMath() %><br>
	컴퓨터 점수 : <%= stList.get(2).getScore().getComputer() %><br>
	<ul>
		<li>국어 성적 평균 : <%= (kor01 + kor02 + kor03)/3 %></li>
		<li>수학 성적 평균 : <%= (math01 + math02 + math03)/3 %></li>
		<li>컴퓨터 성적 평균 : <%= (computer01 + computer02 + computer03)/3 %></li>
	</ul>
</body>
</html>