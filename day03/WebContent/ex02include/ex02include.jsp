<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
다른 방식의 include
디렉티브(&lt;%@ %&gt;)를 이용한 방식
<%--
	<%@include file="파일위치" %>
--%>
디렉티브 방식은 파일 자체를 포함해서 컴파일(변수를 공유해야한다면 이 방식을 쓰는 것이 좋음)
변수만을 담는 jsp을 따로 만들어서 사용하는 것도 가능
</pre>
	<form action="ex02LoginProc.jsp">
		아이디 : <input type="text" name="id"/><br>
		비밀번호 : <input type="text" name="password"/><br>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>