<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Booking Information</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Custom CSS */
body {
	padding-top: 20px;
	background-color: #A9CBDD;
}
</style>
</head>
<body>
	
	<div class="container">
		<hr>
		<h1 class="text-center">All Booking Information</h1>
		<a href="newbooking" class="btn btn-outline-dark">Add Booking</a>
		<hr>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Booking ID</th>
					<th>Date</th>
					<th>Pickup Location</th>
					<th>Drop Location</th>
					<th>Vehicle Number</th>
					<th>Customer Name</th>
					<th>Phone</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bookcab" items="${bknglist}">
					<tr>
						<td>${bookcab.bid}</td>
						<td>${bookcab.date}</td>
						<td>${bookcab.pickupLocation}</td>
						<td>${bookcab.dropLocation}</td>
						<td>${bookcab.vechNo}</td>
						<td>${bookcab.customerName}</td>
						<td>${bookcab.phone}</td>
						<td><a href="delbookcab/${bookcab.bid}"
							class="btn btn-danger">Delete</a> <a
							href="modifybookcab/${bookcab.bid}" class="btn btn-primary">Modify</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h3 class="text-center">${info}</h3>
	</div>
</body>
</html>
