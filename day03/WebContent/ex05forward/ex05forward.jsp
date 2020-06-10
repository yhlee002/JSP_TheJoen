<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05forward.jsp</title>
</head>
<body>
	<h3>forward</h3>
	페이지의 이동에 사용<br>
	페이지의 요청(request)를 전달해서 페이지를 전환하는 방식(&lt;-&gt; redirect는 페이지에 페이지 전환 요청을 하도록 명령)<br>
	ex05A.jsp 에서 ex05B.jsp로 redirect를 하면  요청이 총 2번 발생(B에 대한 요청)<br>
	이때, A에서 받은 request와 B에서 받은 request는 다르다.<br>
	<br>
	ex05C.jsp 에서 ex05D.jsp로 forward를 하면<br>
	요청은 C로 가지만 페이지는 D가 보임<br>
	이때, C에서 D로 요청을 전달한다.(request 객체)<br>
	C에서 받은 request와 D에서 받은 request는 같다.<br>
</body>
</html>