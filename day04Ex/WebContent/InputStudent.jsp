<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InputStudent.jsp</title>
<style>
body{line-height:30px;}
</style>
<script>
	
</script>
</head>
<body>
	<form action="aa.jsp"> <%-- showStudent.jsp --%>
		<strong>학생 정보 입력</strong><br>
		<label for="name">이름</label> : <input type="text" id="name" name="name"/><br>
		<label for="age">나이</label> : <input type="text" id="age" name="age"/><br>
		<label for="birthD">생일</label> : <input type="date" id="birthD" name="birthD"/><br>
		<label for="address">주소</label> : <input type="text" id="address" name="address"/><br>
		<strong>학생 성적 입력</strong><br>
		<label for="kor">국어</label> : <input type="text" id="kor" name="kor"/><br>
		<label for="math">수학</label> : <input type="text" id="math" name="math"/><br>
		<label for="computer">컴퓨터</label> : <input type="text" id="computer" name="computer"/><br>
		<input type="submit" value="제출"/>
		<a href="showStudent.jsp"><input type="button" name="출력" value="출력"/></a>
	</form>
	
</body>
</html>