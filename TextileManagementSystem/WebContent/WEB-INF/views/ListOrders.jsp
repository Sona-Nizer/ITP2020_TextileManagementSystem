<%@page import="com.itp.service.IOrderService"%>
<%@page import="com.itp.service.OrderServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.itp.model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

th,td{
font-size:20px;
}
a{
font-size:25px;
}
</style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>


	
<title>Order Management system</title>
</head>
<body>
 <div class="wrap">
	<br><br><br>
	<h1 style="text-align: center">My Orders</h1>
	
	<br>
	
	<div align="center">
	<form class="form-inline" method="POST" action="Search.jsp">
	<input style="width:450px;" type="text" class="form-control" name="orderID" placeholder="Search here..." />
	<button style="width:100px;" type="submit" name="save" class="btn btn-primary">Search</button>
	</form>
	</div>

	<div align="center">
		<table border="1" cellpadding="12" class="table" style="width:80%">


			<tr style="background-color:#2874A6">
				<th>Order ID</th>
				<th>Product</th>
				<th>Quantity</th>
				<th>Size</th>
				<th>Sub Total</th>
				<th>Discount</th>
				<th>Total</th>
				<th>Purchase Date</th>
				<th>Status</th>


			</tr>
			<% 
			      IOrderService iOrderService = new OrderServiceImpl();
                        	ArrayList<Order> arrayList = iOrderService.getOrders();
                        	
                        	for(Order order : arrayList){
              %>
            
			<tr>
				<td><%=order.getOrderID() %></td>
				<td><%=order.getProduct() %></td>
				<td><%=order.getQuantity() %></td>
				<td><%=order.getSize() %></td>
				<td><%=order.getSubTotal() %></td>
				<td><%=order.getDiscount() %></td>
				<td><%=order.getTotal() %></td>
				<%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
				<td><%= df.format(new java.util.Date()) %></td>
				<td><%=order.getStatus() %></td>
				

				<td>
					<form method="POST" action="GetOrderServlet">
						<input type="hidden" name="orderID"
							value="<%=order.getOrderID()%>" /> <input type="submit"
							value="Edit/Cancel Order" class="select-button" />
					</form>
				</td>
			</tr>

			

			<%	
			   }
            %>


<form action="ReportServlet">
<input type="submit" style="margin-left:1000px;margin-bottom:10px;font-size:20px;" value="Order Report" >
</form>

		</table>
	</div>


	<br>
	<a href="homeView.jsp"
		style="margin: 0 auto; display: block; text-align: center">Continue
		Shopping</a>


</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>