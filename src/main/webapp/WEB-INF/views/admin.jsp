<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<div class="container">
		<h1 align = "center">Admin Page</h1>
		
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Price</th><th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}">
				<tr>
					<td style="display:none">${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
 					<td><a href="/products/edit?id=${ product.id }" class="btn btn-primary">Edit</a>
					<a href="/products/delete?id=${ product.id }" class="btn btn-danger">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/products/add" class="btn btn-success">Add</a>
		<a href="/products" class="btn btn-light">Cancel</a>		
	</div>

</body>
</html>