<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tech World - Registration Confirm</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<br>
	<div class="container">
		<div class="alert alert-danger">
			<strong>Confirm </strong> your address details
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<div class="panel panel-danger">
				<div class="panel-body">
					
						<div class="panel panel-primary">
							<div class="panel-heading">Address</div>
							<div class="panel-body">
								<p>${billingAddress.door}-${billingAddress.street}</p>
								<p>${billingAddress.city}</p>
								<p>${billingAddress.state}</p>
								<p>${billingAddress.code}</p>
								<br> <a class="btn btn-danger"
									href="${flowExecutionUrl}&_eventId=edit">Edit</a> <a
									class="btn btn-primary"
									href="${flowExecutionUrl}&_eventId=confirm">Confirm</a>
							</div>
						</div>
					
				</div>
			</div>
		</div>
		<div class="col-sm-4"></div>
	</div>
</body>
</html>
