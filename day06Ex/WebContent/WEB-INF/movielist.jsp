<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie List</title>
<style>
	a{text-decoration:none; color:black; border:1px solid black; border-radius:2px;}
	label{display:box; width:100px;}	
</style>
<script>
	window.addEventListener("DOMContentLoaded", function(){
		var updateButtonArray = document.querySelectorAll("a[href^=update]");
		
		updateButtonArray.forEach(function(element){
			element.onclick = function(){
				var conf = window.confirm("영화 정보를 수정하시겠습니까?");
				if(!conf){
					return false;
				}
			}
		})
	
		var deleteButtonArray = document.querySelectorAll("a[href=^delete]");
		deleteButtonArray.forEach(function(element){
			element.onclick = function(){
				var conf = window.confirm("해당 정보를 삭제하겠습니까?");
				if(!conf){
					return false;
				}else{
					alert("삭제되었습니다.");
				}				
			}
		})
	});
</script>
</head>
<body>
<h3>영화 추가</h3>
	<form action="insert.jsp" method="post"> <%-- insert.jsp와 맵핑되는 class파일(MovieInsertController.java와 연결 --%>
		<label for="title">제목</label> : <input type="text" name="title" placeholder="제목"/><br>
		<label for="titleEng">원제 </label>: <input type="text" name="titleEng" placeholder="원제"/><br>
		<label for="director">감독</label> : <input type="text" name="director" placeholder="감독"/><br>
		페이즈 : 
		<select name="phase" id="phase">
			<option value="페이즈 1">페이즈 1</option>
			<option value="페이즈 2">페이즈 2</option>
			<option value="페이즈 3">페이즈 3</option>
		</select><br>
		상태 : 
		<select name="state" id="state">
			<option value="개봉">개봉</option>
			<option value="미개봉">미개봉</option>
		</select><br>
		개봉년도 : <input type="number" name="releaseDate"/>
		<input type="submit" value="삽입"/>
	</form>
<h3>영화 리스트</h3>
<hr>
	<c:if test="${viewData.movieTotalCount == 0}">
		저장된 영화가 없습니다.
	</c:if>
	<c:if test="${viewData.movieTotalCount > 0}">
		<c:forEach var="movie" items="${viewData.movieList}">
			<b>영화 ${movie.title}의 정보</b>
			<a href="update.jsp?id=${movie.id }">수정</a>
			<a href="delete.jsp?id=${movie.id }">삭제</a>
			<br>
			<ul>
				<li>ID : ${movie.id}</li>
				<li>제목 : ${movie.title}</li>
				<li>원제 : ${movie.titleEng }</li>
				<li>감독 : ${movie.director}</li>
				<li>페이즈 : ${movie.phase }</li>
				<li>상태 : ${movie.state }</li>
				<li>개봉년도  : ${movie.releaseDate}</li>
				<li>최초 입력일 : ${movie.regDate}</li>
				<li>최종 수정일 : ${movie.uDate }</li>
			</ul>

			<br>
		</c:forEach>
		<hr>
		<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
			<a href="movielist.jsp?pageNum=${pageNum}">[${pageNum}]</a>
		</c:forEach>
	</c:if>
	
</body>
</html>