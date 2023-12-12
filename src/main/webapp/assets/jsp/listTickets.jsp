<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
 
	<link rel="stylesheet" href="../css/bootstrap.min.css"> 
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/summary.css">
	
	
	<title>Pagar tickets</title>
	</head>
	<body onload="nobackbutton()">
		
	
	<div class="mainProject">
				<div class="headerProject">
				<div class="desktop">
					<div class="menuLeft">
						<div class="imgLogo"><img src="../img/codoacodo.png" class="imageLogo" alt="logo Codo a Codo">
						</div>
						<p class="txtLogo">Conf Bs As</p>
					</div>
					<div class="menuRight">
						<div class="mobile">
							<a id="menuMobile"><span class="cac cac-menu"></span></a>
							<div class="menuItems">
								<a href="../../index.html" class="itemMobile linkMenu">La conferencia</a>
								<a class="itemMobile linkMenu" href="#">El lugar y la fecha</a>
								<a class="otro itemMobile linkMenu" href="../../index.html#oradores">Los oradores</a>
								<a class="itemMobile linkMenu" href="../../index.html#formulario">Conviértete en
									orador</a>
								<a href="#" class="itemMobile linkMenu linkM_5">Compar tickets</a>
							</div>
						</div>
						<a class="linkMenu hideMenu_1" id="linkM_1" href="../../index.html">La conferencia</a>
						<a class="linkMenu hideMenu_2" id="linkM_2" href="../../index.html#oradores">Los oradores</a>
						<a class="linkMenu hideMenu_3" id="linkM_1" href="#">El lugar y la fecha</a>
						<a class="linkMenu hideMenu_4" id="linkM_4" href="../../index.html#formulario">Conviértete en
							orador</a>
						<div class="more">
							<ul>
								<li><a class="desktopMore linkMenu hide3">...</a>
									<ul class="subMenu">
										<li><a class="ItemSubmenu ItemSubmenu_1" href="../../index.html">La
												conferencia</a></li>
										<li><a class="ItemSubmenu ItemSubmenu_2" href="../../index.html#oradores">Los
												oradores</a></li>
										<li><a class="ItemSubmenu ItemSubmenu_3" href="#">El lugar y la fecha</a></li>
										<li><a class="ItemSubmenu ItemSubmenu_4"
												href="../../index.html#formulario">Conviértete en orador</a></li>
									</ul>
								</li>
							</ul>
						</div>
						<a class="linkMenu hide3 linkM_5" href="#">Comprar tickets</a>
					</div>
				</div>
			</div>
					<div class="container">
	<%
	ConnectionController connectionController = new ConnectionController();		
	ResultSet resultSet =  connectionController.consult("SELECT * FROM tickets WHERE Activo = TRUE");
	%>

	<h1 class="text-center mt-5 pt-5 mb-4"> Listado de tickets</h1>
	
	<table class="table table-striped">
	
		<tr>
			<th class="text-center">Trámite Nº</th>
			<th class="text-center">Cantidad de tickets</th>
			<th class="text-center">Descuento</th>
			<th class="text-center">Importe Pagado</th>
		</tr>
		
<% while(resultSet.next()){ %>
		<tr>	
			<th class="text-center" scope="row"><%= resultSet.getInt(1)%></th>
			<td class="text-center"><%= resultSet.getString(5)%></td>
			<td class="text-center"><%= resultSet.getString(7)%> %</td>
			<td class="text-center"><%= resultSet.getString(6)%></td>
		</tr>

<% } %>
	</table>
	
	<br>
		
	<p class="text-center"><b>Cuando se acredite su pago, su Nº de Trámite aparecerá en esta lista</b> y será contactado por email para confirmarle su ubicación en la sala.</p>
	<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N° de tramite.</p>
		
	<button type="reset" class="w-100 btn btn-lg btn-form buttonColor" id="aceptButton">Salir</button>
				
	</div>
</div>			
	<script src="../js/postickets.js"></script>
</body>
</html>