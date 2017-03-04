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
	<form:form action="addProduct" method="POST"
		commandName="addProductCommand">
		<div class = "form-group">
			<form:label path="pName" for="pName"></form:label>
			<form:input path="pName" placeholder="Product Name" id = "pName" />
		</div>
		<div class = "form-group">
			<form:label path="brand" for="brand"></form:label>
			<form:input path="brand" placeholder="Brand" id = "brand" />
		</div>
		<div class = "form-group">
			<form:label path="category" for="category"></form:label>
			<form:input path="category" placeholder="Category" id = "category" />
		</div>
		<div class = "form-group">
			<form:label path="cost" for="cost"></form:label>
			<form:input path="cost" placeholder="Cost" id = "cost" />
		</div>
		<div class = "form-group">
			<form:label path="description" for="description"></form:label>
			<form:input path="description" placeholder="description" id = "description" />
		</div>
		<div class = "form-group">
			<form:label path="imgUrl" for="imgUrl"></form:label>
			<form:input path="imgUrl" placeholder="Image URL" id = "imgUrl" />
		</div>
		<input type="submit" class="btn btn-danger" value="submit">
	</form:form>

</body>
</html>