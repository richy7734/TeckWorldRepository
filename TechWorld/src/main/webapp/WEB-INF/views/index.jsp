<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
.thumbnail {
	width: 300px; 
	height: 200px;
	overflow: auto;
}

.thumbnail img { 
	height: 180px;
	display: block;
}
</style>

<spring:url value="/resources/images/carousel" var="car"></spring:url>
<spring:url value="/resources/images/products" var="product"></spring:url>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

	<br />
	<div class="container">
		<div id="homeCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#homeCarousel" data-slide-to="1"></li>
				<li data-target="#homeCarousel" data-slide-to="2"></li>
				<li data-target="#homeCarousel" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img alt="NVIDIA" src="${car}/nvidia.jpg">
				</div>
				<div class="item">
					<img alt="MSI" src="${car}/msi.jpg">
				</div>
				<div class="item">
					<img alt="HP" src="${car}/hp.jpg">
				</div>
				<div class="item">
					<img alt="INTEL" src="${car}/intel.jpg">
				</div>
			</div>
			<a class="left carousel-control" href="#homeCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#homeCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>

		</div>
	</div>

	<br />

	<div class="container">
		<c:forEach items="${thumb}" var="pro">
			<div class="col-xs-12 col-md-4">
				<a href="${contextRoot}/product/${pro.pId}" class="thumbnail"> <img
					src="${product}/${pro.pName}.jpg" alt="${pro.pName}" height="130px"
					width="200px">
				</a>
			</div>
		</c:forEach>
	</div>


</body>
</html>