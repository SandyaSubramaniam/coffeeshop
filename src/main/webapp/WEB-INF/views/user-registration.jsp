<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>User Registration Page</title>
</head>
<body style="padding: 10px;">
	<h1>User Registration</h1>
	<form method="post" action="/users/register">
		<div class="form-group">
			<label for="name">User Name</label> <input class="form-control"
				id="name" name="username" required minlength="2" maxlength="15" />
		</div>
		<div class="form-group">
			<label for=email">Email</label> <input class="form-control"
				id="email" name="email" />
		</div>
		<div class="form-group">
			<label for="password">Password</label> <input class="form-control"
				id="password" name="password" type="password" />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		<a href="/products/admin" class="btn btn-light">Cancel</a>
	</form>
</body>
</html>