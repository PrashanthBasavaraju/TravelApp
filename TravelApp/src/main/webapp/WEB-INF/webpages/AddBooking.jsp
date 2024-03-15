<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Cab</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom CSS */
.custom-background {
	background-color: #A9CBDD; /* Choose your desired background color */
}

.custom-card {
	border-radius: 15px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	background-color: #D7B4F1;
}
</style>
</head>
<body class="custom-background">
	<jsp:include page="userlinks.jsp"></jsp:include>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<div class="card custom-card">
					<div class="card-header">
						<h2 class="text-center">Book a Cab</h2>
					</div>
					<div class="card-body">
						<form:form action="newbookinginfo" method="post"
							modelAttribute="bookcab" id="bookCabForm"
							onsubmit="return validateForm()">
							<div class="form-group">
								<label for="customerName">Customer Name:</label>
								<form:input type="text" path="customerName" id="customerName"
									class="form-control"  />
								<small id="customerNameError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="date">Date:</label>
								<form:input type="date" path="date" id="date"
									class="form-control"  />
								<small id="dateError" class="text-danger"></small>
							</div>
							<div class="form-group">
								<label for="pickupLocation">Pickup Location:</label> <select
									id="pickupLocation" name="pickupLocation" class="form-control"
									required>
									<c:forEach var="cabFare" items="${cabFareList}">
										<option value="${cabFare.pickupLoc}">${cabFare.pickupLoc}</option>
									</c:forEach>
								</select> <small id="pickupLocationError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="dropLocation">Drop Location:</label> <select
									id="dropLocation" name="dropLocation" class="form-control"
									>
									<c:forEach var="cabFare" items="${cabFareList}">
										<option value="${cabFare.dropLoc}">${cabFare.dropLoc}</option>
									</c:forEach>
								</select> <small id="dropLocationError" class="text-danger"></small>
							</div>
							<div class="form-group">
								<label for="vechNo">Vehicle Number:</label> <select id="vechNo"
									name="vechNo" class="form-control">
									<c:forEach var="vehicle" items="${vehiclelist}">
										<option value="${vehicle.vechNo}">${vehicle.vechNo}</option>
									</c:forEach>
								</select> <small id="vechNoError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="phone">Phone:</label>
								<form:input type="text" path="phone" id="phone"
									class="form-control"  />
								<small id="phoneError" class="text-danger"></small>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Submit</button>
						</form:form>
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
			var isValid = true;

			// Reset error messages
			$('#customerNameError').text('');
			$('#dateError').text('');
			$('#pickupLocationError').text('');
			$('#dropLocationError').text('');
			$('#vechNoError').text('');
			$('#phoneError').text('');

			// Check if fields are empty
			if ($('#customerName').val() === '') {
				$('#customerNameError').text('Please enter customer name');
				isValid = false;
			}

			if ($('#date').val() === '') {
				$('#dateError').text('Please enter date');
				isValid = false;
			}

			if ($('#pickupLocation').val() === '') {
				$('#pickupLocationError').text('Please select pickup location');
				isValid = false;
			}

			if ($('#dropLocation').val() === '') {
				$('#dropLocationError').text('Please select drop location');
				isValid = false;
			}

			if ($('#vechNo').val() === '') {
				$('#vechNoError').text('Please select vehicle number');
				isValid = false;
			}

			var phone = $('#phone').val();
			if (phone === '') {
				$('#phoneError').text('Please enter phone number');
				isValid = false;
			} else if (!/^\d{10}$/.test(phone)) {
				$('#phoneError').text(
						'Phone number should be 10 numerical digits');
				isValid = false;
			}

			return isValid;
		}
	</script>
</body>
</html>
