<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>

<h3>Sunbeam Online Book Shop</h3>
	<jsp:useBean id="lb" class="com.sunbeam.beans.LoginBeans"/>
	<jsp:setProperty name="lb" property="email" param="email"/>
	<jsp:setProperty name="lb" property="password" param="password"/>
	<% lb.isValidate(); %>
	<% if(lb.getCust() != null) { %>
		<jsp:forward page="subjects.jsp"/>	
	<% } else { %>
		Invalid email or password. <br/><br/>
		<a href="index.jsp">Login Again</a>
	<% } %>

</body>
</html>