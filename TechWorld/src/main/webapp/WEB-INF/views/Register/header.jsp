<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/resources/bootstrap" var="boot" />

<script type="text/javascript" src="${boot}/js/jquery.min.js"></script>
<script src="${boot}/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${boot}/css/bootstrap.min.css">
<link href="${dt}/css/jquery.dataTables.min.css">

<style type="text/css">
.navbar-toggle {
	color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<div class="container">
		<!-- --- Jumbotron --- -->
		<div class="jumbotron text-center">
			<h2>Tech World</h2>
			<p>The place for your tech need...!!</p>
		</div>

		<!-- --- Naivgation Bar --- -->

		<div class="navrar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navBar">
					<span class="glyphicon glyphicon-send"></span>
				</button>
				<a class="navbar-brand" href="#">TechWorld</a>
			</div>
			<div class="collapse navbar-collapse" id="navBar">
				<ul class="nav navbar-nav">
					<li id="home"><a href="${contextRoot}/home"><b>Home</b></a></li>
					<li id="products"><a href="${contextRoot}/products"><b>Products</b></a></li>
					<li id="about"><a href="${contextRoot}/aboutUs"><b>About us</b></a></li>

				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
</body>
</html>