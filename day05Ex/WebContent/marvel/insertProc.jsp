<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="day05Ex.marvel.MyConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%	
	request.setCharacterEncoding("utf-8");

	String title = request.getParameter("title");
	String titleEng = request.getParameter("titleEng");
	String director = request.getParameter("director");
	String phase = request.getParameter("phase");
	String state = request.getParameter("state");
	String releaseDate = request.getParameter("releaseDate");

	String result = "<h3>입력 완료</h3>";
	String resultData = "<td>"+title+"</td>"+
			"<td>"+titleEng+"</td>"+
			"<td>"+director+"</td>"+
			"<td>"+phase+"</td>"+
			"<td>"+state+"</td>"+
			"<td>"+releaseDate+"</td>";
	String sql = "insert into marvel_movie(title, title_eng, director, phase, state, release_date) "
			+"values(?, ?, ?, ?, ?, ?)";
	try(Connection conn = MyConnector.getConnection();
		PreparedStatement pst = conn.prepareStatement(sql)){
		
		pst.setString(1, title);
		pst.setString(2, titleEng);
		pst.setString(3, director);
		pst.setString(4, phase);
		pst.setString(5, state);
		pst.setString(6, releaseDate);
		
		pst.executeUpdate();
		
	}catch(SQLException e){
		result = "<h3>입력 실패</h3>";
		resultData = "없음";
		e.printStackTrace();
	}catch(Exception e){
		result = "<h3>입력 실패</h3>";
		resultData = "없음";
		e.printStackTrace();
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goList(){
		location.href="marvelMovieList.jsp";
	}
</script>
<style>
	table{border-collapse:collapse; border:1px solid lightgray}
	td{padding-left:15px; padding-right:15px; padding-top : 3px; }
</style>
</head>
<body>
	<%= result %>
		<table>
		<caption>입력된 영화 정보</caption>
		<thead>
				<tr>
					<th>제목</th>
					<th>원제</th>
					<th>감독</th>
					<th>페이즈</th>
					<th>상태</th>
					<th>개봉</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<%= resultData %>
				</tr>
			</tbody>
		</table>
	<br><br>
	<button type="button" onclick="goList()">목록 보기</button>
</body>
</html>