<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Vehicles Information</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	padding-top: 20px;
	background-color: #A9CBDD;
}
</style>
</head>
<body>

	<div class="container">
		<h1 class="text-center">All Vehicles Information</h1>
		<a href="newvehicle" class="btn  btn-outline-dark">Add Vehicle</a>
		<hr>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Vehicle ID</th>
					<th>Vehicle Name</th>
					<th>Vehicle Number</th>
					<th>Owner Name</th>
					<th>Seats</th>
					<th>Phone</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vehicle" items="${vehiclelist}">
					<tr>
						<td>${vehicle.vid}</td>
						<td>${vehicle.vechName}</td>
						<td>${vehicle.vechNo}</td>
						<td>${vehicle.ownerName}</td>
						<td>${vehicle.seats}</td>
						<td>${vehicle.phone}</td>
						<td><a
							href="${pageContext.request.contextPath}/delvehicle/${vehicle.vid}"
							class="btn btn-danger">Delete</a> <a
							href="modifyvehicle/${vehicle.vid}" class="btn btn-primary">Modify</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
