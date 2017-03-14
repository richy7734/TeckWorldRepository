<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<spring:url value="/resources/bootstrap/js" var="js" />

<script type="text/javascript">
	window.nav = '${title}';
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
html {
	height: 100%;
}

body {
	height: 100%;
}

.wrapper {
	min-height: 100%;
	position: relative;
}

.footer {
	position: absolute;
	bottom: 0;
	height: 60px;
}

.pageBody {
	padding-bottom: 60px;
}
</style>
<title>TechWorld - ${title}</title>
</head>
<body>
	<div class="wrapper">
		<!-- --- Header--- -->
		<%@include file="./shared/header.jsp"%>

		<!-- --- Body --- -->
		<div class="pageBody">
			<!-- --- When user clicks on home or default --- -->
			<c:if test="${home == true}">
				<%@include file="index.jsp"%>
			</c:if>

			<!-- --- When user clicks on products --- -->
			<c:if test="${products == true}">
				<%@include file="products.jsp"%>
			</c:if>
			
			<!-- --- To view Single product --- -->
			<c:if test="${productDetails == true}">
				<%@include file="productDetails.jsp"%>
			</c:if>
			
			<!-- --- When user clicks on Admin --- -->
			<c:if test="${admin == true}">
				<%@include file="admin.jsp"%>
			</c:if>
			
			<!-- --- When user clicks on about us --- -->
			<c:if test="${aboutUs == true}">
				<%@include file="aboutUs.jsp"%>
			</c:if>
			

		</div>
		<!-- --- Footer --- -->
		<%@include file="./shared/footer.jsp"%>

		<!-- ---- JS file for navigation bar link active ---- -->
		<script type="text/javascript" src="${js}/navActive.js"></script>
	</div>
</body>
</html>