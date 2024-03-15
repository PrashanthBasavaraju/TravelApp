<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Cab Booking</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom CSS */
.container {
	padding-top: 20px;
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
	<jsp:include page="userlinks.jsp"></jsp:include>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card card-custom">
					<div class="card-header ">
						<h2 class="text-center">Modify Cab Booking</h2>
					</div>
					<div class="card-body">
						<form action="${pageContext.request.contextPath}/modifybookcab"
							method="post" onsubmit="return validateForm()">
							<div class="form-group">
								<label for="bid">ID:</label> <input type="text" id="bid"
									name="bid" class="form-control" value="${bookcab.bid}" required>
								<span id="bidError" class="text-danger"></span>
								<!-- Error message placeholder -->
							</div>
							<div class="form-group">
								<label for="date">Date:</label> <input type="text" name="date"
									class="form-control" value="${bookcab.date}" />
							</div>
							<div class="form-group">
								<label for="pickupLocation">Pickup Location:</label> <select
									id="pickupLocation" name="pickupLocation" class="form-control">
									<c:forEach var="cabFare" items="${cabFareList}">
										<option value="${cabFare.pickupLoc}">${cabFare.pickupLoc}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="dropLocation">Drop Location:</label> <select
									id="dropLocation" name="dropLocation" class="form-control">
									<c:forEach var="cabFare" items="${cabFareList}">
										<option value="${cabFare.dropLoc}">${cabFare.dropLoc}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="vechNo">Vehicle Number:</label> <select id="vechNo"
									name="vechNo" class="form-control">
									<c:forEach var="vehicle" items="${vehiclelist}">
										<option value="${vehicle.vechNo}">${vehicle.vechNo}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="customerName">Customer Name:</label> <input
									type="text" name="customerName" class="form-control"
									value="${bookcab.customerName}" />
							</div>
							<div class="form-group">
								<label for="phone">Phone:</label> <input type="text"
									name="phone" class="form-control" value="${bookcab.phone}" />
								<span id="phoneError" class="text-danger"></span>
								<!-- Error message placeholder -->
							</div>
							<button type="submit" class="btn btn-primary btn-block">Modify
								Cab Booking</button>
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
			var bid = document.getElementById('bid').value;
			var date = document.getElementsByName('date')[0].value;
			var pickupLocation = document.getElementById('pickupLocation').value;
			var dropLocation = document.getElementById('dropLocation').value;
			var vechNo = document.getElementById('vechNo').value;
			var customerName = document.getElementsByName('customerName')[0].value;
			var phone = document.getElementsByName('phone')[0].value;

			document.getElementById('bidError').textContent = '';
			document.getElementById('phoneError').textContent = '';

			if (bid.trim() === '') {
				document.getElementById('bidError').textContent = 'Please enter ID';
				return false;
			}

			if (pickupLocation.trim() === '') {
				alert('Please select pickup location');
				return false;
			}

			if (dropLocation.trim() === '') {
				alert('Please select drop location');
				return false;
			}

			if (vechNo.trim() === '') {
				alert('Please select vehicle number');
				return false;
			}

			if (phone.trim() === '') {
				document.getElementById('phoneError').textContent = 'Please enter phone number';
				return false;
			} else if (!/^\d{10}$/.test(phone)) {
				document.getElementById('phoneError').textContent = 'Phone number should be 10 numerical digits';
				return false;
			}

			return true;
		}
	</script>
</body>
</html>
