<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//ex05A.jsp 에서의 request 객체
	System.out.println("ex05A.jsp");
	System.out.println(request); 
	System.out.println(request.getParameter("id")); 
	//http://localhost:8080/day03/ex05forward/ex05A.jsp?id=10 과 같이 파라미터를 줬을 경우 A의 id는 10이 출력되나,
	//ex05B.jsp의 id파라미터는 null이 나옴(둘은 상이)
	request.setAttribute("id", "groot");
	System.out.println("id에 groot를 넣은 후 : "+request.getAttribute("id")); 
	response.sendRedirect("ex05B.jsp");

%>