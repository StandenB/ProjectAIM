<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Representatives</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />

</head>
<body>

<h1></h1>


<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Chamber</th>
      <th scope="col">Party</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
    </tr>
  </thead>
  <tbody>
<c:forEach var="rep" items="${reps}">

	<tr>
		<td>${rep.full_name}</td>
		<td >${rep.chamber}</td>
		<td>${rep.party }</td>
		<td >${rep.email}</td>
		<td> <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
			<a class="a2a_button_email"></a>
			<a class="a2a_button_google_gmail"></a>
			<a class="a2a_button_yahoo_mail"></a>
		
		<script>
			var a2a_config = a2a_config || {};
			a2a_config.templates = a2a_config.templates || {};
			a2a_config.templates.email = {
			    to:"${rep.email}",
				subject: "I was impacted by gun violence on ${incident.date}",
			    body: "Dear ${rep.full_name}, I knew someone who was involved in an incident"
			};
			</script>
			<script async src="https://static.addtoany.com/menu/page.js"></script>
		</div>
		</td>
	</tr>

</c:forEach>
</tbody>
</table>

</body>

</html>