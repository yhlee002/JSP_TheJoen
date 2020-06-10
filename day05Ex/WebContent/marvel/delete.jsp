<%@page import="java.sql.PreparedStatement"%>
<%@page import="day05Ex.marvel.MyConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	String result = "<h3>삭제 성공</h3>";
	int r = 0;
	String sql = "delete from marvel_movie where id=?";
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		pst.setInt(1, id);
		
		r = pst.executeUpdate();
		if(r <= 0){
			result = "<h3>삭제 실패</h3>";
		}
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= result %>
	<a href="marvelMovieList.jsp">목록 보기</a>
</body>
</html>