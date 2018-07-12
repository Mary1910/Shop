<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!-- importa package -->
     <%@ page import="java.util.*" %>
 <%@ page import="org.eresearch.knowledgeportal.dao.CategoryDao" %>
 <%@ page import="org.eresearch.knowledgeportal.model.Category;" %>
    
    
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>

<% String username = (String) request.getAttribute("username"); %>
<% Object errore = request.getAttribute("errore"); %>

<% Utente utenteLoggato = (Utente)
session.getAttribute("utenteLoggato"); %>

<nav class="nav navbar-default">
<div class="navbar-header">
<a href="index.jsp" class="navbar-brand">Home</a>
</div>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<% if (utenteLoggato == null) { %>
<li><a href="registrazione.jsp">Registrazione</a></li>
<li><a href="login.jsp">Login</a></li>
<% } else { %>
<li><a href="logout">Logout</a></li>
<li><a href="listaUtenti">Lista Utenti</a></li>
<% } %>
</ul>
</div>

</nav>

<div class="container">
<!-- header -->
<div class="page-header text-center">
<h1>Login</h1>
</div>
<!-- form -->
<form class="form-horizontal" action="login" method="post"
onsubmit="return validazioneLogin()">
<!-- username -->
<div class="form-group">
<label for="username" class="control-label col-md-4">Inserisci Username</label>
<div class="col-md-5">
<input type="text" name="username" id="username" class="form-control"
<% if (username != null) { %>
value="<%=username %>"
<% } %>
>
</div>
<span class="col-md-3"></span>
</div>
<!-- password -->
<div class="form-group">
<label for="password" class="control-label col-md-4">Inserisci Password</label>
<div class="col-md-5">
<input type="password" name="password" id="password" class="form-control">
</div>
<span class="col-md-3"></span>
</div>

<!-- bottoni -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Login" class="btn btn-primary">
<input type="reset" value="Ripristina" class="btn btn-warning"
style="margin-left:2%;">
</div>
<span class="col-md-3"></span>
</div>
</form>
<!-- link -->
<div class="row">
<span class="col-md-4"></span>
<div class="col-md-5">

<p>Non sei registrato ?</p>
<p>Clicca <a href="registrazione.jsp">qui</a> per la registrazione</p>
</div>
<span class="col-md-3"></span>
</div>

<!-- alert -->
<div class="alert alert-danger" id="alert" style="display:none">
<p class="text-center">Tutti i campi sono obbligatori</p>
</div>

<!-- alert2 -->
<% if (errore != null) { %>
<div class="alert alert-danger">
<p class="text-center">Username o password sbagliati</p>
</div>
<% } %>


</div> <!-- chiusura container -->




</body>
</html>