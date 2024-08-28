<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scope=1.0">
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
	position: relative;
}

.todo-list li span {
	flex-grow: 1;
	text-align: left;
}

.todo-list input[type="checkbox"] {
    display: inline-block; /* Ensure checkboxes are displayed */
    margin-right: 10px;
}


.todo-container input#edit-mode {
	display: none;
}

.todo-container input#edit-mode:checked ~ .todo-list li input[type="checkbox"]
	{
	display: inline-block;
}

.todo-container input#edit-mode:checked ~ .todo-list li label {
	text-decoration: line-through;
	/* Strikethrough for completed tasks in edit mode */
}

.todo-container input#edit-mode:checked ~ .edit-mode-buttons {
	display: block;
}

.edit-mode-buttons {
	margin-top: 20px;
	text-align: center;
	display: none;
}

.edit-mode-buttons button.delete-button {
	background-color: grey;
	border: none;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	cursor: pointer;
	margin-left: 5px;
}

.edit-mode-buttons button.delete-button:hover {
	background-color: red;
}

.Show-ToDo a, .Show-ToDo label {
	background-color: #4CAF50;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
	margin-left: 5px;
}

.Show-ToDo a:hover, .Show-ToDo label:hover {
	background-color: rgb(6, 158, 54);
}
</style>
</head>
<body>
	<div class="todo-container">
		<h1>To-Do List</h1>
		<form id="deleteForm" action="deleteTodos" method="post">
			<ul class="todo-list">
				<c:forEach var="model" items="${user}">
					<li><input type="checkbox" id="todo-${model.id}"
						name="todoIds" value="${model.id}"> <label
						for="todo-${model.id}"> <span>${model.todo}</span>
					</label></li>
				</c:forEach>
			</ul>
			<input type="checkbox" id="edit-mode">
			<div class="Show-ToDo">
				<a href="showindex">Back to Home</a> <label for="edit-mode">Edit</label>
			</div>
			<div class="edit-mode-buttons">
				<button type="submit" class="delete-button">Delete Selected</button>
			</div>
		</form>
	</div>
</body>
</html>