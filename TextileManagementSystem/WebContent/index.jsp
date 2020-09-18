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
<title>Home Page</title>
<link href="styles/HomeStyles.css" rel="stylesheet" type="text/css">
</head>
<body>
		
		<jsp:include page="HomeHeader.jsp"></jsp:include>
		
		<br><br>

		<div class="slideshow-container">

			<div class="mySlides fade">
  				<img src="images/slideshow/ss1.jpg" style="width:100%; height:500px">
  				<div class="text">All mocked Up</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss2.jpeg" style="width:100%; height:500px">
  				<div class="text">Baby Frock</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss3.jpeg" style="width:100%; height: 500px">
  				<div class="text">Black Beauty</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss4.jpg" style="width:100%; height: 500px">
  				<div class="text">Adidas</div>
			</div>

			<div class="mySlides fade">
				<img src="images/slideshow/ss5.jpeg" style="width:100%; height: 500px">
  				<div class="text">Enchantment</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss6.jpg" style="width:100%; height: 500px">
  				<div class="text">Holi</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss7.png" style="width:100%; height: 500px">
  				<div class="text">Shapes Crazy</div>
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow/ss8.jpg" style="width:100%; height: 500px">
  				<div class="text">Tops on Trend!</div>
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>

		</div>
		<br>

			<div style="text-align:center">
  			<span class="dot" onclick="currentSlide(1)"></span> 
  			<span class="dot" onclick="currentSlide(2)"></span> 
  			<span class="dot" onclick="currentSlide(3)"></span> 
  			<span class="dot" onclick="currentSlide(4)"></span> 
  			<span class="dot" onclick="currentSlide(5)"></span>
  			<span class="dot" onclick="currentSlide(6)"></span>
  			<span class="dot" onclick="currentSlide(7)"></span>
  			<span class="dot" onclick="currentSlide(8)"></span>
		</div>
		
		<br>
		<hr>

	<div class="row">
 			 <div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/men.jpg" style="width:500px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Men's Wear</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Men's Wear</h2>
  			</div>
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/boys.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Boys' Wear</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Boys' Wear</h2>
  			</div>
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/babies.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Babies' Wear</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Babies' Wear</h2>
  			</div>
  		</div>
  		
  		<br><br>
  		
  		<!-- second row of flip image -->
  		
  			<div class="row">
 			 <div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/women.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Women's Wear</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Women's Wear</h2>
  			</div>
  			
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/girls.jpeg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Girls' Wear</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Girls' Wear</h2>
  			</div>
  			
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/essentials.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<h2><a href="#">Essentials</a></h2>
      			<h3>Check out the New Arrivals!</h3>
    			</div>
  			</div>
			</div>
 			<h2>Essentials</h2>
  			</div>
  		</div>
  		
  		<hr>
		

<!-- Script for slide show -->
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>


</body>
</html>