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
<link rel="stylesheet" href="style.css" />
<title>Log In</title>
</head>
<body style="padding: 10px;">
<h1>Log In</h1>
	<form method="post" action="/users/login">
	
	<c:if test="${ not empty message }">
		<p class="message">${ message }</p>
	</c:if>
		<div class="form-group">
			<label for="username">User Name</label> <input class="form-control"
				id="username" name="username" required minlength="2" maxlength="15" />
		</div>
		<div class="form-group">
			<label for="password">Password</label> <input class="form-control"
				id="password" name="password" type="password" />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		</form>

</body>
</html>