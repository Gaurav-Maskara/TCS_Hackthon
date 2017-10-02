<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Be My Fan</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"></c:url>">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/mobile.css"></c:url>"
	media="screen and (max-width : 568px)">
<script type="text/javascript"
	src="<c:url value="/resources/js/mobile.js"></c:url>"></script>
	<link rel="icon" href="<c:url value="/resources/images/mj.png"></c:url>" type="image/gif" sizes="16x16">
</head>
<body>

	<div id="header">
		<a href="<c:url value="/resources/html/index.html"></c:url>"
			class="logo"> <img
			src="<c:url value="/resources/images/logo.jpg"></c:url>" alt="">
		</a>
		<ul id="navigation">
			<li class="selected"><a
				href="<c:url value="/resources/html/index.html"></c:url>">home</a></li>
			<li><a href="<c:url value="/resources/html/about.html"></c:url>">about</a>
			</li>
			<li><a
				href="<c:url value="/resources/html/gallery.html"></c:url>">gallery</a>
			</li>
			<li><a href="<c:url value="/resources/html/video.html"></c:url>">my
					videos</a></li>
			<li><a
				href="<c:url value="/resources/html/feedback.html"></c:url>">feedback</a>
			</li>
			<li><a
				href="<c:url value="/feedbacks"></c:url>">all feedbacks</a>
			</li>
			
		</ul>
	</div>
	<div id="body">
		<div id="featured">
			<img class="mySlides" src=" <c:url value="/resources/images/the-beacon2.jpg"></c:url>" alt="">
			<img class="mySlides" src=" <c:url value="/resources/images/the-beacon.jpg"></c:url>" alt="">
			<img class="mySlides" src=" <c:url value="/resources/images/the-beacon3.jpg"></c:url>" alt="">
			<img class="mySlides" src=" <c:url value="/resources/images/the-beacon4.jpg"></c:url>" alt="">
			<div>
				<h2>I am the greatest rockstar</h2>
				<span>the true king of pop music</span>
				 <span>have been featured on MTV</span> 
				 <span>I have also won grammy legend award and many oscars </span> <a href="<c:url value="/resources/html/about.html"></c:url>" class="more">read
					more</a>
			</div>
		</div>
		<ul>
			<li><a
				href=" <c:url value="/resources/html/gallery.html"></c:url>"> <img
					src=" <c:url value="/resources/images/the-father.jpg"></c:url>"
					alt=""> <span>My France Tour</span>
			</a></li>
			<li><a
				href=" <c:url value="/resources/html/gallery.html"></c:url>"> <img
					src="<c:url value="/resources/images/the-actor.jpg"></c:url>"
					alt=""> <span>My USA Tour</span>
			</a></li>
			<li><a
				href=" <c:url value="/resources/html/gallery.html"></c:url>"> <img
					src="<c:url value="/resources/images/the-nerd.jpg"></c:url>" alt="">
					<span>The Moonwalker</span>
			</a></li>
		</ul>
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
    setTimeout(carousel, 2000); 
}
</script>
	
	<div id="footer">
		<div>
			<p>&copy; TCS Hackthon by Gaurav Maskara</p>
			<ul>
				<li><a
					href="https://twitter.com/"
					id="twitter">twitter</a></li>
				<li><a href="https://www.facebook.com/"
					id="facebook">facebook</a></li>
				<li><a href="https://plus.google.com/"
					id="googleplus">googleplus</a></li>
				<li><a
					href="https://www.pinterest.com/"
					id="pinterest">pinterest</a></li>
			</ul>
		</div>
	</div>

	<div align=right>
		<img src='http://www.counter12.com/img-dA8WdC7Yzday04yw-1.gif' border='0'
			alt='free web counter'>
		<script type='text/javascript'
			src='http://www.counter12.com/ad.js?id=dA8WdC7Yzday04yw'></script>
	</div>
</body>
</html>
