<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp(반복문)</title>
</head>
<body>
	<%-- 1~5를 출력하는 코드 --%>
	<%
		for(int i = 1; i <= 5; i++){
			out.write(i+" "); //out.print()도 가능
		}
	%>
	<hr>
	<c:forEach var="i" begin="1" end="5"> <%-- i라는 변수에 1부터 5가 들어가는 것 --%>
		${i +=" "} <%-- el에서는 문자열을 합치는 연산자가 '+'가 아닌 '+=' --%>
	</c:forEach>
	<hr>
	<%-- 0~10중 2의 배수는 --%>
	<c:forEach var="i" begin="0" end="10" step="2"> <%-- step : n 일 때는 n씩 건너뛰겠다는 의미 --%>
		<c:if test="${i>0}"> <%-- 혹은 2보다 크거나 같을 때(0을 제외하고 출력하기 위한 if문 --%>
			${i +=" "}
		</c:if>
	</c:forEach>
	<hr>
	
	<%
		List<Integer> list = new ArrayList<>();
		for(int i = 0 ; i < 10; i++){
			list.add(i*3);
		}
		request.setAttribute("list", list);
		for(int i : list){
			out.print(i+" ");
		}
	%>
	<%--
		이와 같은 방식으로는 접근 불가
		<c:forEach var="i" begin="0" end="${list.length}">
			${i}
		</c:forEach>
	 --%>
	<hr>
	<c:forEach var="i" items="${list}"> <%-- Java의 for-each문처럼 list의 요소들이 하나씩 변수 i에 들어가는 원리 --%>
		${i +=" "}
	</c:forEach>
	<hr>
	<%-- 
		List, Set, Map 모두 들어갈 수 있음
		varStatus속성 : 반복 상태를 체크하는 속성
		index : 루프 실행 현재 인덱스
		count : 실행 횟수
		first : 첫번째일 때 true
		last : 마지막일 때 false
	 --%>
	 <c:forEach var="i" items="${list }" varStatus="st">
	 	<c:if test="${!st.first }">
	 		${i += " "}, index : ${st.index }, count : ${st.count }<br>
	 	</c:if>
	 </c:forEach>
</body>
</html>