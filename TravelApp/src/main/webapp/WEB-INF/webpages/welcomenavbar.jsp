<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navigation Bar</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom style for the navigation bar */
.custom-navbar {
	background-color: #007bff; /* Change the background color */
}
</style>
</head>
<body>

	<div class="container">
		<nav
			class="navbar navbar-expand-lg navbar-light bg-light custom-navbar">
			<!-- Add custom class to apply custom style -->
			<a class="navbar-brand" href="#">My Application</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/caball">View CabFare</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/vehicleall">View
							Vehicles</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/bookingall">View
							Bookings</a></li>

				</ul>
			</div>
		</nav>
	</div>

</body>
</html>
