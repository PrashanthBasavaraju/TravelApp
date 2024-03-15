<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cab Fare Information</title>
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
	<jsp:include page="cablinks.jsp"></jsp:include>
	<div class="container">
		<h1 class="text-center">Cab Fare Information</h1>
		<hr />
		<form method="post" action="scabinfo" class="text-center"
			style="max-width: 400px; margin: auto;">
			<div class="form-group">
				<label for="txtid">Cab ID :</label> <input type="text"
					class="form-control" id="txtid" name="txtid" placeholder="Cab ID">
			</div>
			<button type="submit" class="btn btn-primary"
				style="width: 150px; margin: auto;">Search Cab</button>
		</form>

		<hr />

		<c:if test="${fareinfo != null}">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Cab Fare Information</h5>
					<p class="card-text">Cab ID: ${fareinfo.id}</p>
					<p class="card-text">Pickup Location: ${fareinfo.pickupLoc}</p>
					<p class="card-text">Drop Location: ${fareinfo.dropLoc}</p>
					<p class="card-text">Fare: ${fareinfo.fare}</p>
				</div>
			</div>
		</c:if>

		<c:if test="${fareinfo == null}">
			<h3 class="text-center">${info}</h3>
		</c:if>
	</div>
</body>
</html>
