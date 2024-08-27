<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
    <!-- <%@ page isELIgnored="false" %> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>To-Do App</title>
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
	color: #4caf50;
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

.todo-list li button {
	background-color: #ff5252;
	border: none;
	color: #ffffff;
	padding: 5px 10px;
	border-radius: 5px;
	cursor: pointer;
}

.todo-list li button:hover {
	background-color: #ff1744;
}

.add-todo {
	margin-bottom: 20px;
}

.add-todo input[type="text"] {
	width: 70%;
	padding: 8px;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.add-todo button {
	background-color: #4caf50;
	border: none;
	color: #ffffff;
	padding: 8px 15px;
	border-radius: 5px;
	cursor: pointer;
	margin-left: 10px;
}

.Show-ToDo a {
	background-color: rgb(75, 176, 75);
	text-decoration: none;
	border: none;
	color: white;
	padding: 8px 15px;
	border-radius: 5px;
	cursor: pointer;
	align-content: center;
}

.Show-ToDo a:hover {
	background-color: grey;
}

.add-todo button:hover {
	background-color: #45a049;
}
</style>
<script type="text/javascript">
	function showAlert() {
		alert("To-Do added!");
	}
</script>
</head>
<body>
	
	<div class="todo-container">
		<h1>To-Do App</h1>
		<form action="idxpage" method="post" class="add-todo"
			onsubmit="showAlert()">
			<input type="text" name="todo" placeholder="Add a new to-do...."
				required />
			<button type="submit">Add</button>
		</form>
		<div class="Show-ToDo">
			<a href="showtodo">Show ToDo</a>
		</div>
	</div>
	<br />

	
</body>
</html>
