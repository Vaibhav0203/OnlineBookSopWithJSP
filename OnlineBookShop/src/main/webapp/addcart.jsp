<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="cb" class="com.sunbeam.beans.CartBean" scope="session"></jsp:useBean>

<jsp:setProperty name="cb" property="bookIds" param="book"/>
	
	<% cb.addCart(); %>
	
	<jsp:forward page="subjects.jsp"/>

</body>
</html>