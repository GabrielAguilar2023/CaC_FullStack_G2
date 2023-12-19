<%@page import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
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
			
<%
	int tramite = 0;
	String nombre = null;
	String apellido = null;
	String email = null;
	String tema = null;
	
	boolean activo = false;
	
	
	int id =Integer.parseInt(request.getParameter("id"));
		
	ConnectionController connectionController = new ConnectionController();	
	ResultSet resultSet =  connectionController.consult("SELECT * FROM oradores WHERE id_oradores=" + id);
		
	if (resultSet.next()){
		tramite = resultSet.getInt(1);
		nombre = resultSet.getString(2);
		apellido = resultSet.getString(3);
		email = resultSet.getString(4);
		tema = resultSet.getString(5);
		activo = resultSet.getBoolean(6);
	}
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
								<a href="../pages/tickets.html" class="itemMobile linkMenu linkM_5">Compar tickets</a>
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
							
							<div class="saleText">
								<h1 class="text-center  mb-4"> Modificar Trámite Nº <span id="tramite"><%=tramite %></span></h1>							
							</div>
							<form class="ticketForm" id="ticketForm" action="">
								<div class="row gx-2">
									<div class="col-md mb-3">
										<div class="formInput">
											<input type="text" class="form-control" value=<%=nombre %> aria-label="Nombre" name="name" id="name" required>
											<i class="cac validation-name" ></i>	
										</div>
										<p class="error error-name">Ingrese Nombre de 2 a 40 caracteres alfabéticos</p>
									</div>
									<div class="col-md mb-3">
										<div class="formInput">
											<input type="text" class="form-control" value=<%=apellido %> aria-label="Apellido" name="surName" id="surName" required>
											<i class="cac validation-surName" ></i>	
										</div>
										<p class="error error-surName">Ingrese Apellido de 2 a 40 caracteres alfabéticos</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md mb-1">
										<div class="formInput">
											<input type="email" class="form-control" value=<%=email %> aria-label="eMail" name="eMail" id="eMail" required>
											<i class="cac validation-eMail" ></i>	
										</div>
										<p class="error error-eMail">Ingrese un E-mail válido</p>
									</div>	
								</div>
								
								
								<div class="form-floating mb-3">
  									<textarea class="form-control pt-5" style="height: 100px"><%=tema %></textarea>
  									<label for="floatingTextarea" class="pt-4" >Tema:</label>
								</div>
								
								
								
								
								<div id="showWarning" class="alert alert-danger fst-italic mb-4" role="alert"> <i class="cac cac-warning"></i> Verifique que todos los datos cargados tengan un tílde verde en el extremo derecho.</div>
								<div class="row gx-4">
									<div class="col-md mb-3">
										<div class="formInput">
											<input type="checkbox" name="active" id="active" <% out.println(activo?"checked":"unChecked");%>>
											<label for="active" class="checkbox" > Registro Activo</label>
										</div>
									</div>
								</div>								
								<div class="row gx-4 mb-2">
									<div class="col-md mb-3">
											<button type="reset" class="w-100 btn btn-lg btn-form buttonColor" id="restoreButton">Restaurar</button>
										</div>
									<div class="col-md mb-3">
									<button type="button" class="w-100 btn btn-lg btn-form buttonColor" id="cancelButton">Cancelar</button>
								</div>
								</div>
								<div class="row gx-2 mb-2">
									<div class="col-md mb-3">
										<button type="button" class="w-100 btn btn-lg btn-form buttonColor mb-3" id="saveButton">Guardar cambios</button>
									</div>
								</div>
								
							</form>
																
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
							<div><span class="cac cac-contact imgFooter" title="Contáctenos" ></span></div>
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
							<p>Términos y condiciones</p>
							<div><span class="cac cac-terms imgFooter" title="Términos y Condiciones"></span></div>
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
		
		<script src="../js/bootstrap.bundle.min.js"></script>
		<script src="../js/tickets.js"></script>
		<script src="../js/summary.js"></script>
		<script src="../js/modifyTickets.js"></script>

	</body>
	
	
</html>