<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 정보 수정 페이지</title>
</head>
<body>
	<form action="update.jsp" method="post">
		<fieldset>
			<legend>영화 정보 수정</legend>
			ID : <input type="number" name="id" value="${movie.id }" readonly="readonly"/>
			제목 : <input type="text" name="title" value="${movie.title }"/><br>
			원제 : <input type="text" name="titleEng" value="${movie.titleEng }"/><br>
			감독 : <input type="text" name="director" value="${movie.director }"/><br>
			페이즈 : 
			<select name="phase" id="phase"> <%-- 원래값으로 설정 어떻게? --%>
				<option value="페이즈 1">페이즈 1</option>
				<option value="페이즈 2">페이즈 2</option>
				<option value="페이즈 3">페이즈 3</option>
			</select><br>
			상태 : 
			<select name="state" id="state">
				<option value="개봉">개봉</option>
				<option value="미개봉">미개봉</option>
			</select><br>
			개봉년도 : <input type="number" name="releaseDate" value="${movie.releaseDate }"/>
			<input type="submit" value="수정"/>
		</fieldset>
	</form>
</body>
</html>