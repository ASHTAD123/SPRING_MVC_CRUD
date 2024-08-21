<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">

<title>Add Employee</title>
</head>
<body>

	<h2 class="mt-24">Update Employee Details</h2>
	<div class="container">

		<form class="form-control"
			action="${pageContext.request.contextPath}/handleEmployee"
			method="post">

			<div class="mb-2">
				<label for="name" class="form-label">ID:</label> <input type="text"
					name="empId" class="form-control" value="${empModel.empId}"
					required>
			</div>

			<div class="mb-2">

				<label for="name" class="form-label">Name:</label> <input
					type="text" name="empName" class="form-control"
					value="${empModel.empName}" required>
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
					type="text" name="empOrg" class="form-control"
					value="${empModel.empOrg}" required>
			</div>


			<div class="text-center">
				<button type="submit" class="btn btn-primary">Update</button>

				<a href="${pageContext.request.contextPath}/home"
					class="btn btn-outline-danger">Back</a>
			</div>
		</form>
	</div>
</body>
</html>
