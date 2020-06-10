<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="day05Ex.marvel.MyConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="day05Ex.marvel.MovieDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- a태그로 페이지 이동시 새로운 request 객체 생성 --%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	String sql = "select * from marvel_movie where id=?";
	MovieDto movie = null;
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		pst.setInt(1, id);
		
		try(ResultSet rs = pst.executeQuery()){
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
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세 정보</title>
<style>
	table{border-collapse: collapse;}
	thead>tr{background: #e85255;}
	th, td{text-align:center; padding-right:8px; padding-left:8px; border:1px solid black;}
</style>
<script>
	function goUpdate(id){
		location.href="updateForm.jsp?id="+id;
	}
	
	function goDelete(id){
		var v = window.confirm("정말로 삭제하시겠습니까?");
		if(v){
			location.href="delete.jsp?id="+id;
		}
	}
	
	function goBack(){
		location.href="marvelMovieList.jsp";
	}
</script>
</head>
<body>
	<h3>영화 <b><%= movie.getTitle()+"("+movie.getTitle_eng()+")" %></b>의 정보</h3>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>제목</th>
				<th>원제</th>
				<th>감독</th>
				<th>페이즈</th>
				<th>상태</th>
				<th>개봉</th>
				<th>입력 일자</th>
				<th>마지막 수정 일자</th>
			</tr>
		</thead>
		<tbody>
			<tr> 
				<td><%= movie.getId() %></td>
				<td><%= movie.getTitle() %></td>
				<td><%= movie.getTitle_eng() %></td>
				<td><%= movie.getDirector() %></td>
				<td><%= movie.getPhase() %></td>
				<td><%= movie.getState() %></td>
				<td><%= movie.getRelease_date() %></td>
				<td><%= movie.getReg_date() %></td>
				<td><%= movie.getU_date() %></td>
			</tr>
		</tbody>
	</table>
	<button onclick="goUpdate(<%= movie.getId()%>)">수정</button>
	<button onclick="goDelete(<%= movie.getId()%>)">삭제</button>
	<button onclick="goBack()">뒤로 가기</button>
</body>
</html>