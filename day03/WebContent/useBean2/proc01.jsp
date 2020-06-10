<%@page import="day03.Car"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글의 경우 post 방식의 글씨가 깨지는 것을 막기위해 인코딩을 따로 해줘야 한다.(request를 가져올 때 써줘야함)
	request.setCharacterEncoding("UTF-8");
	
%>
<%-- 
	useBean은 해당되는 객체를 생성하고, 그 객체를 page, request, session 등의 기본객체의 속성으로 담는다.
	<jsp:useBean id="속성으로 설정할 객체" class="객체의 클래스 패키지" scope="이 객체를 속성으로 담을 객체"></jsp:useBean>
	
	id : 사용할 객체명
	class : 해당 클래스가 있는 위치(패키지명 + 클래스명)
	scope : 기본객체의 종류(이 기본객체의 속성으로 들어감)
 --%>
<jsp:useBean id="car" class="day03.Car" scope="request"/>
<jsp:setProperty property="color" name="car" value='<%=request.getParameter("color") %>'/>
<jsp:setProperty property="model" name="car" value='<%=request.getParameter("model") %>'/>
<jsp:setProperty property="speed" name="car" value='<%=Integer.parseInt(request.getParameter("speed")) %>'/>
<jsp:forward page="showCar01.jsp"/>