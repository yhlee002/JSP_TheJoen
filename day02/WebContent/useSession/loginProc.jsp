<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String userId = "xxxoxxo002";
	String password = "33955304";
	
	String userIdInput = request.getParameter("userId");
	String passwordInput = request.getParameter("password");
	if(userId.equals(userIdInput) && password.equals(passwordInput)){
		//입력된 아이디가 정해둔 아이디와 같으면 세션을 생성시켜준다.
		session.setAttribute("userId", "xxxoxxo002"); 
		/*
			세션이 생성된 채로 로그인 페이지로 돌아가면 로그인 페이지에서는 세션 속성을 가져와 변수로 삼고(getAttribute),
			이것이 null이 아니라면(해당 아이디로 세션이 생성됐다면 로그인 되었다는 메세지를 출력하게 된다.)
		*/
	}
	response.sendRedirect("index.jsp"); //Return처럼 여기서 바로 페이지를 이동하는  것이 아님. 이보다 아래에 있는 코드도 전부 읽음
	System.out.println("로그인 시도");
%>
