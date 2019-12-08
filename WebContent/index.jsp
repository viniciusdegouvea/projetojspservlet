<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <link rel="stylesheet" href="resources/css/style.css" /> 
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form action="LoginServlet" method="post" class="login-form" id="search_light">
				<input type="text" id="login" name="login" placeholder="Coloque seu login">
				<input type="password" id="senha" name="senha" placeholder="Coloque sua senha">
				<button type="submit" class="button">Entrar</button>
			</form>
		</div>
	</div>
</body>
</html>