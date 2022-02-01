<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Generador Factura</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>
	<header>
		<div class="container" align="right">
			<p class="mb-0">
				<strong>Generador Factura 2019</strong>
			</p>
			<p class="mb-0">
				<strong>Competition Part Ltda.</strong>
			</p>
			<p class="text-secondary">Año 2019</p>
		</div>
	</header>

	<div class="container">
		<form action="/controlGeneradorFacturas/ProcesaLogin" method="post">

			<div class="col-md-6 mx-auto">
				<label for="username" class="form-label">Usuario</label> <input
					type="text" class="form-control" name="username">
			</div>
			<div class="col-md-6 mx-auto">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" name="password">
			</div>

			<div class="d-grid gap-2 mt-2 col-6 mx-auto">
				<button type="submit" class="btn btn-success btn-lg">Enviar</button>
			</div>
			<div>
				<p class="text-danger" align="center"><%=request.getAttribute("error")%></p>
			</div>
		</form>
	</div>
</body>
</html>