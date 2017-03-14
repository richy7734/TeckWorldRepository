<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
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
			.
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
					<li id="${contextRoot}/home"><a href="home"><b>Home</b></a></li>
					<li id="${contextRoot}/products"><a href="products"><b>Products</b></a></li>
					<li><a href="#"><b>Category</b></a></li>
					<li id="${contextRoot}/about"><a href="aboutUs"><b>About
								us</b></a></li>

				</ul>

				<ul class="nav navbar-nav navbar-right">
					<security:authorize access="isAuthenticated()">
						<li id="logout"><a href="logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						<li><a href="${contextRoot}/user/showCart"><span
								class="glyphicon glyphicon-shopping-cart"></span> <b>Cart</b></a></li>
					</security:authorize>
					<security:authorize access="hasRole(ADMIN)">
						<li><a href="${contextRoot}/adm/admin"><span
								class="glyphicon glyphicon-admin"></span> <b>Admin</b></a></li>

					</security:authorize>
					<security:authorize access="isAnonymous()">
						<li><a href="register"><span
								class="glyphicon glyphicon-admin"></span> <b>Register</b></a></li>

						<li><a href="${contextRoot}/login"><span
								class="glyphicon glyphicon-log-in"></span> <b>Login</b></a></li>
					</security:authorize>
				</ul>
			</div>
		</div>
	</div>
	</nav>
</body>
</html>