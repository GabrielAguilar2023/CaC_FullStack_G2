<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
<%@page import="java.sql.ResultSet"%>  
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
 
	<link rel="stylesheet" href="../css/bootstrap.min.css"> 
	<link rel="stylesheet" href="../css/index.css">
	<link rel="stylesheet" href="../css/summary.css">
	
	<title>Agregar Oradores</title>
	</head>
<body xonload="nobackbutton()">

<%

	String name = request.getParameter("name");
	String surName = request.getParameter("surName");
	String eMail = request.getParameter("eMail");
	String areaForm = request.getParameter("areaForm");
	 
	ConnectionController connectionController = new ConnectionController();
	connectionController.insertOradores(name,surName,eMail,areaForm);
	
	ResultSet resultSet =  connectionController.consult("SELECT max(id_oradores) FROM oradores");
	
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
								<a class="itemMobile linkMenu" href="../../index.html#formulario">Convi�rtete en
									orador</a>
								<a class="itemMobile linkMenu linkM_5" href="../pages/tickets.html">Compar tickets</a>
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
				<div class="container general">
					<div class="row justify-content-center">
						<div class="col-lg-8 col-xl-7">
							
							<div class="col mt-3">
									<div class="card1 card mb-4 rounded-3 shadow-sm border-success">
										<div class="card-header py-3 text-white bg-success border-success">
											<h4 class="my-0 fw-normal text-center">Inscripci�n de Orador</h4>
										</div>
										<div class="card-body m-1">
											
								<div class="mt-3">
								
								<p class="text-center mb-3"><b>A la mayor brevedad</b> ser� contactado por email para confirmar y coordinar su participaci�n en la conferencia.</p>
								<h3 class="text-center m-4" id="tramite"> N� Inscripci�n: <%=tramite %> </h3>										
								<p class="text-center mt-3"><small><i><b>*</b> Por problemas o dudas, comunicarse al 0800-4440-2522 e indique el N� de inscripcion.</i></small></p>
							
							</div>
								<button type="reset" class="w-100 btn btn-lg btn-form buttonColor mb-2" id="aceptButton">Aceptar</button>

										</div>
									</div>
								</div>
							
							
							
							
							
							
							
						
							
							
							
							
								
						</div>
					</div>
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
	<script src="../js/posSpeaker.js"></script>
</body>
</html>