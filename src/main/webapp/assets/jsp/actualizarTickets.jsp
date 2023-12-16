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
	<!--  <body onload="nobackbutton()">-->
	<body>

	<%

	int tramite =   Integer.valueOf(request.getParameter("tramite"));
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String eMail = request.getParameter("eMail");
	String activo = request.getParameter("activo");
	String pagado = request.getParameter("pagado");
	
		
	
	ConnectionController connectionController = new ConnectionController();	
	connectionController.modifyTickets(tramite, nombre, apellido, eMail);

	

	%>

	<h1 class="text-center"> Modificar tickets</h1>
	<br>
	<p class="text-center"><b>Cuando se acredite su pago</b> será contactado por email para confirmarle su ubicación en la sala</p>
	<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N° de tramite.</p>
	<br>
	<h3 class="text-center" id="tramite"> N° Tramite: <%=tramite %> </h3>			
	<button type="reset" class="w-100 btn btn-lg btn-form buttonColor" id="aceptButton">Salir</button>
				
				
				
	<script src="../js/postickets.js"></script>
</body>
</html>