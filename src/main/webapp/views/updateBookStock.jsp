<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Book Stock</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <!-- ... rest of your styles ... -->
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

    <!-- Your CSS styles here -->
</head>
<body>
    <div class="container">
        <!-- Success message -->
        <c:if test="${not empty message}">
            <div class="alert alert-success" role="alert">
                ${message}
            </div>
        </c:if>

        <!-- Error message -->
        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger" role="alert">
                ${errorMessage}
            </div>
        </c:if>

        <form id="updateBookStockForm" action="/updateBookStock" method="post" onsubmit="redirect()">
            <label for="bookName"><b>Book Name</b></label>
            <input type="text" placeholder="Enter Book Name" name="title" required>
            <label for="authorName"><b>Author Name</b></label>
            <input type="text" placeholder="Enter Author Name" name="author" required>
            <label for="stockQuantity"><b>Stock Quantity</b></label>
            <input type="number" placeholder="Enter Stock Quantity" name="stockQuantity" required>
            <button type="submit" class="btn">Update Book Stock</button>
        </form>
    </div>
</body>
<script>
function redirect() {
    var message = '${message}';
    if (message === 'Book stock updated successfully!') {
        setTimeout(function(){ 
            window.location.href = '/adminLogin'; 
        }, 5000);
    }
}
</script>
</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Book Stock</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <!-- ... rest of your styles ... -->
  <!-- Your CSS styles here -->
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
</head>
<body>
    <div class="container">
        <!-- Success message -->
        <c:if test="${not empty message}">
            <div class="alert alert-success" role="alert">
                ${message}
            </div>
        </c:if>

        <!-- Error message -->
        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger" role="alert">
                ${errorMessage}
            </div>
        </c:if>

        <form id="updateBookStockForm" action="/updateBookStock" method="post">
            <label for="bookName"><b>Book Name</b></label>
            <input type="text" placeholder="Enter Book Name" name="title" required>
            <label for="authorName"><b>Author Name</b></label>
            <input type="text" placeholder="Enter Author Name" name="author" required>
            <label for="stockQuantity"><b>Stock Quantity</b></label>
            <input type="number" placeholder="Enter Stock Quantity" name="stockQuantity" required>
            <button type="submit" class="btn">Update Book Stock</button>
        </form>
    </div>
</body>
</html>
