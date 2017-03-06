<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<form:form action="addProduct" method="POST"
		commandName="addProductCommand" enctype="multipart/form-data">
		<div class="form-group">
			<form:label path="pName" for="pName"></form:label>
			<form:input path="pName" placeholder="Product Name" id="pName"
				class="form-control input-sm" width="300px" />
			<div class="has-error">
				<form:errors path="pName" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="brand" for="brand"></form:label>
			<form:input path="brand" placeholder="Brand" id="brand"
				class="form-control input-sm" width="300px" />
			<div class="has-error">
				<form:errors path="brand" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="category" for="category"></form:label>
			<form:select path="category" placeholder="Category" id="category"
				class="form-control input-sm" width="300" >
					<c:forEach items="${category}" var="cat"><form:option value="${cat.categories}">${cat.categories}</form:option></c:forEach>
			</form:select>
			<div class="has-error">
				<form:errors path="category" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="cost" for="cost"></form:label>
			<form:input path="cost" placeholder="Cost" id="cost"
				class="form-control input-sm" width="300px" />
			<div class="has-error">
				<form:errors path="cost" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="description" for="description"></form:label>
			<form:input path="description" placeholder="description"
				id="description" class="form-control input-sm" width="300px" />
			<div class="has-error">
				<form:errors path="description" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="imgUrl" for="imgUrl"></form:label>
			<form:input path="imgUrl" placeholder="Image URL" id="imgUrl"
				class="form-control input-sm" width="300px" />
			<div class="has-error">
				<form:errors path="imgUrl" class="help-inline" />
			</div>
		</div>
		<div class="form-group">
			<form:label path="image" for="image"></form:label>
			<form:input path="image" placeholder="Image Upload" id="imgUrl"
				class="form-control input-sm" width="300px" type = "file" />
			<div class="has-error">
				<form:errors path="image" class="help-inline" />
			</div>
		</div>
		<input type="submit" class="btn btn-danger" value="submit">
	</form:form>

</body>
</html>