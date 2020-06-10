<%@page import="day05Ex.marvel.MyConnector"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day05Ex.marvel.MovieDto"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%	
	MovieDto movie = null;
	try(Connection conn = MyConnector.getConnection();
			Statement st = conn.createStatement()){
		System.out.println(conn+" //연결 성공");
		
		String sql = "select id, title, title_eng, director, phase, state,"
		+" release_date, reg_date, u_date from marvel_movie";
		
		try(ResultSet rs = st.executeQuery(sql)){
			
			ArrayList<MovieDto> movieList = new ArrayList<>();
			
			while(rs.next()){
				movie = new MovieDto(rs.getInt("id"), 
						rs.getString("title"), 
						rs.getString("title_eng"), 
						rs.getString("director"), 
						rs.getString("phase"), 
						rs.getString("state"),
						rs.getInt("release_date"), 
						rs.getTimestamp("reg_date")== null ? LocalDateTime.now() : rs.getTimestamp("reg_date").toLocalDateTime(), 
						rs.getTimestamp("u_date") == null ? LocalDateTime.now() : rs.getTimestamp("u_date").toLocalDateTime());
				
						movieList.add(movie);
			}
			
			request.setAttribute("movieList", movieList);
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Marvel Movie List</title>
<style>
	a{color:black; text-decoration:none;}
	table{border-collapse: collapse;}
	thead>tr{background: #e85255;}
	th, td{text-align:center; padding-right:15px; padding-left:15px; border:1px solid black;}
</style>
<script>
	function goInsert(){
		var c = window.confirm("추가하시겠습니까?");
		if(c){
			location.href="insertForm.jsp";	
		}
	}
</script>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>목록</th>
				<th>영화 제목</th>
				<th>원제</th>
			</tr>
		</thead>
		<tbody>
			<%-- ${movieList.size()}까지 --%>
			<c:forEach var="movie" items="${movieList}" varStatus="status">
					<tr> <%-- id="+${movie.id}를 해야하는지. --%>
						<td><a href="showMovieDetail.jsp?id=${movie.id}">${status.count}</a></td>
						<td><a href="showMovieDetail.jsp?id=${movie.id}">${movie.title}</a></td>
						<td><a href="showMovieDetail.jsp?id=${movie.id}">${movie.title_eng}</a></td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="goInsert()">추가</button>
</body>
</html>