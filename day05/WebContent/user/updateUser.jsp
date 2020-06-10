<%@page import="day05.user.MyConnector"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="day05.user.UserDto" scope="request"/>
<jsp:setProperty property="*" name="user"/>

<%
	user.setBirthDate(LocalDate.parse(request.getParameter("birth")));



	String sql = "update user set user_id=?, password=?, name=?, phone=?, "
			+"address=?, birth_date=?, point=? where id=?";
	
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
		pst.setInt(8, user.getId());
		
		result = pst.executeUpdate();
	}catch(SQLException e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과 화면</title>
</head>
<body>
	<%if(result > 0) {%>
	<h3>수정 완료</h3>
	<%}else{ %>
	<h3>수정 실패</h3>
	<%} %>
	<a href="showUserList.jsp">목록 보기</a>
	
	
</body>
</html>