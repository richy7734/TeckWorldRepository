<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<%@include file="header.jsp"%>
	<br />
	<br />
	<br />
	<div class="container">
		<div class="panel panel-danger col-sm-12">
		
				<div class = "panel-body">
					<div class="panel panel-primary col-sm-5">
						<h4>${billingAddress.type}</h4>
						<br/>
						<strong>Door no.: </strong>  ${billingAddress.door} - ${billingAddress.street}
						<br/>
						<strong>City:  </strong>     ${billingAddress.city}
						<br/>
						<strong>State: </strong>     ${billingAddress.state} 
						<br>
						<strong>PIN Code: </strong>  ${billingAddress.code}
						<br/>
						<br/>
						<center>
						<a class="btn btn-primary" href="${flowExecutionUrl}&_eventId=selectAddress">Select</a>
						<a class="btn btn-primary" href="${flowExecutionUrl}&_eventId=newAddress">New Address</a>
						</center>
						<br/>
					</div>
				</div>
		
		</div>
	</div>
</body>
</html>