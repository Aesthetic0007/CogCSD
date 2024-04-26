<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.BookDetails"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Books</title>
<!-- Bootstrap CSS for styling and responsiveness -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Add JQuery for animations -->
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
	<h1>Books-Details</h1>
	<table>
		<thead>
			<tr>
				<th>Book Name</th>
				<th>Author Name</th>
				<th>Genre</th>
				<th>Price</th>
				<th>Stock Quantity</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<BookDetails> books = (List<BookDetails>) request.getAttribute("books");
			if (books != null && !books.isEmpty()) {
				for (BookDetails book : books) {
			%>
			<tr>
				<td><%=book.getTitle()%></td>
				<td><%=book.getAuthor()%></td>
				<td><%=book.getGenre()%></td>
				<td><%=book.getPrice()%></td>
				<td><%=book.getStockQuantity()%></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="5">No books found.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</div>

<!-- Bootstrap JS for functionality -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- JQuery to handle click event and animation -->
<script>
	$(document).ready(function(){
		$("tr").each(function(i) {
			$(this).delay(100 * i).fadeIn(500);
		});
	});
</script>

</body>
</html>
