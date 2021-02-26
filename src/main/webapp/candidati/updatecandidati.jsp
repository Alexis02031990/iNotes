    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.CandidatiDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit Candidati</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="CandidatiServlet?mode=candidatilist">Candidati</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%CandidatiDTO c = (CandidatiDTO) request.getAttribute("dto");%>


<form id="floatleft" action="CandidatiServlet?mode=update&idCandidati=<%=c.getIdCandidati()%>" method="post">
<div class="row">
    <div class="col-25">
     <label for="pass">idStaff</label>
    </div>
    <div class="col-75">
      <input type="text" id="idStaff" name="idStaff" placeholder="inserisci id staff"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">nome</label>
    </div>
    <div class="col-75">
      <input type="text" id="nome" name="nome" placeholder="inserisci Nome"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="cognome">Cognome</label>
    </div>
    <div class="col-75">
      <input type="text" id="cognome" name="cognome" placeholder="inserisci Cognome">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="email" name="email" placeholder="inserisci Email"> 
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-25">
      <label for="luogo">Luogo di Provenienza</label>
    </div>
    <div class="col-75">
      <input type="text" id="luogo" name="luogoProvenienza" placeholder="inserisci luogoProvenienza">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Numero di Telefono</label>
    </div>
    <div class="col-75">
      <input type="text" id="numero" name="numeroTelefono" placeholder="inserisci il numero di Telefono"> 
    </div>
  </div>
 
  
  <div class="row">
    <div class="col-25">
      <label for="titolo">Titolo di Studio</label>
    </div>
    <div class="col-75">
      <input type="text" id="titolo" name="titoloStudio" placeholder="inserisci titolo di Studio">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Titolo di Laurea</label>
    </div>
    <div class="col-75">
      <input type="text" id="titl" name="titoloLaurea" placeholder="inserisci titolo di Laurea"> 
    </div>
  </div>
  
   <div class="row">
    <div class="col-25">
      <label for="date">Data di Candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="date" name="dataCandidatura" placeholder="inserisci data di Candidatura">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Range di candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="range" name="rangeCandidatura" placeholder="inserisci Range di candidatura"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="type">Ha gia' fatto il colloquio?</label>
    </div>
   		 <div class="col-75">
 			<select id="coll" name="colloquioConoscitivo">
  				<option value="true">SI</option>
  				<option value="false">NO</option>
 
			</select>
    	</div>
  </div>
  
 
  <div class="row">
    <div class="col-25">
     <label for="pass">Candidatura</label>
    </div>
    <div class="col-75">
      <input type="text" id="cand" name="candidatiTramite" placeholder="Come ci hai conosciuto?"> 
    </div>
  </div>
  
   <div class="row">
    <div class="col-25">
      <label for="type">Idoneita</label>
    </div>
   		 <div class="col-75">
 			<select id="coll" name="idoneita" placeholder="Il candidato e' idoneo?">
  				<option value="true">SI</option>
  				<option value="false">NO</option>
 
			</select>
    	</div>
  </div>
  
  
  <div class="row">
    <div class="col-25">
     <label for="pass">Codice fiscale</label>
    </div>
    <div class="col-75">
      <input type="text" id="cod" name="codiceFiscale" placeholder="inserisci il codice fiscale"> 
    </div>
  </div>
   <div class="row">
    <div class="col-25">
      <label for="type">Usertype</label>
    </div>
   		 <div class="col-75">
 			<select id="type" name="usertype">
  				<option value="ADMIN">ADMIN</option>
  				<option value="USER">USER</option>
 
			</select>
    	</div>
  </div>
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>
    