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

	<%

	String name = request.getParameter("name");
	String surName = request.getParameter("surName");
	String eMail = request.getParameter("eMail");
	String numberTickets = request.getParameter("numberTickets");
	String pay = request.getParameter("pay");
	String discount = String.valueOf( Math.round(((1f - Float.valueOf(request.getParameter("discount")))*100)));
		
	
	ConnectionController connectionController = new ConnectionController();	
	connectionController.insertTickets(name, surName, eMail, numberTickets, pay, discount);

	ResultSet resultSet =  connectionController.consult("SELECT max(id_tickets) FROM tickets");
		
	String tramite = resultSet.next()? String.valueOf(resultSet.getInt(1)):"Error en la base de datos";
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
								<a class="itemMobile linkMenu" href="../../index.html#formulario">Conviértete en
									orador</a>
								<a class="itemMobile linkMenu linkM_5" href="../pages/tickets.html">Compar tickets</a>
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

			<div class="bodyProject">
				<div class="container general">
					<div class="row justify-content-center">
						<div class="col-lg-8 col-xl-7">
							<div class="row row-cols-1 row-cols-md-3 text-center">
															
							</div>
							<div class="saleText">	
								<h1 class="text-center"> Compra de tickets</h1>
							</div>
							
							<div class="mt-5">
								
								<p class="text-center"><b>Cuando se acredite su pago</b> será contactado por email para confirmarle su ubicación en la sala</p>
								<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N° de tramite.</p>
							
								<h3 class="text-center" id="tramite"> N° Tramite: <%=tramite %> </h3>										
							</div>
								<button type="reset" class="w-100 btn btn-lg btn-form buttonColor mt-4" id="aceptButton">Aceptar</button>
							
							
								
						</div>
					</div>
				</div>
			</div>



</div>				
				
				
	<script src="../js/postickets.js"></script>
</body>
</html>