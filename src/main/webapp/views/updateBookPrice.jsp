<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Book Price</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	transition: all 0.5s ease;
}

.navbar {
	background-color: #2a6478; /* Peacock color */
	padding: 10px;
	border-radius: 0;
	position: sticky;
	top: 0;
	z-index: 1000;
}

.navbar a {
	color: #fff;
	text-decoration: none;
	margin: 0 15px;
	font-family: Arial, Helvetica, sans-serif; /* Professional font */
}

.navbar a.logout {
	float: right;
}

.container {
	width: 600px; /* Increased width */
	padding: 30px; /* Incresed padding */
	background-color: white;
	margin: 100px auto;
	border: 1px solid #ccc;
	border-radius: 10px; /* Increased border radius */
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2); /* Increased box shadow */
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
	padding: 15px; /* Increased padding */
	margin: 5px 0 20px 0; /* Increased margin */
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 6px; /* Increased border radius */
	transition: all 0.5s ease;
}

.container input[type="text"]:focus, .container input[type="number"]:focus
	{
	border-color: #4CAF50;
	outline: none;
	transition: all 0.5s ease;
}

.container .btn {
	background-color: #006994; /* Peacock color */
	color: white;
	padding: 15px 25px; /* Increased padding */
	margin: 10px 0; /* Increased margin */
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 5px; /* Increased border radius */
	transition: all 0.5s ease;
}

.container .btn:hover {
	opacity: 1;
	transition: all 0.5s ease;
}

.btn-edit {
	background-color: #007bff;
	margin-right: 5px;
	transition: all 0.5s ease;
}

.btn-delete {
	background-color: #dc3545;
	transition: all 0.5s ease;
} 
</style>
</head>
<body>
<div class="navbar">
  <a href="/">Home</a>
  <a href="/logout" class="logout">Logout</a>
</div>
<div class="container">
  <h1>Update Book Price</h1>
  <form action="/updateBookPrice" method="post" id="updatePriceForm">
      <label for="title">Title:</label><br>
      <input type="text" id="title" name="title"><br>
      <label for="author">Author:</label><br>
      <input type="text" id="author" name="author"><br>
      <label for="price">New Price:</label><br>
      <input type="number" id="price" name="price" step="0.01" min="0"><br>
      <input type="submit" value="Update Price" class="btn">
  </form>
  <div id="message"></div>
</div>
<script>
document.getElementById('updatePriceForm').addEventListener('submit', function(event) {
    event.preventDefault();
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $('#updatePriceForm').on('submit', function(event) {
        event.preventDefault();
        var title = $('#title').val();
        var author = $('#author').val();
        var price = $('#price').val();
        $.ajax({
            url: '/updateBookPrice',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ title: title, author: author, price: price }),
            success: function(response) {
                $('#message').text(response).css('color', 'green');
            },
            error: function(response) {
                $('#message').text(response.responseText).css('color', 'red');
            }
        });
    });
});
</script>
</body>
</html>
