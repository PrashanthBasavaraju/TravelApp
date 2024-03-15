<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-image:
		url('${pageContext.request.contextPath}/images/car1.jpg');
	background-size: cover;
	background-position: center;
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.card {
	background-color: rgba(255, 255, 255, 0.8);
	
	border: 1;
	box-shadow: 0 0 20px rgba(1, 0, 0, 0.2); /* Add shadow effect */
}
</style>
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h1 class="display-4 text-center">Login</h1>
					</div>
					<div class="card-body">

						<form action="${pageContext.request.contextPath}/login"
							method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" name="username"
									placeholder="Enter your username" required>
							</div>
							<div class="form-group">
								<label for="password">Password:</label> <input type="password"
									class="form-control" id="password" name="password"
									placeholder="Enter your password" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
