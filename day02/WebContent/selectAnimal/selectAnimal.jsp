<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="animalServer.jsp">
		동물 선택
		<select name="animal">
			<option value="cat">cat</option>
			<option value="fish">fish</option>
			<option value="dog">dog</option>
		</select>
		<input type="submit" value="제출"/>
	</form>
</body>
</html>