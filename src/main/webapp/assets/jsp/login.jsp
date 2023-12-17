<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<%@ page import = "controller.ConnectionController" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="nobackbutton()">

	<%
	String usuario = request.getParameter("usuario");
	String password = request.getParameter("password");
		
	ConnectionController connectionController = new ConnectionController();	
	boolean permiso = connectionController.login(usuario, password);
	connectionController.close();
	%>
	<span id="permiso"><%=permiso%></span>

<script src="../js/login.js"></script>

</script>


</body>
</html>