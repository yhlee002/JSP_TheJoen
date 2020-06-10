<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspObject.jsp</title>
</head>
<body>
	<h3>jsp의 기본 객체</h3>
	<p>Attribute는 서버 내에서 데이터를 주고 받을 떄 사용하고, Parameter는 데이터 입력에 사용된다.<br>
		따라서, form에서 입력된 값은 Attribute으로 가져 올 수 없다.</p>
	<ol>
		<li> request : 요청 객체</li>
		<li> response : 응답 객체</li>
		<li> out : 출력 객체</li>
		<li> pageContext : 페이지의 정보를 담는 객체</li>
		<li> application : 어플리케이션 범위에서 사용되는 객체</li>
		<li> session : 세션 단위에서 사용되는 객체</li>
	</ol>
	<h3>기본 객체의 scope</h3>
	<p>pageContext &lt; request &lt; session &lt; application</p>
	<ol>
		<li>pageContext : page 화면 영역(한 페이지내)에서만 사용된다.</li>
		<li>request : 하나의 요청에 사용된다.(페이지 간의 이동 가능)</li>
		<li>session : 하나의 browser 영역에서 사용된다.(브라우저가 켜져있는 동안 사용 가능)</li>
		<li>application : 하나의 웹 어플 영역에서 사용된다.</li>
	</ol>
	
	<h3>기본 객체(속성)에 데이터를 넣고 꺼내는  방법</h3>
		<ul>
			<li>메소드
				<ul>
					<li>.setAttribute("키", 값);</li>
					<li>.getAttribute("키");</li>
				</ul>
			</li>
		</ul>
	
	<ol>
		<li>pageContext : 페이지 내에서 공유할 값들을  저장한다.</li>
		<li>request : JSP페이지 사이에서 정보를 전달하는데 사용된다.</li>
		<li>session : 주로 로그인 정보, 장바구니 등을 유지할 때 사용된다.</li>
		<li>application : 어플의 설정 정보를 담는다.</li>	
	</ol>
</body>
</html>