<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>News</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<h1 class="navbar-brand">You have entered as an administrator</h1>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/newlist"
					class="nav-link">Clubs</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="updatenew" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insertnew" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit News
            		</c:if>
						<c:if test="${user == null}">
            			Add News
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>News topic:</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="topic" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>News direction:</label> <input type="text"
						value="<c:out value='${user.leader}' />" class="form-control"
						name="date">
				</fieldset>


				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
