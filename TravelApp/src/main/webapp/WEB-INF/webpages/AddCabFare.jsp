<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Cab Ride</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style>
/* Custom CSS */
.custom-background {
	background-color: #A9CBDD;
}

.custom-card {
	border-radius: 15px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	background-color: #D7B4F1;
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
						<h2 class="text-center">Add New Cab Ride</h2>
					</div>
					<div class="card-body">
						<form id="cabForm" action="newcabinfo" method="post">
							<div class="form-group">
								<label for="pickupLoc">Pickup Location:</label> <input
									type="text" id="pickupLoc" name="pickupLoc"
									class="form-control" /> <small id="pickupLocError"
									class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="dropLoc">Drop Location:</label> <input type="text"
									id="dropLoc" name="dropLoc" class="form-control" /> <small
									id="dropLocError" class="text-danger"></small>
							</div>

							<div class="form-group">
								<label for="fare">Fare:</label> <input type="text" id="fare"
									name="fare" class="form-control" /> <small id="fareError"
									class="text-danger"></small>
							</div>

							<button type="submit" class="btn btn-primary btn-block">Submit</button>
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
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#cabForm').submit(function(event) {
				// Reset error messages
				$('#pickupLocError').text('');
				$('#dropLocError').text('');
				$('#fareError').text('');

				// Check if fields are empty
				if ($('#pickupLoc').val() === '') {
					$('#pickupLocError').text('Please enter pickup location');
					event.preventDefault();
				}

				if ($('#dropLoc').val() === '') {
					$('#dropLocError').text('Please enter drop location');
					event.preventDefault();
				}

				if ($('#fare').val() === '') {
					$('#fareError').text('Please enter fare');
					event.preventDefault();
				}
			});
		});
	</script>
</body>
</html>
