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
	
	public Connection connect() {
	
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
		
	public void insert(String nombre, String apellido, String issue) {
		
		String query = "INSERT INTO oradores(Nombre,Apellido,Tema) VALUES(?,?,?)";
		try {
			connectionQuery = connect();
			preparedStatement = connectionQuery.prepareStatement(query);
			preparedStatement.setString(1,nombre);
			preparedStatement.setString(2,apellido);
			preparedStatement.setString(3,issue);			
			preparedStatement.executeUpdate();
			close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
