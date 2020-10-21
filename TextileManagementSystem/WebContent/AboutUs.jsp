<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  
<link href="styles/AboutUsStyle.css" rel="stylesheet" type="text/css">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<body>
<br><br>
   <div class="about-section">
  <h1>About Us </h1>
  <p>Who we are and what we do.</p>
  
</div>
<br>
<h2 style="text-align:center">Our Story</h2>
<div id="phara">
<p>Launched in 1999, WORLD OF FASHION offers a wide range of apparel to fit any unique sense of style.
 Our clothing and accessories are carefully curated to provide our customers the latest fashions.
  To keep our customers in style we post new arrivals daily, as well as offer stylist picks to help any indecisive shoppers. 
  WORLD OF FASHION is a fashionista’s best place to create the perfect wardrobe.
Beyond helping you look your best, WORLD OF FASHION strives to make every purchase a positive experience. <br><br>
Our top priorities are excellent customer service, exceptionally quick order processing, ultra fast shipping times, and a hassle-free return policy.
 We value your feedback, whether positive or constructive and we are continuously working to improve your experience.
If you are a first-time visitor or long-standing customer, we hope you will be thrilled with every aspect of your WORLD OF FASHION online shopping experience.<br></p>
  </div> <br><br>
   <div class="w3-content w3-section" >
  <img class="mySlides" src="Images/shop.jpg" >
  <img class="mySlides" src="Images/team.jpg" >
  <img class="mySlides" src="Images/em.jpg" >
</div>
   

<script>
var myIndex = 0;
carousel();
function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
<br><br><br><br>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</html>