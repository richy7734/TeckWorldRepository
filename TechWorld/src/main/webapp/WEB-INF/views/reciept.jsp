<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receipt</title>
</head>
<body>
<%@include file="Register/header.jsp"%>
<br>
	<div class="container">
		<div class="row">
			<div
				class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<address>
							<strong>Tech World</strong> <br> B12/174 Kendriya Vihar <br>
							Paruthipattu, Chennai 600071 <br> <abbr title="Phone">P:</abbr>
							+91-9489547615
						</address>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<p>
							<em>Date: 14th March, 2017</em>
						</p>
						<p>
							<em>Receipt #: 67</em>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="text-center">
						<h1>Receipt</h1>
					</div>
					</span>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Product</th>
								<th>#</th>
								
								<th class="text-center">Total</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="col-md-9"><em>Baked Rodopa Sheep Feta</em>
									</h4></td>
								<td class="col-md-1" style="text-align: center">2</td>
								
								<td class="col-md-1 text-center">${cart.grandTotal}</td>
							</tr>
							<tr>
								<td> </td>
								<td> </td>
								<td class="text-right">
									<p>
										<strong>Grand Total: </strong>
									</p>
								</td>
								<td class="text-center">
									<p>
										<strong>$6.94</strong>
									</p>
								</td>
							</tr>
							<tr>
						</tbody>
					</table>
					<a  class="btn btn-success btn-lg btn-block" href = "">
						Pay Now   <span class="glyphicon glyphicon-chevron-right"></span>
					</a>
					</td>
				</div>
			</div>
		</div>
	</div>
</body>
</html>