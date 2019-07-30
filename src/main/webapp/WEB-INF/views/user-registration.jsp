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
<body>
	<form method="post" action="/users/register">
		<div align="center">
			<fieldset style="width: 500px">
				<legend>User Registration</legend>
				<table>
					<tr>
						<th>UserName</th>
						<td><input type="text" name="username" required minlength="2"
							maxlength="15" /></td>
					</tr>
					<tr>
						<th>Email</th>
						<td><input type="email" name="email" /></td>
					</tr>
					<tr>
						<th>Password</th>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr><th colspan=2><button type="submit">Submit</button></th></tr>
				</table>
			</fieldset>
		</div>
	</form>
</body>
</html>