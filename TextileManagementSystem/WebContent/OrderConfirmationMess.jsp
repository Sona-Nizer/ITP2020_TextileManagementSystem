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



#his{
	width: 200px;

	 display: block;
  margin-right: auto;
  margin-left: auto;
  margin-top:30px;
	
}

.list-button{
background-color:#2874A6;
 padding: 15px 32px;
 color: white;
}



</style>
<meta charset="ISO-8859-1">
<title>World Of Fashion</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<body>

    <div class="wrap">
<br><br>
	<center><br><br>
		<h1>Thank you for shopping with us !</h1>
		<p>Your order will be delivered within three days of purchase</p>
	</center>
	
	<br><br>
<div id="his">
	<form method="POST" action="ListOrderServlet">
		<input type="submit" id="outer" value="Show Order History"
			class="list-button" />
		
	</form>
</div>

</div>

   <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>