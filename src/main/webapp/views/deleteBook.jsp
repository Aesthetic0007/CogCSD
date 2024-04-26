<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Delete Books</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
      transition: all 0.5s ease;
    }
    .container {
      width: 600px;
      padding: 30px;
      background-color: white;
      margin: 100px auto;
      border: 1px solid #ccc;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
      transition: all 0.5s ease;
    }
    .container form {
      display: flex;
      flex-direction: column;
      transition: all 0.5s ease;
    }
    .container label {
      margin-bottom: 5px;
      transition: all 0.5s ease;
    }
    .container input[type="text"], .container input[type="number"] {
      width: calc(100% - 30px);
      padding: 15px;
      margin: 5px 0 20px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 6px;
      transition: all 0.5s ease;
    }
    .container input[type="text"]:focus, .container input[type="number"]:focus {
      border-color: #dc3545; /* Red color for focus */
      outline: none;
      transition: all 0.5s ease;
    }
    .container .btn {
      background-color: #dc3545; /* Red color for delete */
      color: white;
      padding: 15px 25px;
      margin: 10px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
      border-radius: 6px;
      transition: all 0.5s ease;
    }
    .container .btn:hover {
      opacity: 1;
      transition: all 0.5s ease;
    }
  </style>
</head>
<body>
<div class="container">
  <form id="deleteBooksForm" action="/deleteBook" method="post">
    <label for="bookName"><b>Book Name</b></label>
    <input type="text" placeholder="Enter Book Name" name="title" required>
    <label for="authorName"><b>Author Name</b></label>
    <input type="text" placeholder="Enter Author Name" name="author" required>
    <button type="submit" class="btn">Delete Book</button>
  </form>
</div>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Books</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	transition: all 0.5s ease;
}

.container {
	width: 600px;
	padding: 30px;
	background-color: white;
	margin: 100px auto;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
	transition: all 0.5s ease;
}

.container form {
	display: flex;
	flex-direction: column;
	transition: all 0.5s ease;
}

.container label {
	margin-bottom: 5px;
	transition: all 0.5s ease;
}

.container input[type="text"], .container input[type="number"] {
	width: calc(100% - 30px);
	padding: 15px;
	margin: 5px 0 20px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 6px;
	transition: all 0.5s ease;
}

.container input[type="text"]:focus, .container input[type="number"]:focus
	{
	border-color: #dc3545; /* Red color for focus */
	outline: none;
	transition: all 0.5s ease;
}

.container .btn {
	background-color: #dc3545; /* Red color for delete */
	color: white;
	padding: 15px 25px;
	margin: 10px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 6px;
	transition: all 0.5s ease;
}

.container .btn:hover {
	opacity: 1;
	transition: all 0.5s ease;
}
</style>
</head>
<body>
	<div class="container">
		<!-- Success message -->
		<c:if test="${not empty message}">
			<div class="alert alert-success" role="alert">${message}</div>
		</c:if>

		<!-- Error message -->
		<c:if test="${not empty errorMessage}">
			<div class="alert alert-danger" role="alert">${errorMessage}</div>
		</c:if>

		<form id="deleteBooksForm" action="/deleteBook" method="post">
			<label for="bookName"><b>Book Name</b></label> <input type="text"
				placeholder="Enter Book Name" name="title" required> <label
				for="authorName"><b>Author Name</b></label> <input type="text"
				placeholder="Enter Author Name" name="author" required>
			<button type="submit" class="btn">Delete Book</button>
		</form>
	</div>
</body>
</html>

