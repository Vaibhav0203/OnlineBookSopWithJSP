<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<jsp:useBean id="bb" class="com.sunbeam.beans.BooksBean"/>
	<jsp:setProperty name="bb" property="*" />
	${bb.updateBook()}
	<jsp:forward page="books.jsp"/>
</body>
</html>
