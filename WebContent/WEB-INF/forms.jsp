<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
	<title>Intervention Info Result</title>
</head>
<body>
	<h1> Resulat :</h1>
	<p>L'intervention est intitulée: <c:out value="${intervention.label}" /></p>
	<p>Elle est planifiée pour le <c:out value="${intervention.date}" /> à 
	<c:out value="${intervention.heureDebut}" /> pour <c:out value="${intervention.durée}" /> minutes.</p>
	<p>Notre personnel <c:out value="${intervention.intervenant}" /> va l'assurer au profit de la client
	 <c:out value="${intervention.client}" />.</p>
</body>
</html>
