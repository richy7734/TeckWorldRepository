<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.form-control {
	width: 500px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@include file="shared/header.jsp"%>
	<br />
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Login</div>
			<div class="panel-body">
				<form action="" method="POST">
					<div class="form-group">
						<label name="username" for="username"></label> <input
							name="username" placeholder="User name" id="username"
							class="form-control input-sm" width="300px" />
					</div>
					<div class="form-group">
						<label name="password" for="password"></label>
						<input name="password" placeholder="Password" id="password"
							class="form-control input-sm" width="300px" />
					</div>
					<input type="submit"
						class="btn btn-danger" value="Login">
				</form>
			</div>
		</div>
	</div>
</body>
</html>