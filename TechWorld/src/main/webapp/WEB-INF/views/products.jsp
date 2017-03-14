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
<link href="${dt}/css/jquery.dataTables.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TechWorld - Products</title>
</head>
<body>

	<script type="text/javascript" src="${dt}/js/jquery.dataTables.js"></script>
	<br />
	<div class="container">
		<table id="productTable" class="table table-hover">
			<thead>
				<tr class="active">
					<th width="10%">Product Name</th>
					<th width="10%">Category</th>
					<th width="40%">Description</th>
					<th width="10%">Price</th>
					<th width="20%">Image</th>
					<th width="10%">View</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th width="10%">Product Name</th>
					<th width="10%">Category</th>
					<th width="40%">Description</th>
					<th width="10%">Price</th>
					<th width="20%">Image</th>
					<th width="10%">View</th>
				</tr>
			</tfoot>
		</table>
	</div>
</body>

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
										return '<a class = "btn btn-danger" href="${contextRoot}/product/'+data+'">View</a>';
									}
								} ]
					});
</script>
</html>