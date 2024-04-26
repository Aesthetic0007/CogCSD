<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>


 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Search Results</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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

h2{
    font-family: Arial, Helvetica, sans-serif;
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

	<%
	List<BookDetails> books = (List<BookDetails>) request.getAttribute("books");
	if (books != null && !books.isEmpty()) { %>
	<h2>Results:</h2>
	<table>
	  <tr>
	    <th>Title</th>
	    <th>Author</th>
	    <th>Genre</th>
	  </tr>
	  <% for (BookDetails book : books) { %>
	  <tr>
	    <td><%=book.getTitle()%></td>
	    <td><%=book.getAuthor()%></td>
	    <td><%=book.getGenre()%></td>
	  </tr>
	  <% } %>
	</table>
	<% } else if (request.getParameter("genre") != null) { %>
	<p>No books found for the given genre.</p>
	<% } %>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
