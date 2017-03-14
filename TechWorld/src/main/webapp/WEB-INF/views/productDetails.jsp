<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="/resources/images/products" var="pro" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1>${product.pName}</h1>
				</div>
			</div>
		</div>
		<!-- /.container -->
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-lg-5">
					<!-- artigo em destaque -->
					<div class="featured-article">
						<a href="#"> <img src="${pro}/${product.pName}.jpg" height="400" width="430" alt="${product.pName}"
							class="thumb">
						</a>
						<div class="block-title">
							<h2>${product.brand}</h2>
							<p class="by-author">
								<a href = "${contextRoot}/user/addToCart/${product.pId}" class = "btn btn-danger">Add to Cart</a>
							</p>
						</div>
					</div>
					<!-- /.featured-article -->
				</div>
				<div class="col-md-7 col-lg-7">
					<ul class="media-list main-list">
						<li class="media">
							<div class="media-body">
								<h3 class="media-heading">${product.brand}</h3>
							</div></li>
						<li class="media">
							<div class="media-body">
								<h4 class="media-heading">Cost: </h4>
								<p class="by-author">Rs. ${product.cost}</p>
							</div></li>
						<li class="media">
							<div class="media-body">
								<p class="by-author">${product.description}</p>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
</html>