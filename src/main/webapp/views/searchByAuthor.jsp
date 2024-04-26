<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search by Author</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	background-color: #ffffff; /* White background */
	color: #333;
	font-family: Arial, Helvetica, sans-serif; /* Professional font */
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
	padding: 20px;
}

h1 {
	text-align: center;
	color: #007bff;
}

table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}

td, th {
	text-align: left;
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #007bff;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr {
  opacity: 0;
  animation: fadeIn 2s forwards;
}

@keyframes fadeIn {
  to {
    opacity: 1;
  }
}
</style>
</head>
<body>

<div class="navbar">
  <a href="#home">Home</a>
  <a href="#logout" class="logout">Logout</a>
</div>

<div class="container">
	<h1>Search by Author</h1>
	<form action="/searchByAuthorResults" method="get">
	  <label for="author">Author:</label><br>
	  <input type="text" id="author" name="author"><br>
	  <input type="submit" value="Search">
	</form>

	<%
	List<BookDetails> books = (List<BookDetails>) request.getAttribute("books");
	if (books != null && !books.isEmpty()) {
	%>
	<h2>Results:</h2>
	<table>
	  <tr>
	    <th>Title</th>
	    <th>Author</th>
	    <th>Genre</th>
	  </tr>
	<%
	  for (BookDetails book : books) {
	%>
	  <tr>
	    <td><%=book.getTitle()%></td>
	    <td><%=book.getAuthor()%></td>
	    <td><%=book.getGenre()%></td>
	  </tr>
	<%
	  }
	} else if (request.getParameter("author") != null) {
	%><p>No books found for the given author.</p>
	<%
	}
	%>

	</table>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("tr").each(function(i) {
			$(this).delay(100 * i).fadeIn(500);
		});
	});
</script>

</body>
</html> --%>






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search by Author</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	background-color: #ffffff; /* White background */
	color: #333;
	font-family: Arial, Helvetica, sans-serif; /* Professional font */
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
	padding: 20px;
}

h1 {
	text-align: center;
	color: #007bff;
}

table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}

td, th {
	text-align: left;
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #007bff;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr {
  opacity: 0;
  animation: fadeIn 2s forwards;
}

@keyframes fadeIn {
  to {
    opacity: 1;
  }
}
</style>
</head>
<body>

<div class="navbar">
  <a href="#home">Home</a>
  <a href="#logout" class="logout">Logout</a>
</div>

<div class="container">
	<h1>Search by Author</h1>
	<form action="/searchByAuthorResults" method="get">
	  <label for="author">Author:</label><br>
	  <input type="text" id="author" name="author"><br>
	  <input type="submit" value="Search">
	</form>

	<%
	List<BookDetails> books = (List<BookDetails>) request.getAttribute("books");
	if (books != null && !books.isEmpty()) {
	%>
	<h2>Results:</h2>
	<table>
	  <tr>
	    <th>Title</th>
	    <th>Author</th>
	    <th>Genre</th>
	  </tr>
	<%
	  for (BookDetails book : books) {
	%>
	  <tr>
	    <td><%=book.getTitle()%></td>
	    <td><%=book.getAuthor()%></td>
	    <td><%=book.getGenre()%></td>
	  </tr>
	<%
	  }
	%>
	</table>
	<%
	} else if (request.getParameter("author") != null) {
	%>
	<p>No books found for the given author.</p>
	<%
	}
	%>

</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("tr").each(function(i) {
			$(this).delay(100 * i).fadeIn(500);
		});
	});
</script>

</body>
</html>

 --%>
 
 <%-- 
   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search by Author</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	background-color: #ffffff; /* White background */
	color: #333;
	font-family: Arial, Helvetica, sans-serif; /* Professional font */
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
	padding: 20px;
}
h1 {
	text-align: center;
	color: #007bff;
}
form {
	width: 100%;
	margin-top: 20px;
}
input[type=text] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}
input[type=submit] {
	background-color: #007bff;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=submit]:hover {
	background-color: #45a049;
}
table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
}
td, th {
	text-align: left;
	padding: 12px;
	border-bottom: 1px solid #ddd;
}
th {
	background-color: #007bff;
	color: white;
}
tr:nth-child(even) {
	background-color: #f2f2f2;
}
tr {
  opacity: 0;
  animation: fadeIn 2s forwards;
}
@keyframes fadeIn {
  to {
    opacity: 1;
  }
}
</style>
</head>
<body>
<div class="navbar">
  <a href="#home">Home</a>
  <a href="#logout" class="logout">Logout</a>
</div>
<div class="container">
	<h1>Search by Author</h1>
	<form action="/searchByAuthorResults" method="get">
	  <div class="form-group">
	    <label for="author">Author Name:</label>
	    <input type="text" class="form-control" id="author" name="author" required>
	  </div>
	  <button type="submit" class="btn btn-primary">Search</button>
	</form>
	<%
	List<BookDetails> books = (List<BookDetails>) request.getAttribute("books");
	if (books != null && !books.isEmpty()) {
	%>
	<h2>Results:</h2>
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th>Title</th>
	      <th>Author</th>
	      <th>Genre</th>
	    </tr>
	  </thead>
	  <tbody>
	<%
	  for (BookDetails book : books) {
	%>
	  <tr>
	    <td><%=book.getTitle()%></td>
	    <td><%=book.getAuthor()%></td>
	    <td><%=book.getGenre()%></td>
	  </tr>
	<%
	  }
	%>
	  </tbody>
	</table>
	<%
	} else if (request.getParameter("author") != null) {
	%>
	<p>No books found for the given author.</p>
	<%
	}
	%>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("tr").each(function(i) {
			$(this).delay(100 * i).fadeIn(500);
		});
	});
</script>
</body>
</html>
 --%>  
 
 
 
<%--  
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
      <style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	transition: all 0.5s ease;
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
  <!-- ... rest of your styles ... -->
  <title>Search by Author</title>
</head>
<body>
    <div class="container">
        <form id="searchByAuthorForm" action="/searchByAuthorResults" method="post">
            <label for="authorName"><b>Author Name</b></label>
            <input type="text" placeholder="Enter Author Name" name="author" required>
            <button type="submit" class="btn">Search Books</button>
        </form>
    </div>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
  <!-- ... rest of your styles ... -->
  <title>Search by Author</title>
</head>
<body>
    <div class="navbar">
        <a href="#home">Home</a>
        <a href="#logout" class="logout">Logout</a>
    </div>
    <div class="container">
        <form id="searchByAuthorForm" action="/searchByAuthorResults" method="post">
            <label for="authorName"><b>Author Name</b></label>
            <input type="text" placeholder="Enter Author Name" name="author" required>
            <button type="submit" class="btn">Search Books</button>
        </form>
    </div>
</body>
</html>
