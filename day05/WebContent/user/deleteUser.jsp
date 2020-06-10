<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="day05.user.MyConnector"%>
<%@page import="com.mysql.cj.MysqlConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	String sql = "delete from user where id=?";
	
	String result = "<h3>삭제 성공</h3>";
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		
		pst.setInt(1, id);
		
		pst.executeUpdate();
	}catch(SQLException e){
		//out.print("<h3>삭제 실패!</h3>");
		result = "<h3>삭제 실패!</h3>";
		e.printStackTrace();
	}catch(Exception e){
		//out.print("<h3>삭제 실패!</h3>");
		result = "<h3>삭제 실패!</h3>";
		e.printStackTrace();
	}
	request.setAttribute("result", result); //body에서 출력되게끔

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 결과 페이지</title>
</head>
<body>
	${result }
	<a href="showUserList.jsp">목록보기</a>
</body>
</html>