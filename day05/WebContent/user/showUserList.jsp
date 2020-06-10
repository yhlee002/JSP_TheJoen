<%@page import="day05.user.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="day05.user.MyConnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	
	
	try(Connection conn = MyConnector.getConnection();
			Statement st = conn.createStatement()){
		System.out.println(conn);
		
		String query = "select id, user_id, password, name, phone, "
				+"address, birth_date, point, reg_date from user";
		
		try(ResultSet rs = st.executeQuery(query)){
			ArrayList<UserDto> userList = new ArrayList<>();
			while(rs.next()){

				//System.out.println(rs.getDate("birth_date").toLocalDate());

				userList.add(new UserDto(
						rs.getInt("id"), 
						rs.getString("user_id"), 
						rs.getString("password"), 
						rs.getString("name"), 
						rs.getString("phone"), 
						rs.getString("address"), 
						rs.getDate("birth_date").toLocalDate(), 
						rs.getInt("point"), 
						rs.getTimestamp("reg_date").toLocalDateTime()));
				
			}
			request.setAttribute("userList", userList);
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showUserList.jsp</title>
<style>
	table{border-collapse: collapse; border:1px solid lightgray;}
	td{padding-left:10px; padding-right:10px;}
</style>
<script>
	function goDelete(id){
		var v = window.confirm("정말로 삭제하시겠습니까?");
		if(v){
			location.href="deleteUser.jsp?id="+id;
		}else{
			alert("취소되었습니다.");
		}
		
	}
		
</script>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>userId</th>
				<th>password</th>
				<th>name</th>
				<th>phone</th>
				<th>address</th>
				<th>birth_date</th>
				<th>point</th>
				<th>reg_date</th>
				<th>DELETE</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td><a href="updateUserForm.jsp?id=${user.id}">${user.id}</a></td>
					<td>${user.userId}</td>
					<td>${user.password}</td>
					<td>${user.name}</td>
					<td>${user.phone}</td>
					<td>${user.address}</td>
					<td>${user.birthDate}</td>
					<td>${user.point}</td>
					<td>${user.regDate}</td>
					<td><button onclick="goDelete(${user.id})">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>