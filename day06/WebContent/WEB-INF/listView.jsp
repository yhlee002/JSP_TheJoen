<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 리스트 조회 페이지</title>
<style>
	#pageNumber{text-align:center;}
	input[name="guestName"]{margin-bottom :10px;}
</style>
<script>
	window.addEventListener("DOMContentLoaded", function(){
		var deleteList = document.querySeletorAll("a[href^=delete]"); //delete로 시작하는 href
		deleteList.forEach(function(element){
			element.onclick = function(){
				var conf = window.confirm("삭제하시겠습니까?");
				if(!confirm("정말 삭제하시겠습니끼?")){
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
<form action="write.jsp" method="post">
	<fieldset>
		<legend>방명록 쓰기</legend>
		<input type="text" name="guestName" placeholder="이름"/>
		<input type="submit" value="메세지 남기기"/><br>
		<textarea name="message" id="" cols="35" rows="5" placeholder="내용"></textarea>
	</fieldset>
</form>
<hr>
<c:if test="${viewData.messageTotalCount == 0 }">
	등록된 메세지가 없습니다.
</c:if>
<c:if test="${viewData.messageTotalCount > 0 }">
	<c:forEach var="message" items="${viewData.messageList}">
		<div>
			메세지 ID : ${message.messageId }<br> <%-- message는 곧 messageDto의 객체 --%>
			작성자 : ${message.guestName }<br>
			작성일 : ${message.wdate }<br>
			내용<br>
			<div>
				${message.message }
			</div>
			<a href="update.jsp?messageId=${message.messageId }">수정</a>
			<a href="delete.jsp?messageId=${message.messageId }">삭제</a>
		</div>
		<hr>
		<br>
		</c:forEach>
	<%-- 페이지 네이션 --%>
	<div id="pageNumber">
	<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount }">
		<a href="list.jsp?page=${pageNum }">[${pageNum }]</a>
	</c:forEach>
	</div>
</c:if>
</body>
</html>