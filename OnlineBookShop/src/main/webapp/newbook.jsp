<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Book</title>
</head>
<body>
	<h3>${initParam.appTitle}</h3>
	Hello, ${lb.email} <hr/>

	<form method="post" action="addbook.jsp">
		Title: <input type="text" name="name"/> <br/>
		Author: <input type="text" name="author"/> <br/>
		Subject: <input type="text" name="subject"/> <br/>
		Price: <input type="text" name="price"/> <br/>
		<input type="submit" value="Submit"/>
	</form>
</body>
</html>
