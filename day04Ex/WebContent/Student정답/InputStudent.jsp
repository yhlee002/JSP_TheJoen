<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${null ne studentList }">
		<div>현재 ${studentList.size()}명의 정보가 입력되었습니다.</div>
		${studentList[0].name}, ${studentList[0].age }
		<script>
			function go(){
				location.href="result.jsp";
			}
		</script>
		<button onclick="go()">결과 보기</button>
	</c:if>
	<form action="process.jsp" method="post" class="input-form">
		<div>
			<label for="name">이름</label>
			<input type="text" id="name" name="name"/>
		</div>
		<div>
			<label for="age">나이</label>
			<input type="text" id="age" name="age"/>
		</div>
		<div>
			<label for="birth">생일</label>
			<input type="date" id="birth" name="birth"/>
		</div>
		<div>
			<label for="address">주소</label>
			<input type="text" id="address" name="address"/>
		</div>
		<div>
			<span>성적 입력</span>
		</div>
		
		<%-- 
		label의 for속성에는 input의 id와 같아야 함. 이는 둘이 따로 감싸지만 글씨를 클릭해도 input칸도 선택되게 하기 위해서 
		label을 따로 감싼 이유는 항목에 대한 이름과 input칸에 따로 css를 적용할 수 있기 떄문
		 --%>
		<div>
			<label for="kor">국어 성적</label>
			<input type="number" id="kor" name="kor"/>
		</div>
		<div>
			<label for="math">수학 성적</label>
			<input type="number" id="math" name="math"/>
		</div>
		<div>
			<label for="computer">컴퓨터 성적</label>
			<input type="number" id="computer" name="computer"/>
		</div>
		<button>submit</button>
	</form>
	</body>
</body>
</html>