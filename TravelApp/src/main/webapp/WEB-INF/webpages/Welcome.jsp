<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Cab Booking System</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Apply background image to the entire page */
body {
	background-image:
		url('${pageContext.request.contextPath}/images/Home.jpg');
	background-size: cover;
	background-position: center;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.card {
	/* Optional: Customize card styles */
	max-width: 400px;
	width: 100%;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.8);
	/* Add some transparency to the card background */
}
</style>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6 text-center">
				<h2
					style="color: #0855BF; font-family: 'Arial', sans-serif; font-weight: bold;">Welcome
					to Cab Booking System</h2>

			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-6 text-center">
				<p>
					<a href="${pageContext.request.contextPath}/login"
						class="btn btn-success">Start</a>
				</p>
			</div>
		</div>
	</div>




	<!-- Bootstrap JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
