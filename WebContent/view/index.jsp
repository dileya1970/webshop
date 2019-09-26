<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/view/index.css" />
<title>Web shop</title>
<script>
	$(document).ready(function() {
		$('#prijaviSeBtn').click(function() {
			$('#registracija').hide();
			$('#artikliDeo').hide();
			$('#dodajArtiklDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').show();

		});

		$('#izvestajiBtn').click(function() {
			$('#artikliDeo').hide();
			$('#dodajArtiklDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').hide();

			$('#registracija').hide();
			$('#izvestajiDeo').show();

		});

		$('#registrujSeBtn').click(function() {
			$('#artikliDeo').hide();
			$('#dodajArtiklDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').hide();

			$('#registracija').show();

		});

		$('#dodajArtiklBtn').click(function() {
			$('#artikliDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').hide();

			$('#registracija').hide();
			$('#dodajArtiklDeo').show();

		});

		$('#dodajDostavljacaBtn').click(function() {
			$('#artikliDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').hide();

			$('#registracija').hide();
			$('#dodajArtiklDeo').hide();
			$('#dodajDostavljacaDeo').show();

		});

		

		$('#pretragaBtn').click(function() {
			$('#artikliDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').hide();
			$('#prijava').hide();

			$('#registracija').hide();
			$('#dodajArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#pretragaDeo').show();

		});

	
		$('#pretragaBtn').click(function() {
			$('#registracija').hide();
			$('#prijava').hide();
			$('#artikliDeo').hide();
			$('#dodajArtiklDeo').hide();
			$('#zameniKorisnikaDeo').hide();
			$('#kategorijeDeo').hide();
			$('#istorijaKupovinaDeo').hide();
			$('#omiljeniDeo').hide();
			$('#kupacKorpaDeo').hide();

			$('#mojePorudzbineDeo').hide();
			$('#korpaDeo').hide();
			$('#dostavljeneDeo').hide();

			$('#izmeniArtiklDeo').hide();
			$('#dodajDostavljacaDeo').hide();
			$('#izmeniDostavljacaDeo').hide();

			$('#izvestajiDeo').hide();
			$('#pregledIzvestajaDeo').hide();
			$('#nadjeniOglasiDeo').hide();

			$('#pretragaDeo').show();

		});

	});

	function zameniUlogu(uloga, id) {

		window.location.href = "/WebShop/korisnik/zameniUlogu/" + id + "/"
				+ uloga;

	}
</script>
</head>
<body>



	<header> Web shop </header>
	<div>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link"
				href="/WebShop/korisnik/sviArtikli">Artikli</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/WebShop/korisnik/kategorije">Kategorije</a></li>
			<li class="nav-item"><a id="pretragaBtn" class="nav-link">Pretraga
					artikala</a></li>
			<li class="nav-item"><a class="nav-link "
				href="/WebShop/korisnik/sortiraj">Sortiranje artikala</a></li>
			<li class="nav-item"><a class="nav-link "
				href="/WebShop/korisnik/naPopustu">Artikli na popustu</a></li>

			<c:if test="${sessionScope.logovanKorisnik.uloga == 'ADMIN' }">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown"
					role="button" aria-haspopup="true" aria-expanded="false">Opcije</a>
					<div class="dropdown-menu">
						<a id="dodajArtiklBtn" class="dropdown-item">Dodaj artikl</a>
						<div class="dropdown-divider"></div>

						<a id="dodajDostavljacaBtn" class="dropdown-item">Dodaj
							dostavljaca</a>
						<div class="dropdown-divider"></div>

						<a class="dropdown-item" href="/WebShop/korisnik/sviKorisnici">Korisnici</a>
						<div class="dropdown-divider"></div>

						<a id="izvestajiBtn" class="dropdown-item">Izvestaji</a>
					</div></li>


			</c:if>
			<c:if test="${sessionScope.logovanKorisnik.uloga == 'KUPAC' }">

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown"
					role="button" aria-haspopup="true" aria-expanded="false">Opcije</a>
					<div class="dropdown-menu">
						<a class="dropdown-item"
							href="/WebShop/korisnik/prikaziOmiljne/${sessionScope.logovanKorisnik.id}">Omiljeni
							artikli</a>
						<div class="dropdown-divider"></div>

						<a class="dropdown-item"
							href="/WebShop/korisnik/prikaziKupljene/${sessionScope.logovanKorisnik.id}">Istorija
							kupovina</a>
						<div class="dropdown-divider"></div>

						<a class="dropdown-item"
							href="/WebShop/korisnik/getUKorpi/${sessionScope.logovanKorisnik.id}">Korpa</a>

					</div></li>
			</c:if>
			<c:if test="${sessionScope.logovanKorisnik.uloga == 'DOSTAVLJAC' }">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown"
					role="button" aria-haspopup="true" aria-expanded="false">Opcije</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/WebShop/korisnik/getKorpe">Porudzbine</a>
						<div class="dropdown-divider"></div>

						<a class="dropdown-item"
							href="/WebShop/korisnik/mojePorudzbine/${sessionScope.logovanKorisnik.id}">Moje
							porudzbine</a>
						<div class="dropdown-divider"></div>

						<a class="dropdown-item"
							href="/WebShop/korisnik/dostavljenePorudzbine/${sessionScope.logovanKorisnik.id}">Dostavljene
							porudzbine</a>

					</div></li>
			</c:if>
			<c:if test="${sessionScope.logovanKorisnik == null }">
				<div class="right">
					<ul class="nav nav-pills  ">

						<li id="prijaviSeBtn" class="nav-item"><a class="nav-link"
							href="#">Prijavi se</a></li>
						<li id="registrujSeBtn" class="nav-item"><a class="nav-link"
							href="#">Registruj se</a></li>

					</ul>
				</div>
			</c:if>
			<c:if test="${sessionScope.logovanKorisnik != null }">
				<div class="right">
					<ul class="nav nav-pills justify-content-end ">

						<li id="profilBtn" class="nav-item" data-toggle="modal" data-target="#myModal"><a class="nav-link">Profil
								korisnika</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/WebShop/korisnik/odjaviSe">Odjavi se</a></li>

					</ul>
				</div>
			</c:if>
		</ul>


	</div>



	<div id="registracija" class="form-group" style="display: none">
		<h1>Registracija</h1>
		<form action="/WebShop/korisnik/registracija" method="post">
			<div class="textbox">
				<input type="text" name="korisnickoIme" placeholder="Korisnicko ime"
					pattern="^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
					title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="password" name="lozinka" placeholder="Lozinka"
					pattern="^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
					title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="ime" placeholder="Ime"
					pattern="([a-z]{3,20})" title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="prezime" placeholder="Prezime"
					pattern="([a-z]{3,20})" title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="kontaktTelefon"
					placeholder="Kontakt telefon" pattern="([0-9]{3,20})"
					title="3-20 cifara" required>
			</div>
			<div class="textbox">
				<input type="text" name="adresa" placeholder="Adresa" required>
			</div>
			<div class="textbox">
				<input type="email" name="emailAdresa" placeholder="Email adresa"
					required>
			</div>

			<input type="submit" class="btn" value="Registruj se">
		</form>

	</div>

	<div id="prijava" class="form-group" style="display: none">
		<form action="/WebShop/korisnik/prijaviSe" method="post">
			<h1>Prijava</h1>
			<div class="textbox">
				<input name="korisnickoIme" type="text" placeholder="Korisnicko ime"
					required>
			</div>
			<div class="textbox">
				<input name="lozinka" type="password" placeholder="Lozinka" required>
			</div>
			<input id="loginInput" type="submit" class="btn" value="Prijavi se">
		</form>

	</div>

	<div id="artikliDeo">
		<c:if test="${! empty artikli}">
			<h2>Artikli</h2>
			<c:forEach var="a" items="${artikli}">

				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h6 class="card-subtitle mb-2 text-muted">Naziv:</h6>
						<p class="card-text">${a.naziv}</p>
						<h6 class="card-subtitle mb-2 text-muted">Opis:</h6>
						<p class="card-text">${a.opis}</p>
						<h6 class="card-subtitle mb-2 text-muted">Cena:</h6>
						<p class="card-text">${a.cena}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kolicina:</h6>
						<p class="card-text">${a.kolicina}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kategorija:</h6>
						<p class="card-text">${a.kategorija}</p>
						<c:if test="${sessionScope.logovanKorisnik.uloga == 'KUPAC'}">

							<div class="btn-group-sm">
								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/dodajUOmiljene/${sessionScope.logovanKorisnik.id}/${a.id}'">Dodaj
									u omiljene</button>



								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/selektujArtikl/${a.id}/${sessionScope.logovanKorisnik.id}'">Dodaj
									u korpu</button>
							</div>


						</c:if>
						<c:if test="${sessionScope.logovanKorisnik.uloga == 'ADMIN'}">
							<div class="btn-group-sm">

								<button id="editProductBtn" class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/getArtikl/${a.id}'">Izmeni</button>

								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/obrisiArtikl/${a.id}'">Obrisi</button>

							</div>

						</c:if>
					</div>
				</div>
			</c:forEach>
		</c:if>


	</div>

	<div id="dodajArtiklDeo" style="display: none">
		<form action="/WebShop/korisnik/dodajArtikl" method="post">
			<h1>Dodaj artikl</h1>
			<div class="textbox">
				<input name="naziv" type="text" placeholder="Naziv artikla" required>
			</div>

			<div class="textbox">
				<input name="opis" type="text" placeholder="Opis" required>
			</div>

			<div class="textbox">
				<input name="cena" type="number" placeholder="Cena" required>
			</div>
			<div class="textbox">
				<input name="kolicina" type="number" placeholder="Kolicina" required>
			</div>
			<div class="textbox">
				<input name="kategorija" type="text" placeholder="Kategorija"
					required>
			</div>

			<input type="submit" class="btn" value="Dodaj">
		</form>
		<p id="errorLog" style="color: red; display: none;"></p>

	</div>

	<div id="zameniKorisnikaDeo">
		<table class="table table-striped">
			<c:if test="${! empty korisnici}">
				<tr>
					<th>Ime</th>
					<th>Prezime</th>
					<th>Kontakt telefon</th>
					<th>Adresa</th>
					<th>Email adresa</th>
					<th>Uloga</th>
				</tr>


				<c:forEach var="k" items="${korisnici}">
					<tr>
						<td>${k.ime}</td>
						<td>${k.prezime}</td>
						<td>${k.kontaktTelefon}</td>
						<td>${k.adresa}</td>
						<td>${k.emailAdresa}</td>
						<td><select id='${k.id }' name="uloga"
							onchange="zameniUlogu($(this).val(),'${k.id}')">
								<option value="ADMIN">ADMIN</option>
								<option value="KUPAC">KUPAC</option>
								<option value="DOSTAVLJAC">DOSTAVLJAC</option>

						</select> <script>
							$('#${k.id }').val('${k.uloga}');
						</script></td>

						<c:if test="${k.uloga == 'DOSTAVLJAC'}">
							<td>
								<button class="btn"
									onclick="window.location.href = '/WebShop/korisnik/getKorisnik/${k.id}'">Izmeni</button>
							</td>
							<td>
								<button class="btn"
									onclick="window.location.href = '/WebShop/korisnik/obrisiKorisnika/${k.id}'">Obrisi</button>
							</td>
						</c:if>

					</tr>


				</c:forEach>
			</c:if>
		</table>
	</div>

	<div id="kategorijeDeo">
		<c:if test="${! empty kategorije}">

			<div class="list-group">
				<button type="button"
					class="list-group-item list-group-item-success">Kategorije:</button>
				<c:forEach var="k" items="${kategorije}">

					<c:if test="${k != 'POPUST'}">

						<button id='${c}' class="list-group-item list-group-item-action"
							onclick="window.location.href = '/WebShop/korisnik/artikliKategorije/${k}'">${k}</button>
					</c:if>



				</c:forEach>
			</div>
		</c:if>



	</div>

	<div id="istorijaKupovinaDeo">
		<c:if test="${! empty kupljeni}">

			<h2>Istorija kupovina</h2>

			<c:forEach var="b" items="${kupljeni}">
				<div class="card" style="width: 18rem;">

					<div class="card-body">

						<h6 class="card-subtitle mb-2 text-muted">Naziv:</h6>
						<p class="card-text">${b.naziv}</p>
						<h6 class="card-subtitle mb-2 text-muted">Opis:</h6>
						<p class="card-text">${b.opis}</p>
						<h6 class="card-subtitle mb-2 text-muted">Cena:</h6>
						<p class="card-text">${b.cena}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kolicina:</h6>
						<p class="card-text">${b.kolicina}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kategorija:</h6>
						<p class="card-text">${b.kategorija}</p>

					</div>
				</div>

			</c:forEach>

		</c:if>

	</div>

	<div id="omiljeniDeo">
		<c:if test="${! empty omiljeni}">

			<h2>Omiljeni artikli</h2>


			<c:forEach var="b" items="${omiljeni}">
				<div class="card" style="width: 18rem;">

					<div class="card-body">

						<h6 class="card-subtitle mb-2 text-muted">Naziv:</h6>
						<p class="card-text">${b.naziv}</p>
						<h6 class="card-subtitle mb-2 text-muted">Opis:</h6>
						<p class="card-text">${b.opis}</p>
						<h6 class="card-subtitle mb-2 text-muted">Cena:</h6>
						<p class="card-text">${b.cena}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kolicina:</h6>
						<p class="card-text">${b.kolicina}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kategorija:</h6>
						<p class="card-text">${b.kategorija}</p>

					</div>
				</div>



			</c:forEach>
		</c:if>

	</div>

	<div id="kupacKorpaDeo">
		<c:if test="${! empty uKorpi}">
			<h2>Korpa</h2>



			<c:forEach var="b" items="${uKorpi}">
				<div class="card" style="width: 18rem;">

					<div class="card-body">

						<h6 class="card-subtitle mb-2 text-muted">Naziv:</h6>
						<p class="card-text">${b.naziv}</p>
						<h6 class="card-subtitle mb-2 text-muted">Opis:</h6>
						<p class="card-text">${b.opis}</p>
						<h6 class="card-subtitle mb-2 text-muted">Cena:</h6>
						<p class="card-text">${b.cena}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kolicina:</h6>
						<p class="card-text">${b.kolicina}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kategorija:</h6>
						<p class="card-text">${b.kategorija}</p>

					</div>
				</div>


			</c:forEach>
			<div>
				<button id="buyBtn" type="button" class="btn btn-secondary"
					onclick="window.location.href = '/WebShop/korisnik/kupi/${sessionScope.logovanKorisnik.id}'">Kupi</button>
			</div>


		</c:if>
	</div>

	<div id="profilDeo" >

		<div id="myModal" class="modal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Profil:</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<h6>Ime:</h6>
						<p>${sessionScope.logovanKorisnik.ime}</p>
						<h6>Prezime:</h6>
						<p>${sessionScope.logovanKorisnik.prezime}</p>
						<h6>Kontakt telefon:</h6>
						<p>${sessionScope.logovanKorisnik.kontaktTelefon}</p>
						<h6>Adresa:</h6>
						<p>${sessionScope.logovanKorisnik.adresa}</p>
						<h6>Email:</h6>
						<p>${sessionScope.logovanKorisnik.emailAdresa}</p>

					</div>

				</div>
			</div>
		</div>




	</div>

	<div id="mojePorudzbineDeo">
		<c:if test="${! empty moje}">
			<h2>Moje porudzbine</h2>
			<table class="table table-striped">
				<tr>
					<th>Kupac:</th>
					<th>Datum:</th>
					<th>Cena:</th>
				</tr>


				<c:forEach var="c" items="${moje}">
					<%!int v = 0;%>

					<tr>
						<td id="imena<%=v%>"></td>
						<td>${c.datum}</td>
						<td>${c.cena}</td>
						<td>
							<button class="btn"
								onclick="window.location.href = '/WebShop/korisnik/oznaciKaoDostavljeno/${c.id}'">Oznaci
								kao dostavljeno</button>
						</td>
						<td>
							<button class="btn"
								onclick="window.location.href = '/WebShop/korisnik/otkaziPorudzbinu/${c.id}/${sessionScope.logovanKorisnik.id}'">Otkazi</button>
						</td>
					</tr>
					<%
						v++;
					%>

				</c:forEach>

				<c:forEach var="n" items="${imenaKupaca}">
					<%!int c = 0;%>

					<script>
						$("#imena" +
					<%=c%>
						).append("${n}");
					</script>
					<%
						c++;
					%>
				</c:forEach>

			</table>
		</c:if>

	</div>

	<div id="korpaDeo">
		<c:if test="${! empty korpe}">
			<h2>Porudzbine</h2>
			<table class="table table-striped">
				<tr>
					<th>Kupac:</th>
					<th>Datum:</th>
					<th>Cena:</th>
				</tr>


				<c:forEach var="c" items="${korpe}">

					<%!int count = 0;%>
					<tr>
						<td id="names<%=count%>"></td>
						<td>${c.datum}</td>
						<td>${c.cena}</td>
						<td>
							<button class="btn"
								onclick="window.location.href = '/WebShop/korisnik/preuzmiPorudzbinu/${c.id}/${sessionScope.logovanKorisnik.id}'">Preuzmi
								porudzbinu</button>
						</td>
					</tr>
					<%
						count++;
					%>


				</c:forEach>

				<c:forEach var="n" items="${names}">
					<%!int i = 0;%>

					<script>
						$("#names" +
					<%=i%>
						).append("${n}");
					</script>
					<%
						i++;
					%>
				</c:forEach>

			</table>
		</c:if>
	</div>

	<div id="dostavljeneDeo">
		<c:if test="${! empty dostavljene}">
			<h2>Dostavljene porudzbine</h2>
			<table class="table table-striped">
				<tr>
					<th>Kupac:</th>
					<th>Datum:</th>
					<th>Cena:</th>
				</tr>


				<c:forEach var="c" items="${dostavljene}">
					<%!int z = 0;%>

					<tr>
						<td id="namesss<%=z%>"></td>
						<td>${c.datum}</td>
						<td>${c.cena}</td>

					</tr>
					<%
						z++;
					%>

				</c:forEach>
				<c:forEach var="n" items="${names}">
					<%!int x = 0;%>

					<script>
						$("#namesss" +
					<%=x%>
						).append("${n}");
					</script>
					<%
						x++;
					%>
				</c:forEach>

			</table>
		</c:if>

	</div>

	<div id="izmeniArtiklDeo">
		<c:if test="${a != null}">
			<form action="/WebShop/korisnik/izmeniArtikl/${a.id}" method="post">
				<h1>Izmeni artikl</h1>
				<div class="textbox">
					<input name="naziv" type="text" value="${a.naziv}" required>
				</div>

				<div class="textbox">
					<input name="opis" type="text" value="${a.opis}" required>
				</div>

				<div class="textbox">
					<input name="cena" type="number" value="${a.cena}" required>
				</div>
				<div class="textbox">
					<input name="kolicina" type="number" value="${a.kolicina}" required>
				</div>
				<div class="textbox">
					<input name="kategorija" type="text" value="${a.kategorija}"
						required>
				</div>

				<input type="submit" class="btn" value="Izmeni">
			</form>
		</c:if>
	</div>

	<div id="dodajDostavljacaDeo" style="display: none">
		<h1>Dodaj dostavljaca</h1>
		<form action="/WebShop/korisnik/dodajDostavljaca" method="post">
			<div class="textbox">
				<input type="text" name="korisnickoIme" placeholder="Korisnicko ime"
					pattern="^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
					title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="password" name="lozinka" placeholder="Lozinka"
					pattern="^(?=.{3,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"
					title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="ime" placeholder="Ime"
					pattern="([a-z]{3,20})" title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="prezime" placeholder="Prezime"
					pattern="([a-z]{3,20})" title="3-20 karaktera" required>
			</div>
			<div class="textbox">
				<input type="text" name="kontaktTelefon"
					placeholder="Kontakt telefon" pattern="([0-9]{3,20})"
					title="3-20 cifara" required>
			</div>
			<div class="textbox">
				<input type="text" name="adresa" placeholder="Adresa" required>
			</div>
			<div class="textbox">
				<input type="email" name="emailAdresa" placeholder="Email " required>
			</div>

			<input type="submit" class="btn" value="Dodaj">
		</form>

	</div>

	<div id="izmeniDostavljacaDeo">
		<c:if test="${ k != null}">
			<h1>Izmeni dostavljaca</h1>
			<form action="/WebShop/korisnik/izmeniDostavljaca/${k.id}"
				method="post">

				<div class="textbox">
					<input type="text" name="ime" value="${k.ime}"
						pattern="([a-z]{3,20})" title="3-20 karaktera" required>
				</div>
				<div class="textbox">
					<input type="text" name="prezime" value="${k.prezime}"
						pattern="([a-z]{3,20})" title="3-20 karaktera" required>
				</div>
				<div class="textbox">
					<input type="text" name="kontaktTelefon"
						value="${k.kontaktTelefon}" pattern="([0-9]{3,20})"
						title="3-20 cifara" required>
				</div>
				<div class="textbox">
					<input type="text" name="adresa" value="${k.adresa}" required>
				</div>
				<div class="textbox">
					<input type="email" name="emailAdresa" value="${k.emailAdresa}"
						required>
				</div>

				<input type="submit" class="btn" value="Izmeni">
			</form>
		</c:if>
	</div>

	<div id="izvestajiDeo" style="display: none">
		<div class="list-group">
			<button type="button" class="list-group-item list-group-item-success">
				Izvestaji:</button>
			<button class="list-group-item list-group-item-action"
				onclick="window.location.href = '/WebShop/korisnik/izvestajZaDanas'">Izvestaj
				za danas</button>

			<button class="list-group-item list-group-item-action"
				onclick="window.location.href = '/WebShop/korisnik/kreirajIzvestajZaNedelju'">Izvestaj
				za nedelju</button>

			<button class="list-group-item list-group-item-action"
				onclick="window.location.href = '/WebShop/korisnik/kreirajIzvestaZaMesec'">Izvestaj
				za mesec</button>
		</div>
	</div>

	<div id="pregledIzvestajaDeo">
		<c:if test="${! empty izvestaj}">

			<table class="table table-striped">
				<tr>
					<th>Kupac:</th>
					<th>Datum:</th>
					<th>Cena:</th>
					<th>Status:</th>

				</tr>


				<c:forEach var="c" items="${izvestaj}">
					<%!int b = 0;%>
					<tr>
						<td id="namessss<%=b%>"></td>
						<td>${c.datum}</td>
						<td>${c.cena}</td>
						<td>${c.status}</td>

					</tr>
					<%
						b++;
					%>
				</c:forEach>
				<c:forEach var="n" items="${imenaaa}">
					<%!int l = 0;%>

					<script>
						$("#namessss" +
					<%=l%>
						).append("${n}");
					</script>
					<%
						l++;
					%>
				</c:forEach>

			</table>

			<h4>Profit: ${profit}</h4>
		</c:if>


	</div>

	<div id="pretragaDeo" style="display: none">
		<form action="/WebShop/korisnik/traziArtikl" method="post">
			<h1>Pretraga artikla</h1>
			<div class="textbox">
				<input name="naziv" type="text" value="" placeholder="Naziv artikla">
			</div>

			<div class="textbox">
				<input name="opis" type="text" value="" placeholder="Opis">
			</div>

			<div class="textbox">
				<input name="cena" type="text" value="" placeholder="Cena">
			</div>


			<input type="submit" class="btn" value="Trazi">
		</form>

	</div>

	<div id="nadjeniOglasiDeo">

		<c:if test="${! empty nadjeniArtikli}">

			<c:forEach var="p" items="${nadjeniArtikli}">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h6 class="card-subtitle mb-2 text-muted">Naziv:</h6>
						<p class="card-text">${p.naziv}</p>
						<h6 class="card-subtitle mb-2 text-muted">Opis:</h6>
						<p class="card-text">${p.opis}</p>
						<h6 class="card-subtitle mb-2 text-muted">Cena:</h6>
						<p class="card-text">${p.cena}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kolicina:</h6>
						<p class="card-text">${p.kolicina}</p>
						<h6 class="card-subtitle mb-2 text-muted">Kategorija:</h6>
						<p class="card-text">${p.kategorija}</p>
						<c:if test="${sessionScope.logovanKorisnik.uloga == 'KUPAC'}">
							<div class="btn-group-sm">
								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/dodajUOmiljene/${sessionScope.logovanKorisnik.id}/${a.id}'">Dodaj
									u omiljene</button>


								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/selektujArtikl/${a.id}/${sessionScope.logovanKorisnik.id}'">Dodaj
									u korpu</button>
							</div>


						</c:if>
						<c:if test="${sessionScope.logovanKorisnik.uloga == 'ADMIN'}">
							<div class="btn-group-sm">

								<button id="editProductBtn" class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/getArtikl/${a.id}'">Izmeni</button>


								<button class="btn btn-secondary"
									onclick="window.location.href = '/WebShop/korisnik/obrisiArtikl/${a.id}'">Obrisi</button>

							</div>

						</c:if>
					</div>
				</div>


			</c:forEach>
		</c:if>
	</div>

</body>
</html>