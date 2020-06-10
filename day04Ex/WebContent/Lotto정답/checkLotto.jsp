<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//로또 번호 생성하여 담는 Set(중복되는 값은 넣지 않는 Set의 특징 이용(모두 다른 수가 들어가도록))
	//TreeSet : 정렬이 되나, 처리 속도가 느림(정렬될 필요 없이 속도가 빨라야하는 작업 수행시에는 HashSet을 사용하는 것이 유리)
	Set<Integer> lotto = new TreeSet<>();
	while(lotto.size() < 6){
		lotto.add((int)(Math.random()*45)+1);
	}
	
	//사용자로 부터 받은 값을 문자열 배열로 담음
	String[] picNum = request.getParameterValues("picNum");
	
	//사용자가 입력한 값과 로또 번호를 비교해 같은 값을 담을 set 생성 (winning없이도 코드 완성 가능)
	Set<Integer> winning = new TreeSet<>();
	
	//사용자가 입력한 값을 우선 set에 int로 변경하여 담음
	for(String i : picNum){
		winning.add(Integer.parseInt(i));
	}
	
	//사용자가 입력한 값을 ArrayList로 담음
	//ArrayList<Object> al = new ArrayList<Obejct>(Set instance);
	//특정 set객체를 ArrayList 선언부의 생성자에 인자로 전달할 경우 set객체의 요소들로 ArrayList를 생성할 수 있음
	ArrayList<Integer> picList = new ArrayList<Integer>(winning);
	
	//사용자의 입력값과 로또번호를 비교하여 같은 값만 Set에 남김
	//Set1.retain(Set2) : 교집합을 '반환'하는 것이 아니라 주체 객체(Set1)이 교집합이 된다.
	//여기서는 winning이 winning과 lotto의 교집합으로 값이 변화(축소됨)
	winning.retainAll(lotto);
	
	//화면으로 보낼 값을 request의 속성으로 담음
	request.setAttribute("lotto", lotto);
	request.setAttribute("picList", picList);
	request.setAttribute("winning", winning);
	//forward로 show.jsp로 보냄
	//request.getRequestDispatcher("url").forward(request, response);
	//(가장 먼저 요청을 받는 객체(RequestDispatcher)가 request객체와 response 객체를 포함해서 show.jsp라는 화면을 보여줌)
	request.getRequestDispatcher("show.jsp").forward(request, response);


%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkLotto.jsp</title>
</head>
<body>
	
</body>
</html>