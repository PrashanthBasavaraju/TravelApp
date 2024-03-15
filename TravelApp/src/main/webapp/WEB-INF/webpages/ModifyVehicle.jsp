<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Vehicle Information</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS */
.container {
	
}

.card-custom {
	border-radius: 15px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	background-color: #D7B4F1;
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
<body>
	<jsp:include page="vehiclelinks.jsp"></jsp:include>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card card-custom">
					<div class="card-header ">
						<h2 class="text-center">Modify Vehicle Information</h2>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/modifyvehicle"
							method="post" onsubmit="return validateForm()">
							<div class="form-group">
								<label for="vid">ID:</label> <input type="text" id="vid"
									name="vid" class="form-control" value="${vehicle.vid}" required>
							</div>
							<div class="form-group">
								<label for="vechName">Vehicle Name:</label> <input type="text"
									name="vechName" class="form-control"
									value="${vehicle.vechName}" required>
							</div>
							<div class="form-group">
								<label for="vechNo">Vehicle Number:</label> <input type="text"
									name="vechNo" class="form-control" value="${vehicle.vechNo}"
									required>
							</div>
							<div class="form-group">
								<label for="ownerName">Owner Name:</label> <input type="text"
									name="ownerName" class="form-control"
									value="${vehicle.ownerName}" required>
							</div>
							<div class="form-group">
								<label for="seats">Seats:</label> <input type="number"
									name="seats" class="form-control" value="${vehicle.seats}"
									required>
							</div>
							<div class="form-group">
								<label for="phone">Phone:</label> <input type="text"
									name="phone" class="form-control" value="${vehicle.phone}"
									required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Modify
								Vehicle</button>
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
			var vechName = document.getElementById('vechName').value;
			var vechNo = document.getElementById('vechNo').value;
			var ownerName = document.getElementById('ownerName').value;
			var seats = document.getElementById('seats').value;
			var phone = document.getElementById('phone').value;

			document.getElementById('vechNameError').textContent = '';
			document.getElementById('vechNoError').textContent = '';
			document.getElementById('ownerNameError').textContent = '';
			document.getElementById('seatsError').textContent = '';
			document.getElementById('phoneError').textContent = '';

			if (vechName.trim() === '') {
				document.getElementById('vechNameError').textContent = 'Please enter Vehicle Name';
				return false;
			}

			if (vechNo.trim() === '') {
				document.getElementById('vechNoError').textContent = 'Please enter Vehicle Number';
				return false;
			}

			if (ownerName.trim() === '') {
				document.getElementById('ownerNameError').textContent = 'Please enter Owner Name';
				return false;
			}

			if (seats.trim() === '') {
				document.getElementById('seatsError').textContent = 'Please enter Seats';
				return false;
			}

			if (phone.trim() === '') {
				document.getElementById('phoneError').textContent = 'Please enter Phone';
				return false;
			}

			return true;
		}
	</script>
</body>
</html>
