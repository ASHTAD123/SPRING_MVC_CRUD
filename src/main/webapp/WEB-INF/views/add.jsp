<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />



</head>
<body>

	<h2 style="text-align: center ;font-family:verdana;" class="mt-5 mb-5">Add Employee </h2>
	<div class="container mt-13">

		<form class="form-control" action="handleEmployee" method="post">

			<div class="mb-2">
				<label for="name" class="form-label">Name:</label> <input
					type="text" name="empName" class="form-control" required>
			</div>

			<div class="mb-2">
				<label for="age" class="form-label">Age:</label> <input type="text"
					name="empAge" class="form-control" required>
			</div>

			<div class="mb-2">
				<label for="address" class="form-label">Address:</label> <input
					type="text" name="empAddress" class="form-control" required>
			</div>

			<div class="mb-2">
				<label for="organization" class="form-label">Organization:</label> <input
					type="text" name="empOrg" class="form-control" required>
			</div>


			<div class="text-center">
				<button type="submit" class="btn btn-primary">Save</button>

				<a href="${pageContext.request.contextPath}/home"
					class="btn btn-danger">Back</a>
			</div>
		</form>
	</div>
</body>
</html>
