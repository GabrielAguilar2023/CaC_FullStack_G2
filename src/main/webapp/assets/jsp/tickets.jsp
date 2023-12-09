<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Pagar tickets</title>
	</head>
<body>

<%

	String name = request.getParameter("name");
	String surName = request.getParameter("surName");
	String eMail = request.getParameter("eMail");
	String numberTickets = request.getParameter("numberTickets");
	String pay = request.getParameter("pay");
	String discount = String.valueOf( Math.round(((1f - Float.valueOf(request.getParameter("discount")))*100)));
	
	out.println(name +" "+ surName +" "+ eMail +" "+ numberTickets +" "+ pay + " "+ discount + "%");
	
	
	ConnectionController connectionController = new ConnectionController();
	connectionController.insertTickets(name, surName, eMail, numberTickets, pay, discount);
	
	connectionController.consult("SELECT max(id_tickets) FROM tickets");
	
	
//	ConnectionController connectionController = new ConnectionController();
//	connectionController.insert(name,surName,areaForm);

%>

<script>
window.onload=function(){

	alert ("Ticket comprado"+"\n" + "Serás contactado por email para confirmarle su ubicación en la sala ");
	location.href="../../index.html";

}
</script>

<!-- <jsp:include page="../pages/tickets.html"></jsp:include> -->
</body>
</html>