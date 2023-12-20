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
	
	<title>Listado</title>
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
								<a  class="itemMobile linkMenu linkM_5" href="../pages/tickets.html">Compar tickets</a>
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
						<a class="linkMenu hide3 linkM_5" href="../pages/tickets.html">Comprar tickets</a>
					</div>
				</div>
			</div>
				
		<div class="container mt-2 mb-5">
<%
	ConnectionController connectionController = new ConnectionController();		
	ResultSet resultSet =  connectionController.consult("SELECT * FROM tickets");
	%>
			<h1 class="text-center mt-5 pt-5 mb-4"> Listado de Tickets </h1>
	
			<table id="listadoTickets" class="table table-striped">			
				<tr>
					<th class="text-center">Trámite Nº</th>
					<th class="text-center">Nombre</th>
					<th class="text-center">Apellido</th>
					<th class="text-center">Email</th>
					<th class="text-center">Cantidad</th>
					<th class="text-center">Pago</th>
					<th class="text-center">Descuento</th>
					<th class="text-center">Activo</th>
					<th class="text-center">Pagado</th>
				</tr>
				
				<% while(resultSet.next()){ %>
				<tr class="normal">	
					<th class="text-center" scope="row" id="<%= resultSet.getInt(1)%>"><%= resultSet.getInt(1)%></th>
					<td class="text-center"><%= resultSet.getString(2)%></td>
					<td class="text-center"><%= resultSet.getString(3)%></td>
					<td class="text-center"><%= resultSet.getString(4)%></td>
					<td class="text-center"><%= resultSet.getString(5)%></td>
					<td class="text-center"><%= resultSet.getString(6)%></td>
					<td class="text-center"><%= resultSet.getString(7)%> %</td>
					<td class="text-center"><INPUT type="checkbox"  disabled <% out.println((resultSet.getBoolean(8)?"checked":"unChecked"));%>></td>								
					<td class="text-center"><INPUT type="checkbox"  disabled <% out.println((resultSet.getBoolean(10)?"checked":"unChecked"));%>></td>								
				</tr>
				<% } 
				connectionController.close();
				%>
			</table>
						
			<button type="button" class="w-100 btn btn-lg btn-form buttonColor" id="modifyTicketButton" disabled>Modificar ticket seleccionado</button>
									
<%
	ConnectionController connectionController2 = new ConnectionController();

	ResultSet resultSet2 =  connectionController2.consult("SELECT * FROM oradores");
	%>
			<h1 class="text-center mt-5 mb-4"> Listado de Oradores </h1>
	
			<table id="listadoSpeakers" class="table table-striped">			
				<tr>					
					<th class="text-center">Trámite Nº</th>
					<th class="text-center">Nombre</th>
					<th class="text-center">Apellido</th>
					<th class="text-center">Email</th>
					<th class="text-center">Tema</th>
					<th class="text-center">Activo</th>
				</tr>
					
				<% while(resultSet2.next()){ %>
				<tr class="normal">					
					<th class="text-center" scope="row" id="<%= resultSet2.getInt(1)%>"><%= resultSet2.getInt(1)%></th>
					<td class="text-center"><%= resultSet2.getString(2)%></td>
					<td class="text-center"><%= resultSet2.getString(3)%></td>
					<td class="text-center"><%= resultSet2.getString(4)%></td>
					<td class="text-center"><%= resultSet2.getString(5)%></td>
					<td class="text-center"><INPUT type="checkbox"  disabled <% out.println((resultSet2.getBoolean(6)?"checked":"unChecked"));%>></td>
				</tr>
				<% } 
				connectionController2.close();
				%>
			</table>
			
			<button type="button" class="w-100 btn btn-lg btn-form buttonColor" id="modifySpeakerButton" disabled>Modificar orador seleccionado</button>
	
			<button type="reset" class="w-100 btn btn-lg btn-form buttonColor mt-5" id="aceptButton">Salir</button>
		
		</div>			
		
	</div>
			
	<script src="../js/restrictedAccess.js"></script>
</body>
</html>