<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add a Product</title>
</head>
<body style="padding: 10px;">
	<h1>${ title }</h1>
	<form action="/products/save" method="post">
	<input type="hidden" name="id" value="${product.id}" />
		<div class="form-group">
			<label for="name">Name</label> <input class="form-control" id="name"
				name="name" value="${product.name}" />
		</div>
		<div class="form-group">
			<label for="Description">Description</label> <input
				class="form-control" id="description" name="description" value="${product.description}"  />
		</div>
		<div class="form-group">
			<label for="Price">Price</label> <input class="form-control"
				id="price" name="price" value="${product.price}" />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		<a href="/products/admin" class="btn btn-light">Cancel</a>
	</form>
</body>
</html>