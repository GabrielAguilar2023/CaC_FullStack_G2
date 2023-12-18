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
		<title>Listado de tickets</title>
	</head>

	<body onload="nobackbutton()">
<%
	ConnectionController connectionController = new ConnectionController();		
	ResultSet resultSet =  connectionController.consult("SELECT * FROM tickets WHERE Activo = TRUE");
%>
	
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
								<a class="itemMobile linkMenu" href="../../index.html#formulario">Convi�rtete en
									orador</a>
								<a href="../pages/tickets.html" class="itemMobile linkMenu linkM_5">Compar tickets</a>
							</div>
						</div>
						<a class="linkMenu hideMenu_1" id="linkM_1" href="../../index.html">La conferencia</a>
						<a class="linkMenu hideMenu_2" id="linkM_2" href="../../index.html#oradores">Los oradores</a>
						<a class="linkMenu hideMenu_3" id="linkM_1" href="#">El lugar y la fecha</a>
						<a class="linkMenu hideMenu_4" id="linkM_4" href="../../index.html#formulario">Convi�rtete en
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
												href="../../index.html#formulario">Convi�rtete en orador</a></li>
									</ul>
								</li>
							</ul>
						</div>
						<a class="linkMenu hide3 linkM_5" href="../pages/tickets.html">Comprar tickets</a>
					</div>
				</div>
			</div>


		<div class="bodyProject">
			<div class="container general mb-5">
				
				<h1 class="text-center mb-4"> Listado de tickets</h1>
				
				<table class="table table-striped">
				
					<tr>
						<th class="text-center">Tr�mite N�</th>
						<th class="text-center">Cantidad de tickets</th>
						<th class="text-center">Descuento</th>
						<th class="text-center">Importe</th>
						<th class="text-center">Pagado</th>
						
					</tr>
					
			<% while(resultSet.next()){ %>
					<tr>	
						<th class="text-center" scope="row"><%= resultSet.getInt(1)%></th>
						<td class="text-center"><%= resultSet.getString(5)%></td>
						<td class="text-center"><%= resultSet.getString(7)%> %</td>
						<td class="text-center"><%= resultSet.getString(6)%> $</td>
						<td class="text-center"><INPUT type="checkbox"  disabled <% out.println((resultSet.getBoolean(10)?"checked":"unChecked"));%>></td>
					</tr>
			
			<% } %>
				</table>
				
				<br>
					
				<p class="text-center"><b>Cuando se acredite su pago, su N� de Tr�mite aparecer� en esta lista</b> y ser� contactado por email para confirmarle su ubicaci�n en la sala.</p>
				<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N� de tramite.</p>	

				<button type="reset" class="w-100 btn btn-lg btn-form buttonColor mt-3" id="aceptButton">Volver</button>
						
				</div>
			</div>
		
		<div class="footerProject">
				<ul>
					<li>
						<a href="#" class="linkFooter" id="linkF_1">
							<p> Preguntas frecuentes</p>
							<div><span class="cac cac-frequent_questions imgFooter" title="Preguntas frecuentes" ></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_2">
							<p> Contactenos</p>
							<div><span class="cac cac-contact imgFooter" title="Cont�ctenos" ></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_3">
							<p> Prensa</p>
							<div><span class="cac cac-press imgFooter" title="Prensa"></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_4">
							<p> Conferencias</p>
							<div><span class="cac cac-conferences imgFooter" title="Conferencias"></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_5">
							<p>T�rminos y condiciones</p>
							<div><span class="cac cac-terms imgFooter" title="T�rminos y Condiciones"></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_6">
							<p>Privacidad</p>
							<div><span class="cac cac-privacity imgFooter" title="Privacidad"></span></div>
						</a>
					</li>
					<li>
						<a href="#" class="linkFooter" id="linkF_7">
							<p>Estudiantes</p>
							<div><span class="cac cac-students imgFooter" title="Estudiantes"></span></div>
						</a>
					</li>
				</ul>
			</div>	
		

	</div>			
	<script src="../js/postickets.js"></script>
</body>
</html>