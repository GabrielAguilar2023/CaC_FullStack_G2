<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
 
	<title>Actualizar tickets</title>
	</head>

	<body>

	<%

	int tramite =   Integer.valueOf(request.getParameter("tramite"));
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String eMail = request.getParameter("eMail");
	Boolean activo = Boolean.valueOf(request.getParameter("activo"));
	Boolean pagado = Boolean.valueOf(request.getParameter("pagado"));
	
	ConnectionController connectionController = new ConnectionController();	
	connectionController.modifyTickets(tramite, nombre, apellido, eMail,activo,pagado);

	%>
			
	<script src="../js/actualizarTickets.js"></script>
</body>
</html>