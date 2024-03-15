<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Travel Application</title>
<style>
.custom-navbar {
	margin: 0 auto; /* Center the navbar horizontally */
	padding: 10px;
}

.custom-navbar .navbar-nav {
	margin-left: auto; /* Push items to the left */
}

.custom-navbar .navbar-brand {
	margin-right: auto; /* Push brand/logo to the left */
}

.custom-navbar .navbar-nav .nav-item {
	margin-left: 10px; /* Adjust spacing between items */
}

.custom-navbar a {
	font-weight: bold; /* Bold font for navbar items */
	text-decoration: none; /* Remove default underline */
}
</style>
</head>
<body>

	<div class="container" style="padding-top: 20px;">
		<nav class="navbar navbar-expand-lg navbar-dark custom-navbar"
			style="background-color: #012523; border-radius: 10px;">
			<!-- Add custom class to apply custom style -->
			<a class="navbar-brand" href="#" style="font-size: 24px;">Travel
				Application</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation"
				style="border: none; background: transparent;"></button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/bookingall">View
							Bookings</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/user">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/home">Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>

</body>
</html>
