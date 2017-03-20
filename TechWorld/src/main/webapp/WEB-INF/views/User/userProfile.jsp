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
	<div class="container">
		<div class="panel panel-warning col-md-5">
			<div class="thumbnail">
				<img src="${user}/${user.fName}.jpg" alt="${user.fName}"
					height="130px" width="200px">
			</div>
		</div>
		<div class="col-md-4">
			<div class="">
				<form:form action="${contextRoot}/prifile/image">
					<form:input path="profileImage" class="form-control-file input-sm"
						width="300px" aria-describedby="fileHelp" type="file" />
					<input type="submit" value ="Uplaod" class = "btn btn-warning">
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>