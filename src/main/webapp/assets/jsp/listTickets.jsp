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

	
	
	ConnectionController connectionController = new ConnectionController();	
	

	ResultSet resultSet =  connectionController.consult("SELECT * FROM tickets");
		
	//String listado = resultSet.next()? String.valueOf(resultSet.getInt(1)):"Error en la base de datos";
	%>

	<h1 class="text-center"> Listado de tickets</h1>
	<br>
	
	<table class="table table-striped">
	
	
		<tr>
			<th>Trámite</th>
			<th class="text-center">Cantidad</th>
			<th class="text-center">Importe Pagado</th>
			<th class="text-center">Descuento</th>
		</tr>
		
		
<% while(resultSet.next()){ %>
	 	
		<tr>	
			<th scope="row"><%= resultSet.getInt(1)%></th>
			<td class="text-center"><%= resultSet.getString(5)%></td>
			<td class="text-center"><%= resultSet.getString(6)%></td>
			<td class="text-center"><%= resultSet.getString(7)%> %</td>
		</tr>
	
<% } %>
	</table>
	
	
		
	<p class="text-center"><b>Cuando se acredite su pago, el Nº de Trámite aparecerá en esta lista</b> y será contactado por email para confirmarle su ubicación en la sala.</p>
	<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N° de tramite.</p>
		
	<button type="reset" class="w-100 btn btn-lg btn-form buttonColor" id="aceptButton">Salir</button>
				
				
				
	<script src="../js/postickets.js"></script>
</body>
</html>