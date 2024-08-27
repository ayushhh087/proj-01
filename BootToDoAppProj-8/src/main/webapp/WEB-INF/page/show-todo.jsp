<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Show To-Do</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	color: #333;
}

.todo-container {
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 300px;
	text-align: center;
}

h1 {
	color: #4CAF50;
	margin-bottom: 20px;
}

.todo-list {
	list-style-type: none;
	padding: 0;
	margin: 20px 0;
}

.todo-list li {
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.todo-list li span {
	flex-grow: 1;
	text-align: left;
}

.Show-ToDo a {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}

.Show-ToDo a:hover {
	background-color: rgb(6, 158, 54);
}
</style>
</head>
<body>
	<form action="/showtodo" method="get">
		<%
		List userList = (List) session.getAttribute("user");
		%>
		<h1>Welcome to show todo</h1>
		<%=userList%>
		<c:forEach items="${userList}" var="model">
			<p>
				Employee ID:
				<c:out value="${model.id}" />
			</p>
			<br>
			<p>
				Employee Pass:
				<c:out value="${model.todo}" />
			</p>
		</c:forEach>
		<div class="Show-ToDo">
			<a href="showindex">Back to Home</a>
		</div>
	</form>
</body>
</html>