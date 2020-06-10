<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
[
<c:forEach var="person" items="${list}" varStatus="status">
	{
	"id" : ${person.id }, 
	"name" : "${person.name }",
	"age" : ${person.age }
	}
<c:if test="${!status.last }">,</c:if>
</c:forEach>


]


