<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form.jsp</title>
</head>
<body>
	<form action="paramInfo.jsp" method ="get">
		<input type="text" name="name" placeholder="이름을 입력하세요.">
		<input type="text" name="address" placeholder="주소를 입력하세요.">
		<fieldset>
			<label>남 : <input type="radio" name="sex" value="m"></label>
			<label>여 : <input type="radio" name="sex" value="w"></label>
			<label>그 외 : <input type="radio" name="sex" value="o"></label>
		</fieldset>
		<input type="submit" value="전송">
	</form>
</body>
</html>