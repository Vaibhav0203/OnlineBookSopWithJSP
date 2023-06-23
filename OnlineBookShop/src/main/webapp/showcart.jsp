<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% double total = 0.0; %>
	<jsp:useBean id="cb" class="com.sunbeam.beans.CartBean" scope="session"/>
	<jsp:useBean id="bdb" class="com.sunbeam.beans.BookDetailBean"/>
	
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Author</th>
				<th>Subject</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<% for(Integer id:cb.getCart()) { %>
				<jsp:setProperty name="bdb" property="id" value="<%= id %>" />
				<% bdb.fetchBook(); %>
				<tr>
					<td><%= id %></td>
					<td><%= bdb.getBook().getName() %></td>
					<td><%= bdb.getBook().getAuthor() %></td>
					<td><%= bdb.getBook().getSubject() %></td>
					<td><%= bdb.getBook().getPrice() %></td>
				</tr>
				<% total = total + bdb.getBook().getPrice(); %>
			<% } %>
		</tbody>
	</table>
	<br/><br/>	
	Total: Rs. <%= total %> /-
	<br/><br/>	
	<a href="logout.jsp">Sign Out</a>

</body>
</html>