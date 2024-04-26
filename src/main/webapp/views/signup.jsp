<!DOCTYPE html>
<html>
<head>
<title>Signup Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap')
	;
body {
	font-family: 'Roboto', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background: linear-gradient(-45deg, #23a6d5, #23d5ab, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
}
@
keyframes gradient { 0% {
	background-position: 0% 50%;
}
50
%
{
background-position
:
100%
50%;
}
100
%
{
background-position
:
0%
50%;
}
}
.container {
	width: 350px;
	padding: 20px;
	background-color: white;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	animation: container 1s ease;
}
@
keyframes container { 0% {
	transform: scale(0);
	opacity: 0;
}

100
%
{
transform
:
scale(
1
);
opacity
:
1;
}
}
.container form {
	display: flex;
	flex-direction: column;
}
.container label {
	margin-bottom: 5px;
}
.container input[type="text"], .container input[type="password"],
	.container input[type="email"], .container input[type="tel"],
	.container select {
	width: calc(100% - 30px);
	padding: 10px;
	margin: 5px 0 15px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	transition: border 0.3s ease;
}
.container input[type="text"]:focus, .container input[type="password"]:focus,
	.container input[type="email"]:focus, .container input[type="tel"]:focus,
	.container select:focus {
	border-color: #4CAF50;
	outline: none;
}
.container .btn {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}
.container .btn:hover {
	background-color: #45a049;
}
.container .btn-signup {
	background-color: #007bff;
	text-align: center;
	padding: 12px 20px;
	margin-top: 10px;
	text-decoration: none;
	display: inline-block;
	color: white;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}
.container .btn-signup:hover {
	background-color: #0056b3;
}
.popup {
	display: none;
	position: fixed;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	background-color: rgba(0, 0, 0, 0.5);
}
.popup-content {
	position: absolute;
	left: 25%;
	right: 25%;
	top: 25%;
	bottom: 25%;
	margin: auto;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
}
.popup-content h2 {
	text-align: center;
}

.popup-content p {
	text-align: center;
}
.popup-content button {
	display: block;
	margin: auto;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Customer Signup:</h2>
		<form action="/signUp" method="post" onsubmit="return validateForm()">
			<div class="form-group">
				<label for="customerName">Customer Name:</label> <input type="text"
					id="customerName" name="customerName" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="phone">Phone Number:</label> <input type="tel"
					id="phone" name="phone" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					id="username" name="username" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" class="form-control" required>
			</div>
			<div class="form-group">
				<label for="role">Role</label>
				<!-- <input type="text" id="role" name="role" class="form-control" required> -->
				<select id="role" name="role">
					<option value="admin">Customer</option>
				</select>	
			</div>
			<button type="submit" class="btn btn-primary">Sign Up</button>
		</form>
	</div>
	<script>
	function validateForm() {
    var firstName = document.getElementById("customerName").value;
    //var lastName = document.getElementById("lastName").value;
    var email = document.getElementById("email").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var firstNameRegex = /^[A-Za-z]+$/;
    var emailRegex = /^[^\s@]+@(?:gmail|yahoo)\.com$/i; 
    var usernameRegex = /^[A-Za-z]+$/;
    if (!firstName.match(firstNameRegex)) {
      alert("First name must contain only letters.");
      return false;
    }  
    if (!email.match(emailRegex)) {
      alert("Invalid email address.");
      return false;
    }
    if (!username.match(usernameRegex)) {
      alert("Username must contain only letters.");
      return false;
    }
    if (password.length < 4) {
      alert("Password must be at least four characters long.");
      return false;
    } 
    return true;
  } 
</script>
</body>
</html>
