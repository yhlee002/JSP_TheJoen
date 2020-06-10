<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//랜덤 로또 번호 생성(난수) :  ArrayList 사용
	Random ran = new Random();
	List<Integer> result = new ArrayList<>();
	for(int i = 0; i < 6; i++){ //원래는 6
		result.add(ran.nextInt(45)+1);
	}
	
	//받아온 수를 문자열  ArrayList형태로 담기
	List<String> inputNum = new ArrayList<>();
	for(int i = 0; i < 6; i++){
		inputNum.add(request.getParameterValues("num")[i]);
	}
	
	//문자열 배열의 값들을 모두 변환해서 Integer형 ArrayList에 담기
	List<Integer> num = new ArrayList<>();
	for(int i = 0; i < 6; i++){
		num.add(Integer.parseInt(inputNum.get(i)));
	}		
	
	request.setAttribute("result", result);
	request.setAttribute("inputNum", inputNum);
	request.setAttribute("num", num);
	out.print("<h1>"+result.contains(40)+"</h1>");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 결과</title>
<style>
	.colorRed{color:red;}
</style>
</head>
<body> 
	입력하신 로또 번호 : <%-- 값이 맞을 때 css변하게 혹은 class명 변하게(c:if문 사용) --%>

	<c:forEach var="i" begin="0" end="5">
		<c:choose>
			<c:when test="${result.contains(num.get(i))}">
				<span class="colorRed" style="color:red">${num.get(i)}</span>
			</c:when>
			<c:otherwise>
				<span>${num.get(i)}</span>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<br>
	로또 번호 : 
	<c:forEach var="i" begin="0" end="5">
		<c:choose>
			<c:when test="${i == 5}">
				<span>${result.get(i)}</span>
			</c:when>
			<c:otherwise>${result.get(i)+=", "}</c:otherwise>
		</c:choose>
	</c:forEach>
	<hr>
	<b>확인용 코드</b>
	<br>
	<%
		out.print("inputNum : ");
		for(int i = 0 ; i < 6; i++){
			out.print(inputNum.get(i));
			out.print(" ");
		}
	%>
	<br>
	<%
		out.print("num : ");
		for(int i = 0 ; i < 6; i++){
			out.print(num.get(i));
			out.print(" ");
		}
	%>
	<br>
	<%
		out.print("result : ");
		for(int i = 0 ; i < 6; i++){
			out.print(result.get(i));
			out.print(" ");
		}
	%>
</body>
</html>