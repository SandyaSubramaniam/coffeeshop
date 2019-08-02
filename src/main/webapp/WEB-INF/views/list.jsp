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
	<div class="container" style = "border:1px solid #CCC">
		<h1 align="center">Grand Circus Cafe</h1>
		<c:if test="${sessionScope.user!= null}">
			<h2>
				<c:out value="Welcome ${sessionScope.user.getUsername()}!" />
			</h2>
			<a href = "/users/logout" >It's not me</a>
		</c:if>
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
		<a href="/users/showForm" class="btn btn-secondary">Sign Up</a>
		<a href="/users/login" class="btn btn-secondary">Log In</a>
		<a href="/products/admin" class="btn btn-secondary">Admin</a>
	</div>
</body>
</html>