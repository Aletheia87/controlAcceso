<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>
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
		<p class="text-secondary">
			Año 2019
		</p>
	</div>
</header>


	

		<div class="container">
				<h5>Información de Cliente</h5>
				<p><%=request.getParameter("nombre")%></p>
				<p><%=request.getParameter("empresa")%></p>
				<p><%=request.getParameter("rut")%></p>
				<p><%=request.getParameter("direccion")%></p>
				<p><%=request.getParameter("ciudad")%>, <%=request.getParameter("pais")%></p>
			

		<table class="table table-striped table-dark">
			<thead>
			
				<tr>
					<th>ITEM</th>
					<th>DESCRIPCIÓN</th>
					<th>VALOR UNITARIO</th>
					<th>CANTIDAD</th>
					<th>VALOR TOTAL</th>
				</tr>
			</thead>
				<tbody>
				<tr>
					<td>Válvulas Titanio</td>
					<td>Válvulas de Carrera</td>
					<td>$120.000</td>					
					<td><%=request.getParameter("cant1")%></td>
					<td><%=request.getAttribute("valor1")%></td>
				</tr>
				
				<tr>
					<td>Turbo Full Carrera</td>
					<td>Turbo de Competición Multimarca</td>
					<td>$1.700.000</td>
					<td><%=request.getParameter("cant2")%></td>
					<td><%=request.getAttribute("valor2")%></td>

				</tr>
				<tr>
					<td>Kit de Freno Competición</td>
					<td>Juego de discos, balatas, caliper de competición</td>
					<td>$760.000</td>
					<td><%=request.getParameter("cant3")%></td>
					<td><%=request.getAttribute("valor3")%></td>

				</tr>
				<tr>
					<td>Sistema de Refrigeración</td>
					<td>Sistema de Enfriamiento Motor Carrera</td>
					<td>$2.300.000</td>
					<td><%=request.getParameter("cant4")%></td>
					<td><%=request.getAttribute("valor4")%></td>

				</tr>
				<tr>
					<td>Plumillas Limpiaparabrisas Standar</td>
					<td>Plumilla para Lluvia</td>
					<td>$10.000</td>
					<td><%=request.getParameter("cant5")%></td>
					<td><%=request.getAttribute("valor5")%></td>

				</tr>
			</tbody>
		</table>


		<table class="table table-dark">
			<thead>
				<tr>
					<th align="center">VALOR TOTAL NETO</th>
					<th>DESCUENTO</th>
					<th>VALOR TOTAL</th>
				</tr>
				</thead>
			<tbody>
				<tr>
					<td><%=request.getAttribute("subtotal")%></td>
					<td>10%</td>
					<td><%=request.getAttribute("total")%></td>

				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>