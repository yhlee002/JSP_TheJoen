<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 추가 화면</title>
</head>
<body>
	<form action="insertProc.jsp" method="post">
		<div>
			<label for="title">제목</label>
			<input type="text" id="title" name="title"/>
		</div>
		<div>
			<label for="titleEng">원제</label>
			<input type="text" id="title_eng" name="titleEng""/>
		</div>
		<div>
			<label for="director">감독</label>
			<input type="text" id="director" name="director"/>
		</div>
		<div>
			<label for="phase">페이즈</label>
			<input type="text" id="phase" name="phase"/>
		</div>
		<div>
			<label for="state">상태</label>
			<input type="text" id="state" name="state"/>
		</div>
		<div>
			<label for="releaseDate">개봉</label>
			<input type="text" id="releaseDate" name="releaseDate"/>
		</div>
		<button>입력</button>
	</form>
</body>
</html>