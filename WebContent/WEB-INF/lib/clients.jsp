<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ClientInfoServlet" method="post">
		<label for="nom">Nom :</label>
		<input type="text" id="nom" name="nom"><br>

		<label for="prenom">Pr�nom :</label>
		<input type="text" id="prenom" name="prenom"><br>

		<label for="soci�t�">soci�t� :</label>
		<input type="text" id="soci�t�" name="soci�t�"><br>		

		<label for="ville">Ville :</label>
		<select id="ville" name="ville" size="4">
			<option value="Mahdia">Mahdia</option>
			<option value="Tunis">Tunis</option>
			<option value="Bizete">Bizerte</option>
			<option value="Siliana">Siliana</option>
			<option value="Nabeul">Nabeul</option>
			<option value="Monastir">Moanstir</option>
		</select><br>

		<label for="Adresse">Adresse :</label>
		<TEXTAREA name="Adresse" Rows="2" COLS="50" align=left> </TEXTAREA> <br>

		<button type="submit" name="valider">Valider</button>
		<button type="reset" name="reset">Remettre � z�ro</button>
	</form>

</body>
</html>