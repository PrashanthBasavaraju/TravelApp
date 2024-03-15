<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Vehicle</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

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
	<jsp:include page="vehiclelinks.jsp"></jsp:include>
	<div class="container">
		<div class="row justify-content-center mt-5">
			<div class="col-md-6">
				<div class="card custom-card">
					<div class="card-header">
						<h2 class="text-center">Add New Vehicle</h2>
					</div>
					<div class="card-body">
						<form:form action="newvehicleinfo" method="post"
							modelAttribute="vehicle" id="vehicleForm">
							<div class="form-group">
								<label for="VechName">Vehicle Name:</label>
								<form:input type="text" path="VechName" id="VechName"
									class="form-control" />
								<small id="VechNameError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="VechNo">Vehicle Number :</label>
								<form:input type="text" path="VechNo" id="VechNo"
									class="form-control" />
								<small id="VechNoError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="OwnerName">Owner Name :</label>
								<form:input type="text" path="OwnerName" id="OwnerName"
									class="form-control" />
								<small id="OwnerNameError" class="text-danger"></small>
							</div>
							<div class="form-group">
								<label for="Seats">Number of Seats :</label>
								<form:input type="text" path="Seats" id="Seats"
									class="form-control" />
								<small id="SeatsError" class="text-danger"></small>
							</div>
							<div class="form-group">
								<label for="Phone">Phone Number :</label>
								<form:input type="text" path="Phone" id="Phone"
									class="form-control" />
								<small id="PhoneError" class="text-danger"></small>
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
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							$('#vehicleForm')
									.submit(
											function(event) {
												// Reset error messages
												$('#VechNameError').text('');
												$('#VechNoError').text('');
												$('#OwnerNameError').text('');
												$('#SeatsError').text('');
												$('#PhoneError').text('');

												// Check if fields are empty
												if ($('#VechName').val() === '') {
													$('#VechNameError')
															.text(
																	'Please enter vehicle name');
													event.preventDefault();
												}

												if ($('#VechNo').val() === '') {
													$('#VechNoError')
															.text(
																	'Please enter vehicle number');
													event.preventDefault();
												}

												if ($('#OwnerName').val() === '') {
													$('#OwnerNameError')
															.text(
																	'Please enter owner name');
													event.preventDefault();
												}

												var seats = $('#Seats').val();
												if (seats === '') {
													$('#SeatsError')
															.text(
																	'Please enter number of seats');
													event.preventDefault();
												} else if (!(/^\d+$/
														.test(seats))) {
													$('#SeatsError')
															.text(
																	'Please enter a valid number of seats');
													event.preventDefault();
												}

												var phone = $('#Phone').val();
												if (phone === '') {
													$('#PhoneError')
															.text(
																	'Please enter phone number');
													event.preventDefault();
												} else if (!/^\d{10}$/
														.test(phone)) {
													$('#PhoneError')
															.text(
																	'Phone number should be 10 numerical digits');
													event.preventDefault();
												}
											});
						});
	</script>

</body>
</html>
