<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
body {
	margin-top: 20px;
}

.panel-title {
	display: inline;
	font-weight: bold;
}

.checkbox.pull-right {
	margin: 0;
}

.pl-ziro {
	padding-left: 0px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Gateway</title>
</head>
<%@include file="Register/header.jsp"%>
<body>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-4"></div>
				<div class="panel-primary col-xs-12 col-md-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Payment Details</h3>
							<div class="checkbox pull-right">
								<label> <input type="checkbox" /> Remember
								</label>
							</div>
						</div>
						<div class="panel-body">
							<form role="form">
								<div class="form-group">
									<label for="cardNumber"> CARD NUMBER</label>
									<div class="input-group">
										<input type="text" class="form-control" id="cardNumber"
											placeholder="Valid Card Number" required autofocus /> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span></span>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-7 col-md-7">
										<div class="form-group">
											<label for="expityMonth"> EXPIRY DATE</label>
											<div class="col-xs-6 col-lg-6 pl-ziro">
												<input type="text" class="form-control" id="expityMonth"
													placeholder="MM" required />
											</div>
											<div class="col-xs-6 col-lg-6 pl-ziro">
												<input type="text" class="form-control" id="expityYear"
													placeholder="YY" required />
											</div>
										</div>
									</div>
									<div class="col-xs-5 col-md-5 pull-right">
										<div class="form-group">
											<label for="cvCode"> CV CODE</label> <input type="password"
												class="form-control" id="cvCode" placeholder="CV" required />
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span
								class="badge pull-right"><span
									class="glyphicon glyphicon-inr"></span>&#8377 ${cart.grandTotal}</span> Final Payment</a></li>
					</ul>
					<br /> <a href="${flowExecutionUrl}&_eventId=pay"
						class="btn btn-success btn-lg btn-block" role="button">Pay</a>
				</div>
		
			<div class="col-xs-12 col-md-4"></div>
		</div>
	</div>

</body>
</html>