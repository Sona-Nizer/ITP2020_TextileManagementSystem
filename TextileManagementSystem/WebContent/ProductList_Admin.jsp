<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.itp.model.*" %>
<%@ page import="com.itp.service.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link href="styles/AdminHome_Styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

	<h2>Product List</h2>
	<hr class="hrStyles"> <br>
	
	<form class="form-inline" action="ProductGetById_AdminServlet" method="post">
		
		<input type="text" name="id" placeholder="Search Product By ID">
	
	</form>
	
	<br>
	
	<div class="container">
	
 	<table border="1">
	<tr><th>Product ID</th>		<th>Product Name</th>
		<th>Category</th>		<th>Qty</th>
		<th>Size</th>			<th>Price</th>
		<th>Re-Order Level</th>	<th>Edit</th>
		<th>Delete</th>
	</tr>
	
	<%
		iProductService ip = new ProductServiceImpl();
		List<Product> list = ip.listProduct();
		
		for(Product p1: list) {
	%>
			<tr>  
				<td> <%=p1.getProductID() %></td>
				<td> <%=p1.getProductName() %></td>
				<td> <%=p1.getProductCategory() %></td>
				<td> <%=p1.getProductQty() %></td>
				<td> <%=p1.getProductSize() %></td>
				<td> <%=p1.getProductPrice() %></td>
				<td> <%=p1.getProductReOrderLevel() %></td>
				
				<td><a href="ProductGetById_AdminServlet?id=<%= p1.getProductID() %>">
					<i class="w3-xxlarge fa fa-pencil"></i></a></td>
				
				<td><a href="ProductDelete_AdminServlet?id=<%= p1.getProductID() %>">
					<i class="w3-xxlarge fa fa-trash"></i></a></td>
			</tr>
			
		<%
		}
		%>	

	</table>
	</div>
	
</body>
</html>