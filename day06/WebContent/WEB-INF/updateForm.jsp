<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 수정</title>
<style>
	input[name="messageName"]{margin-bottom:10px;}
</style>
</head>
<body>
	<form action="update.jsp" method="post">
		<fieldset>
			<legend>방명록 수정</legend>
				<input type="hidden" name="messageId" value="${message.messageId }"/>
				<input type="text" name="guestName" value="${message.guestName }"/>
				<input type="text" name="wdate" value="${message.wdate}" readonly="readonly"/>
				<input type="submit" value="수정"/><br>
				<textarea rows="5" cols="48" name="message">${message.message }</textarea>
		</fieldset>
	</form>
</body>
</html>