<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Ajout d'une intervention</h1>
	
<form action="ClientInfoservlet" method="post" onsubmit="return checkDate();">
		<label for="label">Label:</label>
		<input type="text" name="label" id="label"><br>
		
		<label for="date">Date:</label>
		<input type="date" name="date" id="date"><br>
		
		<label for="heureDebut">Heure de d�but:</label>
		<input type="text" name="heureDebut" id="heureDebut"><br>
		
		<label for="dur�e">Dur�e:</label>
		<input type="text" name="dur�e" id="dur�e"><br>
		
	<label for="intervenants">Intervenants/Personnel:</label>
<input type="text" name="intervenants[]" id="intervenants"><br>
	
		
		<label for="client">Client/Societ�:</label>
		<input type="text" name="client" id="client"><br>
		
		<input type="submit" value="Valider">
		<input type="reset" value="remettre � zero">
	</form>
	
	<h2>Liste des interventions :</h2>
	
	<c:if test="${not empty planning.interventions}">
		<table>
			<tr>
				<th>Label</th>
				<th>Date</th>
				<th>Heure de d�but</th>
				<th>Dur�e</th>
				<th>Intervenant</th>
				<th>Client</th>
			</tr>
			<c:forEach var="intervention" items="${planning.interventions}">
				<tr>
					<td>${intervention.label}</td>
					<td>${intervention.date}</td>
					<td>${intervention.HeureDebut}</td>
					<td>${intervention.dur�e}</td>
					<td>${intervention.intervenant}</td>
					<td>${intervention.client}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<c:if test="${empty param.label}">
	<p style="color:red;">Error: Label field cannot be empty!</p>
</c:if>
<c:if test="${empty param.date}">
	<p>Error: Date field cannot be empty!</p>
</c:if>
<c:if test="${empty param.heureDebut}">
	<p>Error: Heure de d�but field cannot be empty!</p>
</c:if>
<c:if test="${empty param.dur�e}">
	<p>Error: Dur�e field cannot be empty!</p>
</c:if>
<c:if test="${empty param.intervenant}">
	<p>Error: Intervenant/Personnel field cannot be empty!</p>
</c:if>
<c:if test="${empty param.client}">
	<p>Error: Client/Societ� field cannot be empty!</p>
</c:if>

</body>
</html>