
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Risultati della Ricerca</title>
</head>
<body>

<% Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");%>
<% List<Prodotto> listaProdotti = (List<Prodotto>) request.getAttribute("listaProdotti"); %>


<body style="background-color:whitesmoke">
<nav class="nav navbar-default" style ="background-color: #ced4ea; border-color: #1d243">
<div class="navbar-header">
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<% if (utenteLoggato == null){%>


<li><a href="index.jsp" class="navbar-brand">Home</a></li>
<li><a href="login.jsp" class="navbar-brand">Login</a></li>
<li><a href="registrati.jsp" class="navbar-brand">Registrati</a></li>
<li><a href="carrello.jsp" class="navbar-brand">Carrello</a></li>

<% } else { %>

<li> <a href="logout"> Logout </a></li>
<li> <a href="account">Lista Prenotazioni</a></li>

<% } %> 

</ul>
</div>
</div>

<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<br>
<!-- SEARCH -->
<li><form class="navbar-search"></li>
<div class="input-append">
<input type="text" class="search-query span2" placeholder="Cerca..." style="width: 900px" id="myinput" onkeyup="searchFunction()"><span class="fornav"><i class="icon-search"></i></span>
<br>
<br>
</div>
</form>
</ul>
</div>
</nav>

<div class="container">
<div class="page-header">
<h1> Risultati della Ricerca </h1>
</div>

<table class = "table table-hover">
<thead> Ecco i prodotti che cercavi</thead>
<tbody>
<% for (Prodotto prodotto : listaProdotti){ %>
<tr>

<td><%= prodotto.getImmagine() %> </td>
<td><%= prodotto.getNome()%> </td>
<td><%= prodotto.getMarca() %> </td>
<td><%= prodotto.getPrezzo() %> </td>
<td><%= prodotto.getQuantitaDisponibile() %> </td>
<td><%= prodotto.getSconto() %> </td>


<form action="listaProdotti" method="get">


</form>

 
</tr>



</tbody>


</table>

</body>
</html>