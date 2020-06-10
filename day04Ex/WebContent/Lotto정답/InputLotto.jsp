<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 입력</title>
<script>
	window.addEventListener("DOMContentLoaded", function(){
		//체크박스인 태그를 모두 가져옴(Jquery였다면 $('input').click()로 모든 input에 click이벤트 추가 가능)
		var inputArray = document.querySelectorAll("input[type=checkbox]");
		//JavaScript에서의 forEach는 Array만 가능
		//Array.forEach(function(var)) : 배열의 길이만큼 function을 실행(이 때 var의 변수명은 상관없음, 이는 Array의 각 요소를 의미)
		inputArray.forEach(function(element){
			//체크박스 하나를 클릭할 때마다 전체에서 checked된 체크박스의 개수를 확인하는 로직
			element.addEventListener("click", function(){
				var cnt = 0;
				inputArray.forEach(function(el){
					if(el.checked == true){
						cnt++;
					}
					if(cnt > 6){
						alert("6개까지만 체크 가능 합니다.");
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
	<form action="checkLotto.jsp" method="post">
		<h3>1~45까지 중 6개의 숫자를 입력하세요.</h3>
		<fieldset>
			<legend>로또번호</legend>
			<c:forEach var="i" begin="1" end="45">
				<label><input type="checkbox" name="picNum" value="${i}"/>${i}</label>
				<c:if test="${i%10 == 0}"><br></c:if>
			</c:forEach>
		</fieldset>
		<button>제출</button>
		<%-- form에 속성없는 button태그만 사용할 경우 submit(button에 속성으로 type="button"을 줄 경우 submit되지 않음 --%>
	</form>
</body>
</html>