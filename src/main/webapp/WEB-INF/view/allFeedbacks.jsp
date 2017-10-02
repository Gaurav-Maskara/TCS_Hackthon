<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Your Suggestions & Feedbacks</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"></c:url>">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mobile.css"></c:url>" media="screen and (max-width : 568px)">
<script type="text/javascript" src="<c:url value="/resources/js/mobile.js"></c:url>"></script>
<link rel="icon" href="<c:url value="/resources/images/mj.png"></c:url>" type="image/gif" sizes="16x16">
</head>

<body>
	<div id="header">
		<a href="<c:url value="/resources/html/index.html"></c:url>" class="logo"> <img
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
			<li><a href="<c:url value="/resources/html/feedback.html"></c:url>">feedback</a> </li>
			<li><a href="<c:url value="/feedbacks"></c:url>">allfeedbacks</a></li>

		</ul>
	</div>
	<div id="body">
		<h1>
			<span>Your Feedbacks</span>
		</h1>
		<br />
		<br />
		<div>

			<div class="table-responsive">
				<table
					class="table table-hover table table-condensed table-bordered">
					<thead>
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Message</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="feedback" items="${feedbacks}">
							<tr class="active">
								<td align="left">${feedback.name}</td>
								<td align="left">${feedback.email}</td>
								<td align="left">${feedback.message}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>
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

</body>
</html>