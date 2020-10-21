<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.itp.model.Order"%>
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

<meta charset="UTF-8">
<title>Order</title>

</head>

<body>
<div class="wrap">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

	<form method="POST" action="AddOrderServlet">

	
		<div class="container">
			

				
					<h1>Order</h1>
			
				<p>Placing an Order.</p>
				<hr>

				<div class=input>
					<label for="product">Select product </label><br>
						<input type="text"name="product" placeholder="Shirt.." required /><br> 
				
					<br> <label for="quantity">Enter Quantity</label><br> 
					<input type="number" name="quantity"  required /><br><br>
					
					<br> <label for="size">Enter Size</label><br> 
					<input type="text" name="size"  placeholder="S / M / L / XL"  required /><br><br>
					
					<div class="move">
					
					<label for="subTotal">SubTotal</label><br>
					  <input type="number" name="subTotal"   required /><br><br><br>
					  
					 <label for="discount">Discount</label>
					<p>0.00</p><br><br><br><br>
					<label for="total">Total</label><br>
					 <input type="number" name="total"  required /> <br>
				</div>
                    <br><br><br><br><br><br><br>
                   
                  

				<div style="margin-left:720px;margin-top:-100px">
					<input style="border-radius:15px;color:white;background-color:green" type="submit" id="outer" value="Confirm order"
						class="add-button" /> 
						
				     

				</div>
				<br>
	</form><br>
	 
	 <form  style="margin-left:3px;margin-top:-94px" method="POST" action="ListOrderServlet">
		 
     <input style="border-radius:15px;color:white" type="submit"  value="Show Order history" /> 
	</form>
	
	
	<form  style="margin-left:510px;margin-top:-54px" method="POST" action="AddDemoServlet">
		<input style="border-radius:100px;width:120px;background-color:red;color:white" type="submit" value="Demo"  />

	</form>
	
	
    

</div>
</div>
<br><br>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	


</body>

</html>



