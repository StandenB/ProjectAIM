<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" /> -->
 
<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/united/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="/style.css" /> -->
<%@include file="navbar.jsp"%>
</head>
<body>
<div align="center"  >
<br>
<h2>Search results for ${city} in ${state}</h2>
<br>
<br>    
</div>
<div align="center"  >
<%@include file="locations-map.jsp"%>
   </div>
<h4>Filter by Date Range(Database starts Jan. 1, 2013)</h4>
<p></p>
<form action="/dateSearch/${state }/${city}">
<table>
	<thead><strong><tr><td>FROM DATE</td><td>TO DATE</td></tr></strong></thead>
		<tr><td><input type="date" name="fromDate" min="2013-01-01" max="2018-03-31" value="2013-01-01"/></td>
		<td><input type="date" name="toDate" min="2013-01-01" max="2018-03-31" value="2018-03-31" /></td></tr>

</table>
<button>SUBMIT</button>
</form>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Incident Date</th>
      <th scope="col">Address</th>
      <th scope="col">Number Killed</th>
      <th scope="col">Number Injured</th>
    </tr>
  </thead>
  <tbody> 
<c:forEach var="incident" items="${incidents }">
    <tr class="table-warning">
    <td scope="row" title="Click to see more details"><a href = "/incident/${incident.incidentId}">${incident.date}</a></td>
    <td scope="row">${incident.address}</td>
    <td scope="row" style="text-align:center">${incident.n_killed}</td>
    <td scope="row" style="text-align:center">${incident.n_injured}</td>        
    </tr>
</c:forEach>
</table>
</body>
</html>