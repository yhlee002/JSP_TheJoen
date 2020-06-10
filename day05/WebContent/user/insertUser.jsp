<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>
<%@page import="day05.user.MyConnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<%-- post로 넘어온 값 인코딩 --%>
	<%request.setCharacterEncoding("utf-8");%>

	<%-- user 객체 생성 후 파라미터 값 넣음 --%>
<jsp:useBean id="user" class="day05.user.UserDto" scope="request"/>
<jsp:setProperty property="*" name="user"/>

<%-- 자동 형변환이 안되는 birth만 따로 값을 넣어줌 --%>
<% user.setBirthDate(LocalDate.parse(request.getParameter("birth"))); %>

<%-- 객체로 만든 user 정보를 DB에 삽입 --%>
<%
	String sql = "insert into user(user_id, password, name, phone, address, birth_date, point, reg_date) values(?, ?, ?, ?, ?, ?, ?, now())";
	int result = 0;
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		pst.setString(1, user.getUserId());
		pst.setString(2, user.getPassword());
		pst.setString(3, user.getName());
		pst.setString(4, user.getPhone());
		pst.setString(5, user.getAddress());
		pst.setDate(6, Date.valueOf(user.getBirthDate()));
		pst.setInt(7, user.getPoint());
		
		result = pst.executeUpdate();
	}catch(SQLException e){
		e.printStackTrace();
	}catch(Exception e){
		e.printStackTrace();
	}
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입 결과 화면</title>
</head>
<body>
	<%if(result > 0){ %>
	<h3>유저 등록 완료</h3>
	<%}else{ %>
	<h3>유저 등록 실패</h3>
	<%} %>
	<a href="inputUserForm.jsp">입력창으로 돌아가기</a>
	<a href="showUserList.jsp">목록보기</a>
</body>
</html>