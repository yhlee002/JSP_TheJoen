<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//아무거나 체크박스로 메뉴 5개, 숫자 입력창 2개, 두수의 합, 곱, 차 , 나누기 출력, 년월일 입력받아서 해당날의 10일 후 출력
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form01Ex.jsp</title>
</head>
<body>
	<form action="param01Ex.jsp">
		<fieldset>
			<label>김밥<input type="checkbox" name="menu" value="김밥"/></label>
			<label>우동<input type="checkbox" name="menu" value="우동"/></label>
			<label>돈까스<input type="checkbox" name="menu" value="돈까스"/></label>
			<label>갈비만두<input type="checkbox" name="menu" value="갈비만두"/></label>
			<label>치즈라면<input type="checkbox" name="menu" value="치즈라면"/></label>
		</fieldset>
		<fieldset>
			<input type="text" name="num1" placeholder="첫번째 수">
			<input type="text" name="num2" placeholder="두번째 수"/>
		</fieldset>
		<fieldset>
			<input type="date" name="date"/>
		</fieldset>
		
		
		<input type="submit" value="제출"/>
	</form>
</body>
</html>