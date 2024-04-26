<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hospital Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
.header {
	position: sticky;
	top: 0;
	z-index: 1000; /* Ensure the header stays on top of other elements */
}

body {
	color: #333;
	font-family: Arial, sans-serif;
}

.header, .footer {
	background-color: darkblue;
	/* Change the background color to dark blue */
	padding: 15px 0;
	color: white; /* Change the text color to white for better contrast */
}

.header nav, .footer nav {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.header nav a, .footer nav a {
	color: white; /* Change the link color to white for better contrast */
	text-decoration: none;
	margin-left: 20px;
	transition: color 0.3s;
}

.header nav a:hover, .footer nav a:hover {
	color: #007bff;
}

.main-content {
	padding: 50px;
	color: #333;
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.active {
	background-color: rgba(0, 123, 255, 0.1); /* Highlight color */
	border-radius: 4px; /* Rounded corners */
}

.logo {
	width: 300px;
	height: auto;
}

.footer-logo {
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

</head>
<body>
	<header class="header">
		<div class="container">
			<nav>
				<a href="/login">login</a><a href="#">Services</a><a href="#">Contact</a>
				<a href="login" class="btn btn-primary">Login</a>
			</nav>
		</div>
	</header>




	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html> --%>






<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>



<html lang="en">



<head>



<meta charset="UTF-8">



<meta name="viewport" content="width=device-width, initial-scale=1.0">



<title>Bookstore Management System</title>



<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">



<style>
.header {
	position: sticky;
	top: 0;
	z-index: 1000; /* Ensure the header stays on top of other elements */
	background-color: #4CAF50;
	/* Change header background color to pleasant green */
	padding: 15px 0;
	color: white; /* Change text color to white */
}

body {
	color: #333;
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	/* Change body background color to light gray */
}

.header nav, .footer nav {
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.header nav a, .footer nav a {
	color: white; /* Change link color to white */
	text-decoration: none;
	margin-left: 20px;
	transition: color 0.3s;
}

.header nav a:hover, .footer nav a:hover {
	color: #007bff; /* Change link color on hover */
}

.main-content {
	padding: 50px;
	color: #333;
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #fff;
	/* Change inner content box background color to white */
	font-size: 18px; /* Increase font size for better readability */
	line-height: 1.6; /* Increase line height for better readability */
}

.active {
	background-color: rgba(0, 123, 255, 0.1); /* Highlight color */
	border-radius: 4px; /* Rounded corners */
}

.logo {
	width: 300px;
	height: auto;
}

.footer {
	background-color: #4CAF50;
	/* Change footer background color to pleasant green */
	color: white; /* Change text color to white */
	padding: 15px 0;
	text-align: center;
}

.footer:hover {
	background-color: #45a049;
	/* Darken footer background color on hover */
}
</style>

</head>



<body>



	<header class="header">



		<div class="container">



			<nav>



				<a href="/About">About</a> <a href="#">Contact</a> <a href="/login"
					class="btn btn-primary">Login</a>



			</nav>



		</div>



	</header>

	<div class="container main-content">



		<h1 class="display-4">Welcome to the Bookstore Management System</h1>



		<p class="lead">Explore endless worlds, one page at a time.</p>



		<p class="mb-4">From classics to contemporary bestsellers, we've
			got something for every bookworm.</p>



		<p>With our intuitive management system, managing your bookstore
			has never been easier.</p>



	</div>







	<footer class="footer">



		<div class="container">



			<p>&copy; 2024. All rights reserved. Bookstore Management System</p>

		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>



	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



</body>



</html>
 --%>
 
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Learner's Paradise - Bookstore Management System</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body {
      font-family: 'Times New Roman', serif; /* Changed font for the body */
      background-image: url('library2.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      color: #fff;
    }
    .header {
      background-color: rgba(0, 0, 0, 0.5);
      padding: 15px 0;
    }
    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
      color: #FF6347; /* Changed color */
    }
    .navbar-nav .nav-item .nav-link {
      font-family: 'Verdana', sans-serif; /* Changed font for navigation links */
      margin-right: 20px;
      color: #ADD8E6; /* Changed color */
    }
    .main-content {
      padding: 50px;
      text-align: center;
    }
    .main-content h1 {
      font-family: 'Georgia', serif;
      font-size: 48px;
      margin-bottom: 30px;
      color: #32CD32; /* Changed color */
      animation: fadeInUp 1s ease;
    }
    .main-content p {
      font-size: 18px;
      margin-bottom: 40px;
      color: #F0E68C; /* Changed color */
      animation: fadeInUp 1s ease;
    }
    .btn-get-started {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 30px;
      border: none;
      border-radius: 25px;
      font-size: 18px;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    .btn-get-started:hover {
      background-color: #45a049;
      transform: scale(1.05);
    }
    .footer {
      background-color: rgba(0, 0, 0, 0.5); /* Changed color */
      color: #fff;
      padding: 15px 0;
      text-align: center;
    }
    .footer p {
      font-family: 'Courier New', monospace; /* Changed font for footer */
    }
  </style>
</head>
<body>
  <header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="#">Bookstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="container main-content">
    <h1>Learner's Paradise</h1>
    <p>Embark on a journey through the pages of knowledge.</p>
    <a href="#" class="btn btn-get-started">Get Started</a>
  </div>
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p>© 2024. All rights reserved[^1^][1]. Bookstore Management System</p>
        </div>
        <div class="col-md-6 text-right">
          <p>Contact us: contact@bookstore.com</p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
 
 --%>


 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>  
 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Learner's Paradise - Bookstore Management System</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

    body {
      font-family: 'Roboto', sans-serif;
      background-image: url('library2.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      color: #fff;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .header {
      background-color: rgba(0, 0, 0, 0.5);
      padding: 15px 0;
    }

    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
    }

    .navbar-nav .nav-item {
      margin-right: 20px;
    }

    .main-content {
      padding: 50px;
      text-align: center;
      flex-grow: 1;
    }

    .main-content h1 {
      font-size: 48px;
      margin-bottom: 30px;
      animation: fadeInUp 1s ease;
    }

    .main-content p {
      font-size: 18px;
      margin-bottom: 40px;
      animation: fadeInUp 1s ease;
    }

    .btn-get-started {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 30px;
      border: none;
      border-radius: 25px;
      font-size: 18px;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .btn-get-started:hover {
      background-color: #45a049;
      transform: scale(1.05);
    }

    .footer {
      background-color: rgba(0, 0, 0, 0.5);
      color: #fff;
      padding: 15px 0;
      text-align: center;
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body>
  <header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="/home">Bookstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="container main-content">
    <h1>Learner's Paradise</h1>
    <p>Embark on a journey through the pages of knowledge.</p>
    <a href="/login" class="btn btn-get-started">Get Started</a>
  </div>
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p>© 2024 All rights reserved</p>
        </div>
        <div class="col-md-6 text-right">
          <p>Contact us: learnerparadise@bookstore.com</p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>





<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Learner's Paradise - Bookstore Management System</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');
    body {
      font-family: 'Roboto', sans-serif;
      background-image: url('library2.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      color: #fff;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    .header {
      background-color: rgba(0, 0, 0, 0.5);
      padding: 15px 0;
    }
    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
    }
    .navbar-nav .nav-item {
      margin-right: 20px;
    }
    .main-content {
      padding: 50px;
      text-align: center;
      flex-grow: 1;
    }
    .main-content h1 {
      font-size: 48px;
      margin-bottom: 30px;
      animation: fadeInUp 1s ease;
    }
    .main-content p {
      font-size: 18px;
      margin-bottom: 40px;
      animation: fadeInUp 1s ease;
    }
    .btn-get-started {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 30px;
      border: none;
      border-radius: 25px;
      font-size: 18px;
      font-weight: bold;
      text-transform: uppercase;
      letter-spacing: 1px;
      cursor: pointer;
      transition: all 0.3s ease;
    }
    .btn-get-started:hover {
      background-color: #45a049;
      transform: scale(1.05);
    }
    .footer {
      background-color: rgba(0, 0, 0, 0.5);
      color: #fff;
      padding: 15px 0;
      text-align: center;
    }
    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }
    .book-image {
      display: flex;
      justify-content: center;
      margin-top: 50px; /* Adjust as needed */
    }
    .book-image img {
      max-width: 100%;
      height: auto;
    }
    .text-and-button {
      text-align: center;
      margin-top: 20px; /* Adjust as needed */
    }
  </style>
</head>
<body>
  <header class="header">
    <nav class="navbar navbar-expand-lg navbar-dark">
      <div class="container">
        <a class="navbar-brand" href="#">Bookstore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/login">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <div class="container main-content">
    <div class="book-image">
      <img src="library2.jpg" alt="Book Image">
    </div>
    <div class="text-and-button">
      <h1>Learner's Paradise</h1>
      <p>Embark on a journey through the pages of knowledge.</p>
      <a href="/login" class="btn btn-get-started">Get Started</a>
    </div>
  </div>
  <footer class="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p>© 2024 All rights reserved</p>
        </div>
        <div class="col-md-6 text-right">
          <p>Contact us: learnerparadise@bookstore.com</p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
 --%>
