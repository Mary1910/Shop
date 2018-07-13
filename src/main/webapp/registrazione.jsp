<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="js/gestioneForm.js"></script>
</head>



<body>

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
<% } %>
</ul>
</div>

</nav>




<div class="container">
<!-- header -->
<div class="page-header text-center">
<h1>Crea un account</h1>
</div>
<!-- form -->

<form class="form-horizontal" action="registrazione" method="post"
onsubmit="return validazione()">
<!-- nome -->
<div class="form-group">
<label for="nome" class="control-label col-md-4">Inserisci Nome</label>
<div class="col-md-5">
<input type="text" name="nome" id="nome" class="form-control">
</div>
<span class="col-md-3"></span>
</div>
<!-- username -->
<div class="form-group">
<label for="username" class="control-label col-md-4">Inserisci Username</label>
<div class="col-md-5">
<input type="text" name="username" id="username" class="form-control">
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
<!-- conferma password -->
<div class="form-group">
<label for="password" class="control-label col-md-4">Conferma Password</label>
<div class="col-md-5">
<input type="password" name="password" id="password" class="form-control">
</div>
<span class="col-md-3"></span>
</div>
<!-- indirizzo -->
<div class="form-group">
<label for="indirizzo" class="control-label col-md-4">Inserisci Indirizzo</label>
<div class="col-md-5">
<input type="text" name="indirizzo" id="indirizzo" class="form-control">
</div>
<span class="col-md-3"></span>
</div>


<!-- Privacy -->
<div class="row row-no-padding popin-it subtext" style="margin-top: 25px;">
<span> Presa visione dell’ <a href="privacy.jsp" class="cgv"
onclick="return hs.htmlExpand(this, { objectType: 'ajax', width:'750', wrapperClassName: 'titlebar', align:'center'} )">
informativa privacy</a> 
resa per il trattamento dei miei dati personali resa ai sensi dell’art. 13 D. Lgs. 196/2003 dai coTitolari del 
Trattamento LVMH Italia S.p.A. Divisione Poveron, ai sensi dell’art. 23 D. Lgs. 196/2003 presto i seguenti consensi:</span>
	</div>
	<div class="optinSeph">
		<div class="row row-no-padding popin-it br">
			<span>Per ricevere comunicazioni con finalit&agrave; di marketing: all&rsquo;
			invio anche automatizzato di email o newsletter a carattere commerciale;</span>
		</div>
		<div class="row row-no-padding input-field popin-it">
			<input id="acconsento" name="newsletter" value="true" tabindex="219" type="radio">
			<input name="newletter" value=" " type="hidden"><label for="mail">Acconsento</label>
			<input id="non_acconsento" name="newsletter" value="false" tabindex="219" type="radio">
			<input name="newsletter" value=" " type="hidden"><label for="mail">Non acconsento</label>
		</div>
	</div>
	
	<div class="row row-no-padding popin-it br">
<span>Alla creazione di un profilo sulle mie scelte e abitudini di consumo al fine di ricevere 
offerte commerciali di mio reale interesse, basate sul mio profilo e sulle mie precedenti esperienze d’acquisto :</span>
</div>
<div class="row row-no-padding input-field popin-it">
			<input id="acconsento" name="newsletter" value="true" tabindex="219" type="radio">
			<input name="newletter" value=" " type="hidden"><label for="mail">Acconsento</label>
			<input id="non_acconsento" name="newsletter" value="false" tabindex="219" type="radio">
			<input name="newsletter" value=" " type="hidden"><label for="mail">Non acconsento</label>
		</div>
	</div>
</div>
			</div>



<!-- bottoni -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Registrati" class="btn btn-primary">
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
<p>Sei già registrato ?</p>
<p>Clicca <a href="login.jsp">qui</a> per la login</p>
</div>
<span class="col-md-3"></span>
</div>

<!-- alert -->
<div class="alert alert-danger" id="alert" style="display:none">
<p class="text-center">Tutti i campi sono obbligatori</p>
</div>

</div> <!-- chiusura container -->


</body>
</html>
