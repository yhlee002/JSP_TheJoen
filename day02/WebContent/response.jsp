<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response.jsp</title>
</head>
<body>
	<h3>response 객체</h3>
	 : 웹 브라우저에 응답 정보를 담아서 보내는 역할<br>
	◈ header정보, cookie사용, redirect 기능<br>
	
	◈ response는 header에 cookie 관련된 정보를 설정할 수 있다.<br>
	◈ response.setHeader("Cache-Controller", "no-cache") : 헤더 정보 설정(캐시를 저장하지 않게 설정)<br>
	
	◈ redirect : 브라우저에게 해당 페이지를 다시 요청할 것을 명령하는 것(HTML의 a와 비슷한 역할)<br>
	&nbsp;*sendRedirect("url")을 사용할 경우, 서버가 클라이언트(브라우저)에게 해당 페이지를 <br>
	다시 요청하라고 응답하게 되고,클라이언트가 서버에 다시 해당 주소를 요청하는 과정이 이루어짐<br>
	◈ response.sendRedirect("이동할 페이지 주소");<br>
	
	◈ 만약 로그인을 할 경우 잘못 입력했을 경우 script태그 내에 잘못됐음을 알려주는 경고창(alert())와 <br>
	location.href="해당 페이지 url"을 통해	 다시 해당 페이지로 돌아가게(새로고침) 할 수 있다.
</body>
</html>