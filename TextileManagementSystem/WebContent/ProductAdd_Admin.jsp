<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<link href="styles/Admin_Styles.css" rel="stylesheet" type="text/css">
</head>

<body>

	<%
		if (session.getAttribute("userEmail") == null || 
			session.getAttribute("userType").equals("customer") || 
			session.getAttribute("userType").equals("supplier")) {
			
				response.sendRedirect("Login.jsp");
		}
	%>
	
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<h2>Add Product</h2>
	<hr class="hrStyles">
	
	<div class="container">
	
	<form action="ProductAdd_AdminServlet" method="post">
	
		<label>Enter Product ID</label><br><br>
		<input type="text" name="id" placeholder="Enter Product ID" required><br><br><br>
		
		<label>Enter Product Name</label><br><br>
		<input type="text" name="name" placeholder="Enter Product Name" required><br><br><br>
		
		<label>Choose Category</label><br><br>
		<select class="select" name="category" required>
				<option value="Mens' wear">Men's wear</option>
				<option value="Women's wear">Women's wear</option>
				<option value="Boys' wear">Boys' wear</option>
				<option value="Girls' wear">Girls' wear</option>
				<option value="Babies' wear">Babies' wear</option>
				<option value="Essentials">Essentials</option>
		</select><br><br><br>
		
		<label>Enter Product Quantity</label><br><br>
		<input type="number" name="qty" placeholder="Enter Quantity" required><br><br><br>
		
		<label>Enter Size</label><br><br>
		<input type="text" name="size" placeholder="Enter Size" required><br><br><br>
		
		<label>Enter Price</label><br><br>
		<input type="number" name="price" placeholder="Enter Price" required><br><br><br>
		
		<label>Enter Re-Order Level</label><br><br>
		<input type="number" name="reOrderLevel" placeholder="Enter Re-Order Level" required><br><br><br>
		
		<!-- image to be added into form -->
		<label>Upload Image</label><br><br>
		<input type="file" name="image" placeholder="Select file"><br><br><br>
		
		<input type="submit" value="Add Product" id="submit">
		<input type="reset" value="Reset Form" id="reset">
	
		<br><br>
	</form>
	
			<form action="Demo_ProductAdd_AdminServlet" method="post">
		
			<input type="submit" value="Demo Add Product" id="submit">
		
		</form>
		</div>

</body>
</html>