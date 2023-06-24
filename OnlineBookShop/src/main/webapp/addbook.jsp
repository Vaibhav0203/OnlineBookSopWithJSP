<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
</head>
<body>
	Hello, ${lb.email} <hr/>
	
	<jsp:useBean id="bb" class="com.sunbeam.beans.BooksBean"/>
	<jsp:setProperty name="bb" property="*" />
	
	<% bb.addBook(); %>
	
	<jsp:forward page="books.jsp"/>
</body>
</html>
