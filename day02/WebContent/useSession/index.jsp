<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<%--세션을 체크해서 userId라는 객체가 있다면 로그인 된 화면을 보여주고 아니라면 로그인  정보를 입력할 수 있게 보여주는 화면--%>
<%String userId = (String)session.getAttribute("userId");
if(userId == null){%> <%-- null이 문자열이 아닌 객체기 때문에 equals메소드가 아닌 '=='사용 --%>
	<form action="loginProc.jsp">
		아이디 : <input type="text" name="userId"/><br>
		비밀번호 : <input type="password" name="password"/><br>
		<input type="submit" value="제출"/>
	</form>
<% }else{ %>
<p>로그인 되었습니다.</p>
<% } %>
</body>
</html>