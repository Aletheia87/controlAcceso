<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Generador Factura</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
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
<body>
	<div class="container">
	<form  action="/generadorFacturas/InfoFinal" method="get">
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="nombre" class="form-label">Nombre Completo</label> <input
					type="text" class="form-control" name="nombre">
			</div>
			<div class="form-group col-md-4">
				<label for="empresa" class="form-label">Empresa</label> <input
					type="text" class="form-control" name="empresa">
			</div>
			<div class="form-group col-md-4">
				<label for="rut" class="form-label">Rut</label> <input type="text"
					class="form-control" name="rut">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="direccion" class="form-label">Dirección</label> <input
					type="text" class="form-control" name="direccion"
					placeholder="Main St 12342">
			</div>
			<div class="form-group col-md-4">
				<label for="ciudad" class="form-label">Ciudad</label> <input
					type="text" class="form-control" name="ciudad">
			</div>
			<div class="form-group col-md-4">
				<label for="pais" class="form-label">País</label> <input type="text"
					class="form-control" name="pais">
			</div>
		</div>

		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th>ITEM</th>
					<th>DESCRIPCIÓN</th>
					<th>VALOR UNITARIO</th>
					<th>CANTIDAD</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Válvulas Titanio</td>
					<td>Válvulas de Carrera</td>
					<td>$120.000</td>
					<td><input name="cant1"></td>
				</tr>
				<tr>
					<td>Turbo Full Carrera</td>
					<td>Turbo de Competición Multimarca</td>
					<td>$1.700.000</td>
					<td><input name="cant2"></td>
				</tr>
				<tr>
					<td>Kit de Freno Competición</td>
					<td>Juego de discos, balatas,caliper de competición</td>
					<td>$760.000</td>
					<td><input name="cant3"></td>
				</tr>
				<tr>
					<td>Sistema de Refrigeración</td>
					<td>Sistema de Enfriamiento Motor Carrera</td>
					<td>$2.300.000</td>
					<td><input name="cant4"></td>
				</tr>
				<tr>
					<td>Plumillas Limpiaparabrisas Standar</td>
					<td>Plumilla para Lluvia</td>
					<td>$10.000</td>
					<td><input name="cant5"></td>
				</tr>
			</tbody>
		</table>


		<div class="my-2 mx-2 text-right">
			<button type="submit" class="btn btn-success btn-lg">Generar
				Factura</button>
			<button type="reset" class="btn btn-secondary btn-lg">Limpiar</button>
		</div>
	</form>
	</div>
</body>
</html>