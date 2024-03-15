<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
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
</head>
<body>

	<div class="container text-center">
		<h1
			style="color: #145066; font-family: 'Arial', sans-serif; font-weight: bold;">Welcome
			To Admin DashBoard</h1>
		<div class="mt-5">
			<div class="row">
				<div class="col-md-6">
					<div class="card justify-content-center">
						<div class="card-header">
							<h2 class="display-4 text-center">Vehicle Details</h2>
						</div>
						<div class="card-body">
							<h3>Here you can find details about vehicles.</h3>


							<a href="${pageContext.request.contextPath}/vehicleall"
								class="btn btn-primary">View Vehicle Details</a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card justify-content-center">
						<div class="card-header">
							<h2 class="display-4 text-center">Cab Fare Details</h2>
						</div>
						<div class="card-body">
							<h3>Here you can find details about cab fares.</h3>


							<a href="${pageContext.request.contextPath}/caball"
								class="btn btn-primary">View CabFAre Details</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
