<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
</head>
<body>
	<h3>${initParam.appTitle}</h3>
	Hello, ${lb.email} <hr/>

	<jsp:useBean id="bdb" class="com.sunbeam.beans.BookDetailBean"/>
	<jsp:setProperty name="bdb" property="id" param="id"/> <%-- req param id is from query string ?id=... --%>
	${bdb.fetchBook()}

	<form method="post" action="updatebook.jsp">
		<input type="hidden" name="id" value="<%= bdb.getBook().getId() %>"/>
		Title: <input type="text" name="name" value="<%= bdb.getBook().getName() %>"/> <br/>
		Author: <input type="text" name="author" value="<%= bdb.getBook().getAuthor() %>"/> <br/>
		Subject: <input type="text" name="subject" value="<%= bdb.getBook().getSubject() %>"/> <br/>
		Price: <input type="text" name="price" value="<%= bdb.getBook().getPrice() %>"/> <br/>
		<input type="submit" value="Update Book"/>
	</form>
</body>
</html>
