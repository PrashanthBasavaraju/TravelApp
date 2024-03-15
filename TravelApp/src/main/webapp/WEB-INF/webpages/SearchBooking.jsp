<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Information</title>
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
	<jsp:include page="userlinks.jsp"></jsp:include>
	<div class="container">
		<h1 class="text-center">Booking Information</h1>
		<hr />
		<form method="post" action="sbookinfo" class="text-center"
			style="max-width: 400px; margin: auto;">
			<div class="form-group">
				<label for="txtBid">Booking ID :</label> <input type="text"
					class="form-control" id="txtBid" name="txtBid"
					placeholder="Booking ID">
			</div>
			<button type="submit" class="btn btn-primary"
				style="width: 150px; margin: auto;">Search Booking</button>
		</form>

		<hr />

		<c:if test="${bknginfo != null}">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Booking Information</h5>
					<p class="card-text">Booking ID: ${bknginfo.bid}</p>
					<p class="card-text">Date: ${bknginfo.date}</p>
					<p class="card-text">Pickup Location:
						${bknginfo.pickupLocation}</p>
					<p class="card-text">Drop Location: ${bknginfo.dropLocation}</p>
					<p class="card-text">Vehicle Number: ${bknginfo.vechNo}</p>
					<p class="card-text">Customer Name: ${bknginfo.customerName}</p>
					<p class="card-text">Phone: ${bknginfo.phone}</p>
				</div>
			</div>
		</c:if>

		<c:if test="${bknginfo == null}">
			<h3 class="text-center">${info}</h3>
		</c:if>
	</div>
</body>
</html>
