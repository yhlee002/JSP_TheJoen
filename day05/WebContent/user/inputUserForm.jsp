<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inputUserForm.jsp</title>
</head>
<body>
	<form action="insertUser.jsp" metho="post">
		<div>
			<input id="id" type="text" name="id"/>
		</div>
		<div>
		
		<label for="userId">유저 아이디</label>
		<input id="userId" type="text" name="userId"/>
		</div>
		<div>
		<label for="password">비밀번호</label>
		<input id="password" type="text" name="password"/>
		</div>
		<div>
		<label for="name">이름</label>
		<input id="name" type="text" name="name"/>
		</div>
		<div>
		<label for="phone">phone</label>
		<input id="phone" type="text" name="phone"/>
		</div>
		<div>
		<label for="address">주소</label>
		<input id="address" type="text" name="address"/>
		</div>
		<div>
		<label for="birth">생일</label>
		<input name="birth" type="date" name="birth"/>
		</div>
		<div>
		<label for="point">point</label>
		<input id="point" type="text" name="point"/>
		</div>
		<input type="submit" value="유저 수정"/>
	</form>
</body>
</html>