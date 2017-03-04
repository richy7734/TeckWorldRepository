<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<br/>
<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-4">
				<a href="#" data-toggle = "modal" data-target = "#addProductModal" class="thumbnail"> <img src="${product}/hp360.jpg"
					alt="HP 360" height="170px" width="210px">
					<pre><span><p>Add Products</p></span></pre>
				</a>
			</div>
			<div class="col-xs-12 col-md-4">
				<a href="#" data-toggle = "" data-target = "" class="thumbnail"> <img
					src="${product}/nvdia1080.jpg" alt="NVIDIA 1080" height="200px"
					width="210px">
				</a>
			</div>
			<div class="col-xs-12 col-md-4">
				<a href="#" data-toggle = "" data-target = "" class="thumbnail"> <img
					src="${product}/CoolMasterV8.jpg" alt="NVIDIA 1080" height="200px"
					width="210px">
				</a>
			</div>
		</div>
	</div>
	
	<div id = "addProductModal" class = "modal fade" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
				<div class = "modal-header">
				<h2 class = "modal-title">Add Products</h2>
				</div>
				<div class = "modal-body"><%@include file = "Admin/addProduct.jsp" %></div>
			</div>
		</div>
	</div>

</body>
</html>