<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Insert</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
	<h1>Add New Employee</h1>
	<form:form modelAttribute="form">

		<div class="form-group">
			<form:label path="name">Name </form:label>
			<form:input path="name" class="form-control"/>
			<form:errors path="name" />
		</div>

		
		<div class="form-group">
			<form:label path="dept"> Department </form:label>
			<form:input path="dept" class="form-control" />
			<form:errors path="dept" />
		</div>
		
		<div>
			<input class="btn btn-dark" type="submit" value="Add New Employee" />
		</div>

	</form:form>
</div>

</body>
</html>