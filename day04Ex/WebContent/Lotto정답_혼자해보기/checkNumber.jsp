<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.TreeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	Set<Integer> lottoNums = new TreeSet<>(); //정렬 O, 속도 ↓
	Random ran = new Random();
	while(lottoNums.size() < 6){ //중복되면 add되지 않기 때문에 모두 add되어서 Set의 size가 6이 될 때까지 계속 난수 추가
		lottoNums.add(ran.nextInt(45)+1);
	}
	request.setAttribute("lottoNums", lottoNums);
	
	Set<Integer> inputNums = new TreeSet<>(); //체크된 값들을 set으로 받음
	for(int i = 0; i < 6; i++){
		inputNums.add(Integer.parseInt(request.getParameterValues("expectedNums")[i])); //${param.expectedNums}
	}
	request.setAttribute("inputNums", inputNums);
	
//	List<Integer> intersectionNums = new ArrayList<>(inputNums);	
//	intersectionNums.retainAll(lottoNums);
//	request.setAttribute("intersectionNums", intersectionNums);
	
	
	request.getRequestDispatcher("showLotto.jsp").forward(request, response);


%>