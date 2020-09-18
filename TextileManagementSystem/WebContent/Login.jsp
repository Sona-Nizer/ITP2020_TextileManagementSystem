<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="adminStyles.css" rel="stylesheet" type="text/css">
</head>
<body>

	<h1>Login</h1>
	<hr>
	
	<form action="LoginServlet" method="post">
	
	<div class="container">
	
		<label>Enter User Email</label><br><br>
		<input type="email" name="email" placeholder="Enter User Email" required><br><br><br>
		
		<label>Enter Password</label><br><br>
		<input type="password" name="password" placeholder="Enter Password" required><br><br><br>
		
		<label>Select User Type</label><br><br>
		<select class="select" name="userType" required>
				<option value="customer">Customer</option>
				<option value="supplier">Supplier</option>
				<option value="admin">Admin</option>
		</select><br><br><br>
		
		<input type="submit" value="Login" id="submit">

	</div>
	
	</form>

</body>
</html>