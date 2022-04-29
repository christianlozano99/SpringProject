<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h3>Employees</h3>
		<table class="table table-striped">
			<caption></caption>
			<thead>
				<tr>
					<td><b>Id</b></td>
					<td><b>Name</b></td>
					<td><b>Department</b></td>
				</tr>
			</thead>
			<tbody>
				<core:forEach items="${emp}" var="emp">
					<tr>
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.dept}</td>
					</tr>
				</core:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>