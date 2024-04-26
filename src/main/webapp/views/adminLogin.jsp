<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
Bootstrap CSS for styling and responsiveness
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
Add JQuery for animations
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
body {
	background-color: #f4f4f4;
	color: #333;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.navbar {
	background-color: #004085;
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
}

.navbar a:hover {
	color: #d1ecf1;
}

.sidebar {
	background-color: #343a40;
	min-height: 100vh;
	padding: 20px 0;
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
}

.sidebar a {
	color: #fff;
	padding: 15px 20px;
	display: none; /* Hide the links initially */
	text-decoration: none;
	border-radius: 5px;
	margin-bottom: 10px;
	font-size: 18px;
}

.sidebar a:hover {
	background-color: #495057;
	color: #fff; /* Hover color */
}

.content {
	padding: 20px;
}

.footer {
	background-color: #004085;
	color: #fff;
	text-align: center;
	padding: 10px 0;
}

.admin-dashboard-footer {
	position: dynamic;
	bottom: 0;
	width: 100%;
	background-color: #004085;
	color: #fff;
	text-align: center;
	padding: 10px 0;
	z-index: 999;
}

.top-right-options {
	margin-top: 10px;
}

.top-right-options a {
	color: #fff;
	text-decoration: none;
	margin: 0 10px;
}
</style>
</head>
<body>
	<nav class="navbar">
		<a href="/home">Home</a>
		<div class="top-right-options">
			<a href="/home">Logout</a>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 sidebar">
				<h3 style="color: #fff; cursor: pointer;" id="menu">Menu</h3> Added cursor style and id
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link" href="/addPatient">Add Patient</a></li>
					<li class="nav-item"><a class="nav-link" href="/updatePatient">Update Patient</a></li>
					<li class="nav-item"><a class="nav-link" href="/deletePatient">Delete Patient</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewPatient">View Patient</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewAllPatients">View All Patients</a></li>
				</ul>
			</div>
			<div class="col-md-9 content">
				<h1>Welcome, Admin!</h1>
			</div>
		</div>
	</div>

	Admin Dashboard Footer
	<div class="admin-dashboard-footer">
		<p>© 2024 Admin Dashboard</p>
	</div>

	Bootstrap JS for functionality
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	JQuery to handle click event and animation
	<script>
		$(document).ready(function(){
			$("#menu").click(function(){
				$(".nav-link").slideToggle("slow"); // Show/Hide the links with animation
			});
		});
	</script>
</body>
</html>
 -->
 
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bookstore Dashboard</title>
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
					<li class="nav-item"><a class="nav-link" href="/addBook">Add Book</a></li>
					<li class="nav-item"><a class="nav-link" href="/updateBookStock">Update Book-Stock</a></li>
                    <li class="nav-item"><a class="nav-link" href="/updateBookPrice">Update Book-Price</a></li>
					<li class="nav-item"><a class="nav-link" href="/deleteBook">Delete Book</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewAllBooks">View Books</a></li>
					<li class="nav-item"><a class="nav-link" href="/viewAllCustomers">View Customers</a></li>
				</ul>
			</div>
			<div class="col-md-9 content">
				<h1 style="color: #007bff;">Welcome, Admin!</h1> <!-- Blue color -->
			</div>
		</div>
	</div>

	<!-- Admin Dashboard Footer -->
	<div class="admin-dashboard-footer">
		<p>© 2024 Bookstore Dashboard</p>
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

 