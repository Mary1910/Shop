<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<% String username = (String) request.getAttribute("username"); %>
<% Integer parametroErrore = (Integer) request.getAttribute("errore"); %>
<h1>Login</h1>

<form action="login" method="post">
<label for="username">Inserisci Username</label>
<input type="text" name="username" id="username"
<% if (username != null) { %>
value="<%=username%>"
<% } %>
>
<br>
<label for="password">Inserisci Password</label>
<input type="password" name="password" id="password">
<br>
<input type="submit" value="Login">
</form>

<% if (parametroErrore != null) { %>
<h2 style="color:red;">USERNAME O PASSWORD SBAGLIATI</h2>
<% } %>




</body>
</html>




