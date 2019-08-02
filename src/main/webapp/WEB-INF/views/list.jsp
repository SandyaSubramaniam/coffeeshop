<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Products Display Page</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-1">
				<a href="/products/admin" class="btn btn-secondary">Admin</a>
			</div>
			<div class="col-sm-7">
				<h1>Grand Circus Cafe</h1>
			</div>
			<div class="col-sm-4" style="text-align: right">
				<c:if test="${sessionScope.user!= null}">
					<h5>
						<c:out value="Welcome ${sessionScope.user.getUsername()}!" />
						<a href="/users/logout">(Logout)</a>
					</h5>
				</c:if>
				<c:if test="${sessionScope.user == null}">
					<a href="/users/showForm" class="btn btn-secondary">Sign Up</a>
					<a href="/users/login" class="btn btn-secondary">Log In</a>
				</c:if>
			</div>
		</div>
	</div>
	<div class="container" style="border: 1px solid #CCC">
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
					<tr>
						<td>${product.name}</td>
						<td>${product.description}</td>
						<td>${product.price}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>