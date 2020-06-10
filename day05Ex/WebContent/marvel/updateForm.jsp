<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="day05Ex.marvel.MovieDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="day05Ex.marvel.MyConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	int id = Integer.parseInt(request.getParameter("id"));
		MovieDto movie = null;
		
	String sql = "select id, title, title_eng, director, phase, state,"
			+" release_date, reg_date, u_date from marvel_movie where id=?";
		
	try(Connection conn = MyConnector.getConnection();
		PreparedStatement pst = conn.prepareStatement(sql)){
		
		pst.setInt(1, id);

		try(ResultSet rs = pst.executeQuery()){
			ArrayList<MovieDto> movieList = new ArrayList<>();
		
			while(rs.next()){
				movie = new MovieDto(
					rs.getInt("id"), 
					rs.getString("title"), 
					rs.getString("title_eng"), 
					rs.getString("director"), 
					rs.getString("phase"), 
					rs.getString("state"),
					rs.getInt("release_date"), 
					rs.getTimestamp("reg_date")== null ? LocalDateTime.now() : rs.getTimestamp("reg_date").toLocalDateTime(), 
					rs.getTimestamp("u_date") == null ? LocalDateTime.now() : rs.getTimestamp("u_date").toLocalDateTime());
			}
		
		}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateForm.jsp</title>
</head>
<body>
	<form action="updateProc.jsp" method="post">
		<div>
			<label for="id">id</label>
			<input type="text" id="id"name="id" value="<%= id %>" readonly="readonly"/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" id="title" name="title" value="<%= movie.getTitle() %>"/>
		</div>
		<div>
			<label for="title_eng">원제</label>
			<input type="text" id="title_eng" name="title_eng" value="<%= movie.getTitle_eng() %>"/>
		</div>
		<div>
			<label for="director">감독</label>
			<input type="text" id="director" name="director" value="<%= movie.getDirector() %>"/>
		</div>
		<div>
			<label for="phase">페이즈</label>
			<input type="text" id="phase" name="phase" value="<%= movie.getPhase() %>"/>
		</div>
		<div>
			<label for="state">상태</label>
			<input type="text" id="state" name="state" value="<%= movie.getState() %>"/>
		</div>
		<div>
			<label for="release_date">개봉일</label>
			<input type="text" id="release_date" name="release_date" value="<%= movie.getRelease_date() %>"/>
		</div>
		<button>입력</button>
	</form>
</body>
</html>