<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.util.*" %>
 <%@ page import="com.itp.model.*" %>
 <%@ page import="com.itp.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
<link href="styles/AdminHome_Styles.css" rel="stylesheet" type="text/css">
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
	
	<h2>Update Product</h2>
	<hr class="hrStyles">
	
	<% 
		Product p1 = (Product) request.getAttribute("p1");
		String ID = p1.getProductID();
	%>
	<div class="container">
	
	<form action="ProductEdit_AdminServlet?id=<%= ID %>" method="post">
		
		<label>Product ID</label>
		<p class="inputHidden"><%= p1.getProductID() %></p><br><br>
		
		<label>Change Product Name</label><br><br>
		<input type="text" name="name" value="<%= p1.getProductName() %>"><br><br><br>
		
		<label>Change Product Category</label><br><br>
		<select class="select" name="category">
				<option value="<%= p1.getProductCategory() %>" selected><%= p1.getProductCategory() %></option>
				<option value="Mens' wear">Men's wear</option>
				<option value="Women's wear">Women's wear</option>
				<option value="Boys' wear">Boys' wear</option>
				<option value="Girls' wear">Girls' wear</option>
				<option value="Babies' wear">Babies' wear</option>
				<option value="Essentials">Essentials</option>
		</select><br><br><br>
		
		<label>Change Product Quantity</label><br><br>
		<input type="number" name="qty" value="<%= p1.getProductQty() %>"><br><br><br>
		
		<label>Change Product Size</label><br><br>
		<input type="text" name="size" value="<%= p1.getProductSize() %>"><br><br><br>
		
		<label>Change Product Price</label><br><br>
		<input type="number" name="price" value="<%= p1.getProductPrice() %>"><br><br><br>
		
		<label>Change Product Re-Order Level</label><br><br>
		<input type="number" name="reOrderLevel" value="<%= p1.getProductReOrderLevel() %>"><br><br><br>
		
		
		<input type="submit" value="Edit Product" id="submit">
		<input type="reset" value="Reset Form" id="reset">
	
	</form>
	</div>

</body>
</html>