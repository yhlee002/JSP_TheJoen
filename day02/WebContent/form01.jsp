<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form02.jsp</title>
</head>
<body>
	<h3>여러가지 타입의  파라미터 받아보기</h3>
	<form action="paramInfo01.jsp"> <!-- method는 default값이 get -->
		<input type="number" name="num1" placeholder="숫자1"/>
		<input type="number" name="num2" placeholder="숫자2"/>
		<input type="number" name="num3" placeholder="숫자3"/>
		<hr>
		<input type="number" name="num4" placeholder="숫자4-1"/>
		<input type="number" name="num4" placeholder="숫자4-2"/>
		<br>
		날짜 : <input type="date" name="date"/>
		<br>
		<fieldset>
		<legend>체크 박스</legend>
		<label>참돔 <input type="checkbox" name="fish" value="참돔"/></label>
		<label>줄돔 <input type="checkbox" name="fish" value="줄돔"/></label>
		<label>감성돔 <input type="checkbox" name="fish" value="감성돔"/></label>
		</fieldset>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>