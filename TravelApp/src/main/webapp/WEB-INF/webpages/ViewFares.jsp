<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	padding-top: 20px;
	background-color: #A9CBDD;
}
</style>
</head>
<body>

	<div class="container">
		<hr>
		<h1 class="text-center">All CabFares</h1>
		<a href="newcab" class="btn btn-outline-dark">Add CabFare</a>
		<hr>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Cab ID</th>
					<th>Pickup Location</th>
					<th>Drop Location</th>
					<th>Fares</th>
					<th>Actions</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="cabfare" items="${farelist}">
					<tr>
						<td>${cabfare.id}</td>
						<td>${cabfare.pickupLoc}</td>
						<td>${cabfare.dropLoc}</td>
						<td>${cabfare.fare}</td>

						<td><a href="delcab/${cabfare.id}" class="btn btn-danger">Delete</a>
							<a href="modifycab/${cabfare.id}" class="btn btn-primary">Modify</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>