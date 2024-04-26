<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.BookStore.model.CustomerDetails"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>All Customers</title>
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
  <a href="/">Home</a>
  <a href="/logout" class="logout">Logout</a>
</div>

<div class="container">
	<h1>Customer Details</h1>
	<table>
		<thead>
			<tr>
				<th>Customer Name</th>
				<th>Email</th>
				<th>Number</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<CustomerDetails> customers = (List<CustomerDetails>) request.getAttribute("customers");
			if (customers != null && !customers.isEmpty()) {
				for (CustomerDetails customer : customers) {
			%>
			<tr>
				<td><%=customer.getCustomerName()%></td>
				<td><%=customer.getCustomerEmail()%></td>
				<td><%=customer.getCustomerNumber()%></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="3">No customers found.</td>
			</tr>
			<%
			}
			%>
		</tbody>
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
</html>
