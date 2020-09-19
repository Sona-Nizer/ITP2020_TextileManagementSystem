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
<title>header</title>
<link href="styles/Admin_HeaderStyles.css" rel="stylesheet" type="text/css">
</head>

<body>

	<div class="header_container">
		<a href="index.jsp"><img src="images/logo.jpg" alt="Logo" class="logo"></a>
		<h1 class="headeH1">World of Fashion</h1>
		<br><br><br><br><br><br><br>
	</div>
	
	<hr>
	
	<div class="navbar">
  		<a href="AdminHome.jsp">Home</a>
  	
  		<div class="dropdown">
    		<button class="dropbtn">Product</button>
    			<div class="dropdown-content">
      				<a href="ProductAdd_Admin.jsp">Add New Product</a>
      				<a href="ProductList_Admin.jsp">View Products</a>
      				<a href="ProductList_Admin.jsp">Search Products</a>
    			</div>
  		</div> 
  
  		<div class="dropdown">
    		<button class="dropbtn">Report</button>
    			<div class="dropdown-content">
      				<a href="ProductList_Admin.jsp">Product</a>
    			</div>
  		</div>
  
  		<a href="ChangePassword.jsp">Change Password</a>
  		<a href="Login.jsp">Log Out</a>
  	
</div>
	
	
</body>
</html>