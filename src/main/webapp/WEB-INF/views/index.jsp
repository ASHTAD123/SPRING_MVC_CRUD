<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>

</head>

<title>Employee Management</title>

<body>
<nav  class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><b>ABC Company Pvt.Ltd<b></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
      </ul>
      <span class="navbar-text">
        All Rights reserved
      </span>
    </div>
  </div>
</nav>


	<h2 class="mt-5"></h2>
	<div class="container">

		<div class="col mt-5">
			<table class="table table-dark">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Name</th>
						<th scope="col">Age</th>
						<th scope="col">Address</th>
						<th scope="col">Company</th>
						<th scope="col">Update</th>
						<th scope="col">Remove</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${employeesList}" var="emp">
						<tr>
							<th scope="row">${emp.empId}</th>
							<td>${emp.empName}</td>
							<td>${emp.empAge}</td>
							<td>${emp.empAddress}</td>
							<td>${emp.empOrg}</td>
								<td><a href="update/${emp.empId}"><i class="fa-regular fa-pen-to-square"></i></a></td>
							<td><a href="remove/${emp.empId}"><i class="fa-solid fa-trash"></i></a></td>
						
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="container text-center mt-5">
				<a href="addEmployee" class="btn btn-success">Add
					Employee</a>
			</div>
		</div>

	</div>
</body>
</html>
