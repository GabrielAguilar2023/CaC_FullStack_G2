package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionController {
	
	private static final String CONTROLLER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/base_oradores";
	private static final String USER = "root";
	private static final String PASS = "90200098";
	static {
		try {
			Class.forName(CONTROLLER);
			System.out.println("El controlador se cargó correctamente");
		} catch (ClassNotFoundException e) {
			System.out.println("Error al cargar el controlador");		
			e.printStackTrace();
		}
	}
	
	Connection connection = null;
	Connection connectionQuery = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement =null;
	
	private Connection connect() {
	
		try {	
			connection = DriverManager.getConnection(URL, USER, PASS);
			System.out.println("Conexion exitosa a la base de datos");
		}
		catch(Exception e) {
			System.out.println("Conexion ");
			e.printStackTrace();
			
		}
		return connection;
	}
	
	public ResultSet consult(String query)  {
		try {
			connectionQuery = connect();
			statement = connectionQuery.createStatement();
			resultSet = statement.executeQuery(query);
		} catch (SQLException e) {
			System.out.println("Error: No se pudo hacer la consulta");
			e.printStackTrace();
		}
		return resultSet;		
	}
		
	public void insertOradores(String nombre, String apellido, String eMail, String issue) {
		
		String query = "INSERT INTO oradores(Nombre,Apellido,eMail,Tema) VALUES(?,?,?,?)";
		try {
			connectionQuery = connect();
			preparedStatement = connectionQuery.prepareStatement(query);
			preparedStatement.setString(1,nombre);
			preparedStatement.setString(2,apellido);
			preparedStatement.setString(3,eMail);
			preparedStatement.setString(4,issue);			
			preparedStatement.executeUpdate();
			close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insertTickets(String nombre, String apellido, String eMail, String cantidad, String pago, String descuento) {
		
		String query = "INSERT INTO tickets(Nombre,Apellido,eMail,Cantidad,Pago,Descuento) VALUES(?,?,?,?,?,?)";
		try {
			connectionQuery = connect();
			preparedStatement = connectionQuery.prepareStatement(query);
			preparedStatement.setString(1,nombre);
			preparedStatement.setString(2,apellido);
			preparedStatement.setString(3,eMail);	
			preparedStatement.setString(4,cantidad);
			preparedStatement.setString(5,pago);
			preparedStatement.setString(6,descuento);	
			
			preparedStatement.executeUpdate();
			close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
public void modifyTickets(int id, String nombre, String apellido, String eMail, Boolean activo, Boolean pagado ) {
	// UPDATE `base_oradores`.`tickets` SET `Nombre` = 'Miguel', `Apellido` = 'Suarez', `eMail` = 'miguesuarez3545@gmail.com', `Cantidad` = '5', `Pago` = '500', `Descuento` = '50', `Activo` = FALSE, `Pagado` = FALSE WHERE (`id_tickets` = '00091');
		String query = "UPDATE tickets SET Nombre=?, Apellido =?, eMail =?, Activo=?, Pagado=? WHERE (id_tickets =?)"; 
		try {
			connectionQuery = connect();
			preparedStatement = connectionQuery.prepareStatement(query);
			preparedStatement.setString(1,nombre);
			preparedStatement.setString(2,apellido);
			preparedStatement.setString(3,eMail);	
			preparedStatement.setBoolean(4,activo);	
			preparedStatement.setBoolean(5,pagado);		
			preparedStatement.setInt(6,id);
			
			
			preparedStatement.executeUpdate();
			close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
public void modifySpeakers(int id, String nombre, String apellido, String eMail, String tema, Boolean activo ) {
	// UPDATE `base_oradores`.`tickets` SET `Nombre` = 'Miguel', `Apellido` = 'Suarez', `eMail` = 'miguesuarez3545@gmail.com', `Cantidad` = '5', `Pago` = '500', `Descuento` = '50', `Activo` = FALSE, `Pagado` = FALSE WHERE (`id_tickets` = '00091');
		String query = "UPDATE oradores SET Nombre=?, Apellido =?, eMail =?, Tema=?, Activo=? WHERE (id_oradores =?)"; 
		try {
			connectionQuery = connect();
			preparedStatement = connectionQuery.prepareStatement(query);
			preparedStatement.setString(1,nombre);
			preparedStatement.setString(2,apellido);
			preparedStatement.setString(3,eMail);	
			preparedStatement.setString(4,tema);	
			preparedStatement.setBoolean(5,activo);		
			preparedStatement.setInt(6, id);
			
			preparedStatement.executeUpdate();
			close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	



public boolean login(String usuario, String password)  {
	String query = "select *from usuarios where ((Nombre = ? or eMail = ?) and Password = ?)and Activo = TRUE";
	try {
		connectionQuery = connect();
		preparedStatement = connectionQuery.prepareStatement(query);
		preparedStatement.setString(1,usuario);
		preparedStatement.setString(2,usuario);
		preparedStatement.setString(3,password);	
		
		
		return preparedStatement.executeQuery().next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
		
	}		
}
	
	
	
	
	public void close()  {
		try {
			if (resultSet != null)resultSet.close();
			if (statement != null) statement.close();
			if (connection != null) connection.close();
			if (connectionQuery != null) connectionQuery.close();				
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
