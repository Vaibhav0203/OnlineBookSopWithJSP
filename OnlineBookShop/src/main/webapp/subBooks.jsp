
<%@page import="com.sunbeam.daos.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="sbb" class="com.sunbeam.beans.SubBoksBeans"/>
	<jsp:setProperty name="sbb" property="subject" param="subject"/>
	<% sbb.fetchSubjectBooks(); %>
	<form method="post" action="addcart.jsp">
		<% for(Book b:sbb.getBooks()) { %>
			<input type="checkbox" name="book" value="<%= b.getId() %>"/> <%= b.getName() %> - <%= b.getAuthor() %> <br>
		<% } %>
		<input type="submit" value="Add Cart"/>
	</form>
</body>
</html>