<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<h1 class="navbar-brand"></h1>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
		<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>The name of club</th>
						<th>Leader</th>
						<th>Description of club</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${listUser}">
						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.leader}" /></td>
							<td><c:out value="${user.description}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
</div>

</body>
</html>
