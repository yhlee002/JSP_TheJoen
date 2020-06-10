<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="day04Ex.Score"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day04Ex.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//인코딩 설정
	request.setCharacterEncoding("UTF-8");

	//입력된 성적과 학생정보를 담기위한 리스트 변수 선언
	List<Student> studentList;
	
	if(session.getAttribute("studentList") == null){
		studentList = new ArrayList<Student>();
	}else{
		studentList = (ArrayList)session.getAttribute("studentList");
	}
	
	Student student = new Student();
	student.setName(request.getParameter("name"));
	student.setAge(Integer.parseInt(request.getParameter("age")));
	student.setBirthDate(LocalDate.parse(request.getParameter("birth")));
	student.setAddress(request.getParameter("address"));
	student.setScore(new Score(Integer.parseInt(request.getParameter("kor")),
								Integer.parseInt(request.getParameter("math")),
								Integer.parseInt(request.getParameter("computer"))));
	
	//힉생 객체를 List에 추가함(local변수)
	studentList.add(student);
	
	//리스트를 세션 객체에 담음(페이지가 변해도 local변수가 유지되도록 세션 객체에 담음) - 첫번째 학생 정보가 입력된 이후에는 계속해서 덮어씌워짐
	session.setAttribute("studentList", studentList);
	
//	입력된 국어 점수의 총합을 구할 때 아래와 같이 하면 계속해서 0으로 갱신됨
//	int korSum = 0;
//	korSum += student.getScore().getMath();
//	session.setAttribute("korSum", korSum);

	//국어 점수의 총합을 구하는 옳은 방법
//	int korSum;
//	if(session.getAttribute("korSum") == null){
//		korSum = 0;
//	}else{
//		korSum = (Integer)session.getAttribute("korSum");
//	}
//	korSum += student.getScore().getMath();
//	//갱신된 국어 총합을 세션에 덮어씌워줌
//	session.setAttribute("korSum", korSum);
	
	//Map 형태로 받아서 세션에 저장하는 방법
	Map<String, Integer> map;
	
	if(session.getAttribute("korSum") == null){
		map = new HashMap();
		map.put("korSum", 0);
		map.put("mathSum", 0);
		map.put("computerSum", 0);
	}else{
		map = (Map)session.getAttribute("subjectMap");
	}
	//갱신된 국어 점수의 총합의 session에 다시 덮어씌움
	int korSum = map.get("korSum");
	korSum += student.getScore().getKor();
	map.put("korSum", korSum); //학생의 점수를 추가하고 다시 맵에 같은 키값으로 추가해줌(value만 덮어씌워짐)
	//같은 원리로 수학, 컴퓨터 점수 총합을 구할 수 있음
	map.put("mathSum", map.get("mathSum")+student.getScore().getMath());
	map.put("computerSum", map.get("computerSum")+student.getScore().getComputer());
	//세션에 넣어주는 작업
	session.setAttribute("subjectMap", map);
	
	//학생 정보 입력 화면을 돌아감
	response.sendRedirect("InputStudent.jsp");
%>
