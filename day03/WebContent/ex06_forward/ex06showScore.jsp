<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="ex06scoreInclude.jsp" %> --%>
<%-- 실상 이처럼 include를 하면 forward를 할 필요가 없어짐. forward를 쓸 경우 페이지 변환시 매번 request로 데이터를 받는 과정이 필요 --%>
<%
	String name = request.getParameter("name");
	int kor = request.getParameter("kor").equals("")? 0 : Integer.parseInt(request.getParameter("kor"));
	int eng = request.getParameter("eng").equals("")? 0 : Integer.parseInt(request.getParameter("eng"));
	int math = request.getParameter("math").equals("")? 0 : Integer.parseInt(request.getParameter("math"));
	int soc = request.getParameter("soc").equals("")? 0 : Integer.parseInt(request.getParameter("soc"));
	int sci = request.getParameter("sci").equals("")? 0 : Integer.parseInt(request.getParameter("sci"));
	int sum = (kor+eng+math+soc+sci);
	int avg = sum/5;
	
	request.setAttribute("name", name);
	request.setAttribute("kor", kor);
	request.setAttribute("eng", eng);
	request.setAttribute("math", math);
	request.setAttribute("soc", soc);
	request.setAttribute("sci", sci);
	request.setAttribute("sum", sum);
	request.setAttribute("avg", avg);
%>
<jsp:forward page="ex06showView.jsp"></jsp:forward>
	<!-- forward는 읽히는 순간 해당 페이지로 넘어감 -->
