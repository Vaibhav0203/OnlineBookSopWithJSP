<%@page import="com.sunbeam.daos.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Books</title>
</head>
<body>
	<h3>${initParam.appTitle}</h3>
	Hello, ${lb.email} <hr/>

	<jsp:useBean id="abb" class="com.sunbeam.beans.AllBooksBean"/>
	${abb.fetchAllBooks()}
	<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Author</th>
				<th>Subject</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<% for(Book b:abb.getBooks()) { %>
				<tr>
					<td><%= b.getId() %></td>
					<td><%= b.getName() %></td>
					<td><%= b.getAuthor() %></td>
					<td><%= b.getSubject() %></td>
					<td><%= b.getPrice() %></td>
					<td>
						<a href="editbook.jsp?id=<%= b.getId() %>">Edit</a>
						<a href="delbook.jsp?id=<%= b.getId() %>">Delete</a>
					</td>
				</tr>
			<% } %>
		</tbody>
	</table>
	<br/><br/>	
	<a href="newbook.jsp">Add New Book</a>
	<br/><br/>	
	<a href="logout.jsp">Sign Out</a>
</body>
</html>