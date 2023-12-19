<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Agregar Orador</title>
	</head>
<body>

<%

	String name = request.getParameter("name");
	String surName = request.getParameter("surName");
	String eMail = request.getParameter("eMail");
	String areaForm = request.getParameter("areaForm");
	 
	ConnectionController connectionController = new ConnectionController();
	connectionController.insertOradores(name,surName,eMail,areaForm);
	
%>

<script>
window.onload=function(){
	 
	alert ("Orador agregado"+"\n" + "Serás contactado por email para coordinar la presentación.");
	location.href="../../index.html#formulario";

}
</script>

</body>
</html>