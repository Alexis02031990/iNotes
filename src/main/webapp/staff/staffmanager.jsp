    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.StaffDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Staff Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>

<div class="navbar">
  <a  href="homeadmin.jsp">Home</a>
  <a class="active" href="StaffServlet?mode=stafflist">Staff</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<div class="main">
	<%
		List<StaffDTO> list = (List<StaffDTO>) request.getAttribute("list");
	%>

<br>

	<table>
		<tr>
			    <th>IdStaff</th>
		        <th>Nome</th>
		        <th>Cognome</th>
                <th>Email</th>
                <th>Posizione</th>
                <th>Numero_telefono</th>
                <th>data_assunzione</th>
                <th>Sede</th>
                <th>OreSettimanali</th>
                <th>CodiceFiscale</th>
			<th></th>
			<th></th>
		</tr>
		<%
			for (StaffDTO u : list) {
		%>
		<tr>
			<td><a href=StaffServlet?mode=read&idStaff=<%=u.getIdStaff()%>><%=u.getIdStaff()%>  </a></td>
			<td><%=u.getNome()%></td>
			<td><%=u.getCognome()%></td>
			<td><%=u.getEmail()%></td>
			<td><%=u.getPosizione()%></td>
			<td><%=u.getNumero_telefono()%></td>
			<td><%=u.getData_assunzione()%></td>
			<td><%=u.getSede()%></td>
			<td><%=u.getOre_settimanali()%></td>
			<td><%=u.getCodice_fiscale()%></td>
			
			<td><a href=StaffServlet?mode=read&update=true&idStaff=<%=u.getIdStaff()%>>Edit</a>
			</td>
			<td><a href=StaffServlet?mode=delete&idStaff=<%=u.getIdStaff()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>



<form id="floatright" action="StaffServlet?mode=insert" method="post">
<div class="row">
    <div class="col-25">
      <label for="staff">idStaff</label>
    </div>
    <div class="col-75">
      <input type="text" id="staff" name="idstaff" placeholder="inserisci idstaff">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="name">Nome</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="nome" placeholder="inserisci nome">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="lastname">Cognome</label>
    </div>
    <div class="col-75">
      <input type="text" id="lastname" name="cognome" placeholder="inserisci cognome"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="mail">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="mail" name="email" placeholder="inserisci email"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="pos">Posizione</label>
    </div>
    <div class="col-75">
      <input type="text" id="pos" name="posizione" placeholder="inserisci posizione"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="num">Numero</label>
    </div>
    <div class="col-75">
      <input type="number" id="num" name="numero" placeholder="inserisci numero"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="dat">Data</label>
    </div>
    <div class="col-75">
      <input type="text" id="dat" name="data_assunzione" placeholder="inserisci data_assunzione"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="sed">Sede</label>
    </div>
    <div class="col-75">
      <input type="text" id="sed" name="sede" placeholder="inserisci sede"> 
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="ora">Ore</label>
    </div>
    <div class="col-75">
      <input type="text" id="ora" name="ore_settimanali" placeholder="inserisci oreset_timanali"> 
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
     <label for="cod">Codice</label>
    </div>
    <div class="col-75">
      <input type="text" id="cod" name="codice_fiscale" placeholder="inserisci codice_fiscale"> 
    </div>
  </div>
  
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>
