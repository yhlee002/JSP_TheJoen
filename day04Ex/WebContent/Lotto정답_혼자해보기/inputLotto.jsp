<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input expected Lotto number</title>
<script>
	window.addEventListener("DOMContentLoaded", function(){
		var checkedNums = document.querySelectorAll('input'); //배열의 형태로 들어감
		
		checkedNums.forEach(function(element){
			element.addEventListener("click", function(){
				var cnt = 0;
				checkedNums.forEach(function(num){
					if(num.checked == true){ //check된 체크박스의 개수를 세는 로직
						cnt++;
					}
					if(cnt > 6){
						alert("6개까지만 입력 가능합니다.");
						element.checked = false;
						cnt--;
					}
				});
			});	
		});
	});
</script>
</head>
<body>
	<form action="checkNumber.jsp">
		<fieldset>
			<c:forEach var="i" begin="1" end="45">
				<label>${i}<input type="checkbox" name="expectedNums" value="${i}"/></label>
				<c:if test="${i%10 == 0}"><br></c:if>
			</c:forEach>
			<button>submit</button>
		</fieldset>
	</form>
</body>
</html>