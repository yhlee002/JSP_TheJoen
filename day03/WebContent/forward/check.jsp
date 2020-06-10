<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//숫자가 5보다 작거나 같으면 a.jsp페이지로 이동, 5보다 크면 b.jsp페이지로 이동
	//a.jsp와 b.jsp는 입력된 숫자를 출력해준다.
	
	int num = request.getParameter("number").equals("")? 0 : Integer.parseInt(request.getParameter("number"));
	if(num <= 5){
		request.setAttribute("result", "under");
		%>
		<jsp:forward page="a.jsp"></jsp:forward>
		<!-- 
			값을 입력후 전송하면, 'http://localhost:8080/day03/forward/check.jsp?number=입력값'과 같이
			check.jsp url이  확인되지만 실제로 보여지는 화면은 a.jsp 혹은 b.jsp(즉, forward는 보여지는 페이지를 설정하는 것)
		 -->
		<%		
	}else{
		request.setAttribute("result", "over");
		%>
		<jsp:forward page="b.jsp"></jsp:forward>
		<%	
	}

%>