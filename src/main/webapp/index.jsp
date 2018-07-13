<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>POVERON!</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
 

<body style="background-color:whitesmoke">
<nav class="nav navbar-default" style ="background-color: #ced4ea; border-color: #1d243">
<div class="navbar-header">
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<li><a href="index.jsp" class="navbar-brand">Home</a></li>
<li><a href="login.jsp" class="navbar-brand">Login</a></li>
<li><a href="registrazione.jsp" class="navbar-brand">Registrati</a></li>
<li><a href="carrello.jsp" class="navbar-brand">Carrello</a></li>
<li><a href="contatti.jsp" class="navbar-brand">Contatti</a></li>

</ul>
</div>
</div>

<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<br>
<!-- SEARCH -->
<li><form class="navbar-search"></li>
<div class="input-append">
<input type="text" class="search-query span2" placeholder="Cerca il mongolino d'oro..." style="width: 900px" id="myinput" onkeyup="searchFunction()">
<span class="fornav"><i class="icon-search"></i></span>
</div>
</form>
</ul>
</div>
</nav>

<!-- CONTAINER -->
<div class="container">
<!-- titolo pagina -->
<div class="page-header text-center">
<h1>Benvenuti in Poveron, dove i Poveracci spendono!</h1>
</div>

<section>
<!-- PRIMO CAROUSEL -->
<div class="carousel slide" id="myCarousel"data-ride="carousel" data-interval="3000">
<!-- immagini -->
<div class="carousel-inner">
<div class="item active">
<img src="img/tv1.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/lettino.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/cibocani1.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/lipstick.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/maglioni.jpg" class="img-carousel">
</div>
</div>

<!-- indicatori -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#myCarousel" data-slide-to="4"></li>
</ol>

<!-- freccette -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev"
style="position: absolute; top: -24px; bottom: auto; left: 0; width: 19%; font-size: 37px; color: blue;
    text-align: center; text-shadow: 0 1px 5px rgba(0,0,0,.6); background-color: white;
    filter: alpha(opacity=50); opacity: 0.5;">
<span class="fa fa-hand-o-left"></span>

</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next"
style="position: absolute; top: -24px; bottom: auto; right: 0; width: 19%; font-size: 37px; color: blue;
    text-align: center; text-shadow: 0 1px 5px rgba(0,0,0,.6); background-color: white;
    filter: alpha(opacity=50); opacity: 0.5;">
<span class="fa fa-hand-o-right"></span></a>
<!-- TITOLO CENTRALE -->
</section>
<br><br><br>
<h3 style="text-align: center">Offerte</h3>
<br><br><br>
<section>

<!-- SECONDO CAROUSEL -->
<div class="carousel slide" id="myCarousel"data-ride="carousel" data-interval="3000">
<!-- immagini -->
<div class="carousel-inner">
<div class="item active">
<img src="img/tv1.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/lettino.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/cibocani1.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/lipstick.jpg" class="img-carousel">
</div>
<div class="item">
<img src="img/maglioni.jpg" class="img-carousel">
</div>
</div>

<!-- indicatori -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
<li data-target="#myCarousel" data-slide-to="4"></li>
</ol>
<!-- freccette -->
<!-- freccette -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev"
style="position: absolute; top: -24px; bottom: auto; left: 0; width: 19%; font-size: 37px; color: blue;
    text-align: center; text-shadow: 0 1px 5px rgba(0,0,0,.6); background-color: white;
    filter: alpha(opacity=50); opacity: 0.5;">
<span class="fa fa-hand-o-left"></span>

</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next"
style="position: absolute; top: -24px; bottom: auto; right: 0; width: 19%; font-size: 37px; color: blue;
    text-align: center; text-shadow: 0 1px 5px rgba(0,0,0,.6); background-color: white;
    filter: alpha(opacity=50); opacity: 0.5;">
<span class="fa fa-hand-o-right"></span></a>
</div>
</section>
</div><!-- chiusura container -->
</body>
</html>