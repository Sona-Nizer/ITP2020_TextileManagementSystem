<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*" %> 
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
	<button type="submit" name="save" class="btn btn-primary" style="width:100px;">Search</button>
	</form>
	</div>
<br>
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
int count = 0;
try {
	
	
	Statement st;
	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "userdb";
	String driver = "com.mysql.cj.jdbc.Driver";
	String userName = "root"; 
	String password = "localhost";
	
		  Class.forName(driver).newInstance();
		  Connection connection = DriverManager.getConnection(url+dbName,userName,password);
		  
		  
		  String  orderID  = request.getParameter("orderID");
		  String query = "select * from `order` where orderID = '" +orderID + "' ";
		  
		   		
		 
		  st = connection.createStatement();
		  
		  ResultSet  rs = st.executeQuery(query);

		 	
			
		  while(rs.next()){
			  count++;
			  %>
			  <tr>
			  <td><%=rs.getString("orderID") %></td>
			  <td><%=rs.getString("product") %></td>
			  <td><%=rs.getString("quantity") %></td>
			  <td><%=rs.getString("size") %></td>
			  <td><%=rs.getString("subTotal") %></td>
			  <td><%=rs.getString("discount") %></td>
			  <td><%=rs.getString("total") %></td>
			  <%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
			  <td><%= df.format(new java.util.Date()) %> </td>
			  <td><%=rs.getString("status") %></td>
			 
			 <td>
					<form method="POST" action="GetOrderServlet">
						<input type="hidden" name="orderID"
							value="<%=rs.getString("orderID")%>" /> <input type="submit"
							value="Edit/Cancel Order" class="select-button" />
					</form>
				</td>
			
			 </tr>
			  <% 
			  
			  if (count == 0) {
				 
		            %>
		            <tr>
		                <td colspan=4 align="center"
		                    style="background-color:#eeffee"><b>No Record Found..</b></td>
		            </tr>
		             <%           
		            }
		           
		  }

}



catch(Exception e){
	  e.printStackTrace();
	  
	
	  }
		  %>
		  </table>
	</div>
		  <br>
	<a href="homeView.jsp" style="margin: 0 auto; display: block; text-align: center">Continue
		Shopping</a>


</div>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>

    