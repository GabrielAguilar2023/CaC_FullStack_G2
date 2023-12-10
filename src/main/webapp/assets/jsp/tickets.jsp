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

	<h1 class="text-center"> Compra de tickets</h1>
	<br>
	
	<p class="text-center"><b>Cuando se acredite su pago</b> será contactado por email para confirmarle su ubicación en la sala</p>
	
	<p class="text-center"> Si tiene algun inconveniente con el pago del ticket, comunicarse con 0800-4440-2522 e indique el N° de tramite.</p>
	<br>
	<h3 class="text-center"> N° Tramite: <%=tramite %> </h3>			
	<!-- <button type="reset" class="w-100 btn btn-lg btn-form buttonColor" id="aceptButton">Aceptar</button> -->
				
	<script>
		window.onload=function(){
		alert ("¡Ticket comprado!... Tome nota del numero de Tramite");
		
		//		window.history.back();
		location.href="../pages/tickets.html";
	}
		
		function nobackbutton()
		{
		   window.location.hash="no-back-button";
		   window.location.hash="Again-No-back-button"
		   window.onhashchange=function(){window.location.hash="no-back-button";}   
		}
	</script>
</body>
</html>



		<!-- <jsp:include page="../pages/tickets.html"></jsp:include> -->