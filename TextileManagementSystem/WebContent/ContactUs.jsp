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
<title>Contact Us</title>
<link href="styles/contact.css" rel="stylesheet" type="text/css">
</head>
<body>

	<form action=Contact_AddServlet method="post">
	
	<h1>Contact Us</h1>
	<hr>
	
	<div class="container">
	
	<label>Enter Name</label><br><br>
	<input type="text" name="name" placeholder="Enter Name" required><br><br><br>
	
	<label>Enter Email</label><br><br>
	<input type="email" name="email" placeholder="Enter Email" required><br><br><br>
	
	<label>Enter Subject</label><br><br>
	<input type="text" name="subject" placeholder="Enter Subject"><br><br><br>
	
	<label>Type Your Message</label><br><br>
	<textarea name="message" class="txt" rows="4" cols="70" 
		placeholder="Type YourResponse Here" required>
		</textarea><br><br><br>
	
	<input type="submit" value="Submit Response" id="submit">
	<input type="reset" value="Reset Form" id="reset">
		
	</div>
	</form>

</body>
</html>