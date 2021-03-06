<%@page import="com.itp.model.Order"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

html, body {
    height: 100%;
}
body {
    margin:0px;
    padding: 0px;
}

.input {
	width: 350px;
}



p {
	color: black;
}

label {
	color: black;
}
hr{
    width:400px;
      margin: 0px;
}



</style>
<link rel = "stylesheet" type = "text/css" href = "Styles/style2.css" />
<meta charset="ISO-8859-1">
<title>Order Management System</title>
</head>
<body>
<div class="wrap">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	
	
	<%
	    Order order = (Order) request.getAttribute("order");
	 
	%>

	<form method="POST" action="UpdateOrderServlet">
	<div class="container">
	
		
		<h1>Edit/Cancel Order </h1>
		<hr>
		  <div class="input">
		  
		    <label for="orderID">Order ID</label><br>
				<input type="text" name="orderID" disabled="disabled" value="<%=order.getOrderID()%>" />
			
		
				<br> <label for="product">Select Product</label><br>
				
					<input type="text"name="product" value="<%=order.getProduct()%>" required /><br> 
			
				<label for="quantity">Quantity</label><br>
				<input type="text" name="quantity" value="<%=order.getQuantity()%>" required/>
			
			   <label for="quantity">Size</label><br>
				<input type="text" name="size" value="<%=order.getSize()%>" required/>
			
			<div class="move">
			<label for="subTotal">Sub Total</label> <br>
			     <input type="text" name="subTotal" value="<%=order.getSubTotal()%>" required/> <br>
			
			<label for="discount">Discount</label><br>
				<%=order.getDiscount()%> <br><br>
			
			<label for="total">Total</label><br>
				<input type="text" name="total" value="<%=order.getTotal()%>" required/><br>
				
				
			<label for="purchaseDate">Purchase Date</label><br>
				 <%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
				<%= df.format(new java.util.Date()) %> <br><br>
			
			<br>
			<label for="status" >Order Status</label><br>
				<%=order.getStatus()%> 
			
			
		</div>
		
		 <br><br><br><br><br><br>
		<div style="margin-left:-5px;">
			<input type="hidden" name="orderID" value="<%=order.getOrderID()%>" />
			 <input type="submit" class="update-button value=" value="Save Changes" />
		</div>	
		<br>
	

	</form>   
	          <div style="margin-left:720px;margin-top:-75px;">
				<form method="POST" action="DeleteOrderServlet">
					<input type="hidden" name="orderID" value="<%=order.getOrderID()%>" /> 
					<input type="submit" value="Cancel Order" class="delete-button"/>
						
				</form>
				</div>
	

	
  </div>
 
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>