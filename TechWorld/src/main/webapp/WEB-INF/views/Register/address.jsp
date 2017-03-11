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
	<div class="container">
		<div class="alert alert-success"><strong>Congrats!!!! </strong>You have
			successfully registered</div>
	</div>
	<br />
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Registration</div>
			<div class="panel-body">
				<form:form modelAttribute="billingAddress">
					<div class="form-group">
						<form:label path="door" for="door"></form:label>
						<form:input path="door" placeholder="Door Number" id="door"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="door" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="street" for="street"></form:label>
						<form:input path="street" placeholder="Street" id="street"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="street" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="city" for="city"></form:label>
						<form:input path="city" placeholder="City" id="city"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="city" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="state" for="state"></form:label>
						<form:input path="state" placeholder="State" type="state"
							id="state" class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="state" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="code" for="state"></form:label>
						<form:input path="code" placeholder="ZIP-Code" type="code"
							id="code" class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="code" class="help-inline" />
						</div>
					</div>
					<input name="_eventId_regBillAddAction" type="submit"
						class="btn btn-danger" value="Add Address">
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>