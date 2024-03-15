<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Cab Fare</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.custom-background {
	background-color: #A9CBDD;
}

.custom-card {
	border-radius: 15px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	background-color: #D7B4F1;
}

.container {
	margin-top: 20px;
}

.form-group {
	margin-bottom: 20px;
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
}

.btn-primary:hover {
	background-color: #0056b3;
	border-color: #0056b3;
}

body {
	background-color: #A9CBDD;
}
</style>
</head>
<body class="custom-background">
	<jsp:include page="cablinks.jsp"></jsp:include>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<div class="card custom-card">
					<div class="card-header">
						<h2 class="text-center">Modify Cab Fare</h2>
					</div>
					<div class="card-body">
						<form action="modifycabinfo" method="post"
							onsubmit="return validateForm()">
							<div class="form-group">
								<label for="id">ID:</label> <input type="text" id="id" name="id"
									class="form-control" value="${cabFares.id}" required>
							</div>
							<div class="form-group">
								<label for="pickupLoc">Pickup Location:</label> <input
									type="text" id="pickupLoc" name="pickupLoc"
									class="form-control" value="${cabFares.pickupLoc}">
							</div>
							<div class="form-group">
								<label for="dropLoc">Drop Location:</label> <input type="text"
									id="dropLoc" name="dropLoc" class="form-control"
									value="${cabFares.dropLoc}">
							</div>
							<div class="form-group">
								<label for="fare">Fare:</label> <input type="text" id="fare"
									name="fare" class="form-control" value="${cabFares.fare}">
							</div>
							<button type="submit" class="btn btn-primary btn-block">Modify
								Fare</button>
						</form>
					</div>
				</div>
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
	<script>
		function validateForm() {
			var id = document.getElementById('id').value;
			var pickupLoc = document.getElementById('pickupLoc').value;
			var dropLoc = document.getElementById('dropLoc').value;
			var fare = document.getElementById('fare').value;

			document.getElementById('idError').textContent = '';
			document.getElementById('pickupLocError').textContent = '';
			document.getElementById('dropLocError').textContent = '';
			document.getElementById('fareError').textContent = '';

			if (id.trim() === '') {
				document.getElementById('idError').textContent = 'Please enter ID';
				return false;
			}

			if (pickupLoc.trim() === '') {
				document.getElementById('pickupLocError').textContent = 'Please enter Pickup Location';
				return false;
			}

			if (dropLoc.trim() === '') {
				document.getElementById('dropLocError').textContent = 'Please enter Drop Location';
				return false;
			}

			if (fare.trim() === '') {
				document.getElementById('fareError').textContent = 'Please enter Fare';
				return false;
			}

			return true;
		}
	</script>
</body>
</html>
