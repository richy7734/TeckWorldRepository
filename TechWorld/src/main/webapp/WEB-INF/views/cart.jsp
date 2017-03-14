<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>
	<spring:url value="/resources/images/products" var="product" />

	<%@include file="shared/header.jsp"%>
	<br />
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-body">
				<table id="productTable" class="table table-hover">
					<thead>
						<tr class="active">
							<th width="16%">Product Name</th>
							<th width="7%">Qty</th>
							<th width="37%">Description</th>
							<th width="10%">Price</th>
							<th width="20%">Image</th>
							<th width="10%">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cart}" var="car">
							<tr>
								<td>${car.product.pName}</td>
								<td>${car.quantity}</td>
								<td>${car.product.description}</td>
								<td>&#8377 ${car.totalPrice}</td>
								<td><img src="${product}/${car.product.pName}.jpg"
									height="170px" width="190px"></td>
								<td><a class="btn btn-danger"
									href="${contextRoot}/user/delete/cartItem/${car.product.pId}">X</a> <a class="btn btn-success"
									href="${contextRoot}/user/addToCart/${car.product.pId}">+</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<pre>Grand Total : <strong>&#8377 ${cartDetails.grandTotal}</strong>									<a class = "btn btn-info active" href="${contextRoot}/user/checkoutData">Checkout</a></pre>
			</div>
		</div>
	</div>
</body>
</html>