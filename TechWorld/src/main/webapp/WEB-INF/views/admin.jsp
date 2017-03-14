<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/images/products" var="product" />
<spring:url value="/resources/DataTables/media" var="dt" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Script for invoking Modal pop-up when update is clicked -->
<script>
	$(function() {
		var path = window.location.href;
		if (path.indexOf('update') > -1) {
			$('#updateProductModal').modal('show');
		}
	});
</script>
<link href="${dt}/css/jquery.dataTables.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>

	<script type="text/javascript" src="${dt}/js/jquery.dataTables.js"></script>
	<br />
	<div class="container">
		<a href="#" class="btn btn-info" data-toggle="modal"
			data-target="#addProductModal">Add Product</a><c:if test="${message != null}"><div class="alert alert-danger">${message}</div>
		</c:if>	
	</div>

	<div class="container">
		<table id="productTable" class="table table-hover">
			<thead>
				<tr class="active">
					<th width="12%">Product Name</th>
					<th width="12%">Category</th>
					<th width="36%">Description</th>
					<th width="10%">Price</th>
					<th width="20%">Image</th>
					<th width="10%">Action</th>
				</tr>
			</thead>
		</table>
	</div>
</body>
<div id="addProductModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Add Product</h4>
			</div>
			<div class="modal-body">
				<%@include file="Admin/addProduct.jsp"%>
			</div>
		</div>
	</div>
</div>
<div id="updateProductModal" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Update Product - ${pro.pName}</h4>
			</div>
			<div class="modal-body">
				<%@include file="Admin/updateProduct.jsp"%>
			</div>
		</div>
	</div>
</div>

<!-- Script for Data Table -->
<script type="text/javascript">
	$('#productTable')
			.DataTable(
					{
						ajax : {
							url : '/TechWorld/allProducts/data',
							dataSrc : ''
						},
						columns : [
								{
									data : 'pName'
								},
								{
									data : 'category'
								},
								{
									data : 'description'
								},
								{
									data : 'cost'
								},
								{
									data : 'pName',
									mRender : function(data, type, full) {
										return '<img src="${product}/'+data+'.jpg" height="170px" width="190px">';
									}
								},
								{
									data : 'pId',
									mRender : function(data, type, full) {
										return '<a class = "btn btn-danger" href="${contextRoot}/adm/update/product/'+data+'">Update</a>';
									}
								} ]
					});
</script>
</html>