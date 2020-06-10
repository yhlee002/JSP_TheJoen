<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actionTag.jsp</title>
</head>
<body>
	<h3>jsp  action태그</h3>
	<ul>
		<li>action 태그는 xml문법 규칙을 따르는 jsp 자체 태그</li>
		<%-- 
			형태 : <jsp : 태그명>
		 --%>
		 <li>다른 페이지를 이 페이지에 포함하는 태그</li>
	 </ul>
	 <jsp:include page="includePage.jsp"></jsp:include> <!-- 해당 페이지가 없음을 컴파일 단계에서  알려줌 -->
</body>
</html>