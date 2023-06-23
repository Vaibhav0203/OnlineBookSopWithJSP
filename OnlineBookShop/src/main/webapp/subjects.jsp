<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="lb" class="com.sunbeam.beans.SubjectsBeans"></jsp:useBean>
<%  lb.showBooks(); %>
<form action="subBooks.jsp">
		<% for(String subject:lb.getSubject()) { %>
			<input type="radio" name="subject" value="<%= subject %>"/> <%= subject %> <br/>
		<% } %>
		<input type="submit" value="Show Books"/>
		<a href="showcart.jsp">Show Cart</a>
	</form>
</body>
</html>