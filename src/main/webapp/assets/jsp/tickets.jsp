<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
<body>
<h1>Tickets.jsp</h1>
<%

	String name = request.getParameter("name");
	String surName = request.getParameter("surName");
	String eMail = request.getParameter("eMail");
	String numberTickets = request.getParameter("numberTickets");
	String pay = request.getParameter("pay");
	String discount = String.valueOf(((1f - Float.valueOf(request.getParameter("discount")))*100));
	
	
	out.println(name+" "+ surName +" "+eMail+" "+ numberTickets +" "+ pay + " "+ discount + "%");
	 
//	ConnectionController connectionController = new ConnectionController();
//	connectionController.insert(name,surName,areaForm);

%>

<!-- <jsp:include page="../pages/tickets.html"></jsp:include>  -->
</body>
</html>