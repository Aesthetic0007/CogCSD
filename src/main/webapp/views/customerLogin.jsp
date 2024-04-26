<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bookstore Customer Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	background-color: #ffffff; /* White background */
	color: #333;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
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
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}

.navbar a.logout {
	float: right;
}

.sidebar {
	background-color: #f2f2f2; /* Light grey background */
	min-height: 100vh;
	padding: 20px 0;
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
}

.sidebar h3 {
	text-align: left; /* Align the menu text to the left */
	padding-bottom: 20px; /* Add some space below the menu text */
	padding-left: 20px; /* Add some space to the left of the menu text to align with the links */
}

.sidebar a {
	color: #333; /* Black color */
	padding: 15px 20px;
	display: block; /* Show the links initially */
	text-decoration: none;
	border-radius: 5px;
	margin-bottom: 10px; /* Decreased space between links for better spacing */
	font-size: 18px;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}

.sidebar a:hover {
	background-color: #d1d1d1; /* Darker grey color on hover */
	color: #333; /* Black color on hover */
}

.content {
	padding: 20px;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}

.footer {
	background-color: #2a6478; /* Peacock color */
	color: #fff;
	text-align: center;
	padding: 10px 0;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}

.admin-dashboard-footer {
	position: dynamic;
	bottom: 0;
	width: 100%;
	background-color: #2a6478; /* Peacock color */
	color: #fff;
	text-align: center;
	padding: 10px 0;
	z-index: 999;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}

.top-right-options {
	margin-top: 10px;
}

.top-right-options a {
	color: #fff;
	text-decoration: none;
	margin: 0 10px;
	font-family: 'Arial', 'Helvetica', sans-serif; /* Updated font */
}
</style>
</head>
<body>
	<nav class="navbar">
		<a href="/home">Bookstore</a>
		<div class="top-right-options">
			<a href="/home">Logout</a>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 sidebar">
				<h3 style="color: #333; cursor: pointer;" id="menu">Menu</h3> <!-- Added cursor style and id -->
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="/searchByAuthor">Search Book by Author</a></li>
					<li class="nav-item"><a class="nav-link" href="/searchByGenre">Search Book by Genre</a></li>
				</ul>
			</div>
			<div class="col-md-9 content">
				<h1 style="color: #007bff;">Welcome, Customer!</h1> <!-- Blue color -->
			</div>
		</div>
	</div>

	<!-- Customer Dashboard Footer -->
	<div class="admin-dashboard-footer">
		<p>© 2024 Bookstore Customer Dashboard</p>
	</div>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".navbar a").hover(function(){
				$(this).css("color", "#d1ecf1"); // Change color on hover
			}, function(){
				$(this).css("color", "#fff"); // Change color back on mouseout
			});
		});
	</script>
</body>
</html>
/html>