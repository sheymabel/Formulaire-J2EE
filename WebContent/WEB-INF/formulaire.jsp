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
		
		<label for="heureDebut">Heure de début:</label>
		<input type="text" name="heureDebut" id="heureDebut"><br>
		
		<label for="durée">Durée:</label>
		<input type="text" name="durée" id="durée"><br>
		
	<label for="intervenants">Intervenants/Personnel:</label>
<input type="text" name="intervenants[]" id="intervenants"><br>
	
		
		<label for="client">Client/Societé:</label>
		<input type="text" name="client" id="client"><br>
		
		<input type="submit" value="Valider">
		<input type="reset" value="remettre à zero">
	</form>
	
	<h2>Liste des interventions :</h2>
	
	<c:if test="${not empty planning.interventions}">
		<table>
			<tr>
				<th>Label</th>
				<th>Date</th>
				<th>Heure de début</th>
				<th>Durée</th>
				<th>Intervenant</th>
				<th>Client</th>
			</tr>
			<c:forEach var="intervention" items="${planning.interventions}">
				<tr>
					<td>${intervention.label}</td>
					<td>${intervention.date}</td>
					<td>${intervention.HeureDebut}</td>
					<td>${intervention.durée}</td>
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
	<p>Error: Heure de début field cannot be empty!</p>
</c:if>
<c:if test="${empty param.durée}">
	<p>Error: Durée field cannot be empty!</p>
</c:if>
<c:if test="${empty param.intervenant}">
	<p>Error: Intervenant/Personnel field cannot be empty!</p>
</c:if>
<c:if test="${empty param.client}">
	<p>Error: Client/Societé field cannot be empty!</p>
</c:if>

</body>
</html>