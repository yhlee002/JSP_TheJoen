<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="day05Ex.marvel.MyConnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	int id = Integer.parseInt(request.getParameter("id"));
	String title = request.getParameter("title");
	String title_eng = request.getParameter("title_eng");
	String director = request.getParameter("director");
	String phase = request.getParameter("phase");
	String state = request.getParameter("state");
	String release_date = request.getParameter("release_date");
	
	System.out.println(id+", "+title+", "+title_eng+", "+director+", "+phase+", "+state+", "+release_date);
	
	String result = "<h3>수정 완료</h3>";
	int r = 0;
	String sql = "update marvel_movie set title=?, title_eng=?, director=?, phase=?, state=?, release_date=?, u_date=? where id=?";
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		pst.setString(1, title);
		pst.setString(2, title_eng);
		pst.setString(3, director);
		pst.setString(4, phase);
		pst.setString(5, state);
		pst.setString(6, release_date);
		pst.setTimestamp(7, Timestamp.valueOf(LocalDateTime.now()));
		pst.setInt(8, id);
		
		
		r = pst.executeUpdate();
		if(r <= 0){
			result = "<h3>수정 실패</h3>";
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateProc.jsp</title>
</head>
<body>
	<%= result %>
	<a href="marvelMovieList.jsp">목록 보기</a>
</body>
</html>