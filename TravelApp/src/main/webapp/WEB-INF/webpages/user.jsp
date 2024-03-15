<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #A9CBDD;
	background-size: cover;
	background-position: center;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.card {
	max-width: 400px;
	width: 100%;
	padding: 20px;
	background-color: rgba(214, 245, 244, 0.2);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}
</style>
<body>

	<div class="container text-center">
		<h1
			style="color: #145066; font-family: 'Arial', sans-serif; font-weight: bold;">Welcome
			To User DashBoard</h1>
		<div class="mt-5">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<div class="card ">
						<div class="card-header justify-content-center">
							<h2 class="display-4 text-center">Booking Details</h2>
						</div>
						<div class="card-body">
							<h3>Here you can find details about Booking.</h3>


							<a href="${pageContext.request.contextPath}/bookingall"
								class="btn btn-primary">View Booking Details</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
