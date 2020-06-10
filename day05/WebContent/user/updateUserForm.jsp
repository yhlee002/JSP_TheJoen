<%@page import="java.sql.ResultSet"%>
<%@page import="day05.user.UserDto"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mysql.cj.xdevapi.PreparableStatement"%>
<%@page import="day05.user.MyConnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    //수정 form
    int id = Integer.parseInt(request.getParameter("id"));

	String sql = "select id, user_id, password, name, phone, "
			+"address, birth_date, point, reg_date from user where id = ?";
	
	try(Connection conn = MyConnector.getConnection();
			PreparedStatement pst = conn.prepareStatement(sql)){
		
		pst.setInt(1, id);
		UserDto user;
		try(ResultSet rs = pst.executeQuery()){
			if(rs.next()){
				user = new UserDto(rs.getInt("id"), 
						rs.getString("user_id"), 
						rs.getString("password"), 
						rs.getString("name"), 
						rs.getString("phone"), 
						rs.getString("address"), 
						rs.getDate("birth_date").toLocalDate(), 
						rs.getInt("point"), 
						rs.getTimestamp("reg_date").toLocalDateTime());
			}else{
				user = null; //ln19에서 애초에 null로 초기화해도 괜찮음
			}
		}
		request.setAttribute("user", user);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updateUserForm.jsp</title>
</head>
<body>
	<form action="updateUser.jsp" method="post">
		<div>
			<input id="id" type="text" name="id" value="${user.id}" readonly="readonly"/>
		</div>
		<div>
		<label for="userId">유저 아이디</label>
		<input id="userId" type="text" name="userId" value="${user.userId}"/>
		</div>
		<div>
		<label for="password">비밀번호</label>
		<input id="password" type="text" name="password" value="${user.password}"/>
		</div>
		<div>
		<label for="name">이름</label>
		<input id="name" type="text" name="name" value="${user.name}"/>
		</div>
		<div>
		<label for="phone">phone</label>
		<input id="phone" type="text" name="phone" value="${user.phone}"/>
		</div>
		<div>
		<label for="address">주소</label>
		<input id="address" type="text" name="address" value="${user.address}"/>
		</div>
		<div>
		<label for="birth">생일</label>
		<input name="birth" type="date" name="birth" value="${user.birthDate}"/>
		</div>
		<div>
		<label for="point">point</label>
		<input id="point" type="text" name="point" value="${user.point}"/>
		</div>
		<input type="submit" value="유저 수정"/>
	</form>
</body>
</html>