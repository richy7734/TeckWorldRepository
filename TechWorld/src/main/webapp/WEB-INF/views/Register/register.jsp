<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.form-control {
	width: 500px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

	<%@include file="header.jsp"%>
	<br />
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Registration</div>
			<div class="panel-body">
				<form:form modelAttribute="user">
					<div class="form-group">
						<form:label path="fName" for="fName"></form:label>
						<form:input path="fName" placeholder="First Name" id="fName"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="fName" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="lName" for="lName"></form:label>
						<form:input path="lName" placeholder="Last Name" id="lName"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="lName" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="email" for="email"></form:label>
						<form:input path="email" placeholder="E-Mail" id="email"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="email" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="password" for="password"></form:label>
						<form:input path="password" placeholder="Password" type="password"
							id="password" class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="password" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="phone" for="phone"></form:label>
						<form:input path="phone" placeholder="Phone Number" id="imgUrl"
							class="form-control input-sm" width="300px" />
						<div class="has-error">
							<form:errors path="phone" class="help-inline" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="role" for="role"></form:label>
						<form:select path="role" id="role" class="form-control input-sm"
							width="300px">
							<form:option value="">--- Select ---</form:option>
							<form:option value="USER">User</form:option>
							<form:option value="SUPPLIER">Supplier</form:option>
						</form:select>
						<form:errors path="role" class="help-inline" />
					</div>

					<input name="_eventId_regAction" type="submit"
						class="btn btn-danger" value="Register">
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>