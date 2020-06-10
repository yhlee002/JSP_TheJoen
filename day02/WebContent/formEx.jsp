<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{line-height:30px;}
</style>
</head>
<body>
	<form action="formEx_out.jsp">
		<input type="text" name="name" placeholder="이름을 입력하세요."/><br>
		<input type="text" name="age" placeholder="나이를 입력하세요."/><br>
		<input type="text" name="address" placeholder="주소를  입력하세요."/><br>
		<input type="text" name="email" placeholder="이메일을 입력하세요."/><br>
		<input type="date" name="birthDate"/>
		<fieldset>
			<label>남 : <input type="radio" name="sex" value="m"/></label>
			<label>여 : <input type="radio" name="sex" value="w"/></label>
		</fieldset>
		<select name="lunchMenu">
			<option value="돈까스">돈까스</option>
			<option value="마늘보쌈">마늘보쌈</option>
			<option value="김치찌개">김치찌개</option>
		</select>
		<input type="submit" value="제출"/>
	</form>
</body>
</html>