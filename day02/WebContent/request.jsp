<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%-- trimDirectiveWhitespaces : browser의 page source 최상단의 한 줄 공백(자바코드가 들어갈 것을 염려해 존재)을 제거해줌 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request.jsp</title>
</head>
<body>
	<h3>request 객체</h3>
	웹 브라우저의 요청정보를 서버에게 전달하는 역할
	<ol>
		<li>client와 관련된 정보를 읽을 수 있다.</li>
		<li>server와 관련된 정보를 읽을 수 있다.</li>
		<li>client의 요청 매개변수를 읽을 수 있다.</li>
		<li>요청 header와 cookie(client의 browser에 저장)를 가진다.</li>	
	</ol>
	<ul>
		<li>클라이언트의 IP = <%= request.getRemoteAddr() %></li>
		<%-- IP주소를 가져옴 cf.localhost = 127.0.0.1 = 0:0:0:0:0:0:0:1--%>
		<li>요청 인코딩  = <%= request.getCharacterEncoding() %></li>
		<%-- 아직 아무 셋팅이 안되어 있을 경우 null이 출력 --%>
		<li>요청 파라미터 = <%= request.getParameterNames() %></li>
		<%-- Names(파라미터의 key들)을 Collection 형태로 가져옴 --%>
		<li>서버 이름 = <%= request.getServerName() %></li>
		<li>서버 포트 = <%= request.getServerPort() %></li>
	</ul>
</body>
</html>