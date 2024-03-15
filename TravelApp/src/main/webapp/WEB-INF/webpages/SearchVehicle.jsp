<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Information</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	padding-top: 20px;
	background-color: #A9CBDD;
}

.card {
	margin-bottom: 20px;
	max-width: 400px;
	margin: auto;
}

.card-body {
	background-color: #E1F7BA;
}
</style>
</head>
<body>
	<jsp:include page="vehiclelinks.jsp"></jsp:include>
	<div class="container">
		<h1 class="text-center">Vehicle Information</h1>
		<hr />
		<form method="post" action="svehicleinfo" class="text-center"
			style="max-width: 400px; margin: auto;">
			<div class="form-group">
				<label for="txtVid">Vehicle ID :</label> <input type="text"
					class="form-control" id="txtVid" name="txtVid"
					placeholder="Vehicle ID">
			</div>
			<button type="submit" class="btn btn-primary"
				style="width: 150px; margin: auto;">Search Vehicle</button>
		</form>

		<hr />

		<c:if test="${vehicleinfo != null}">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Vehicle Information</h5>
					<p class="card-text">Vehicle ID: ${vehicleinfo.vid}</p>
					<p class="card-text">Vehicle Name: ${vehicleinfo.vechName}</p>
					<p class="card-text">Vehicle Number: ${vehicleinfo.vechNo}</p>
					<p class="card-text">Owner Name: ${vehicleinfo.ownerName}</p>
					<p class="card-text">Seats: ${vehicleinfo.seats}</p>
					<p class="card-text">Phone: ${vehicleinfo.phone}</p>
				</div>
			</div>
		</c:if>

		<c:if test="${vehicleinfo == null}">
			<h3 class="text-center">${info}</h3>
		</c:if>
	</div>
</body>
</html>
