package cn.v2beach.dbconnector;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnector {
	public static Connection connection;
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	static {
		Properties properties=new Properties();
		try {
			InputStream input = DatabaseConnector.class.getClassLoader().getResourceAsStream("Database.properties");
			properties.load(input);
			driver = properties.getProperty("driver");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public static Connection getConnect(){
		try {
			Class.forName(driver);//JDBC?
			connection = DriverManager.getConnection(url, user, password);//DriverManager is inefficient, so ConnectionPool is used.
			return connection;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public static void release(Connection connection,java.sql.PreparedStatement statement,ResultSet resultSet){
		try {
			if (statement!=null)
				statement.close();
			if (resultSet!=null)
				resultSet.close();
			if (connection!=null)
				connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
