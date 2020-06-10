<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 정보 삽입 페이지</title>
</head>
<body>
	<form action="insert.jsp" method="post"> <%-- insert.jsp와 맵핑되는 class파일(MovieInsertController.java와 연결 --%>
		id : <input type="text" name="id" placeholder="id"/><br>
		제목 : <input type="text" name="title" placeholder="제목"/><br>
		원제 : <input type="text" name="titleEng" placeholder="원제"/><br>
		감독 : <input type="text" name="director" placeholder="감독"/><br>
		페이즈 : 
		<select name="phase" id="phase">
			<option value="페이즈 1">페이즈 1</option>
			<option value="페이즈 2">페이즈 2</option>
		</select><br>
		상태 : 
		<select name="state" id="state">
			<option value="개봉">개봉</option>
			<option value="미개봉">미개봉</option>
		</select><br>
		개봉년도 : <input type="number" name="releaseDate"/>
		<input type="submit" value="삽입"/>
	</form>
</body>
</html>