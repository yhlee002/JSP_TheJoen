<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inputCar.jsp</title>
</head>
<body>
<!-- get방식은 헤더로, post방식은 바디로 보냄 -->
	<form action="proc01.jsp" method="post">
		색상 : <input type="text" name="color" placeholder="color"/>
		차종(모델) : <input type="text" name="model" placeholder="model"/>
		스피드 : <input type="text" name="speed" placeholder="speed"/>
		<input type="submit" value="입력"/>
	</form>
</body>
</html>