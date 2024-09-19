package cn.v2beach.dbconnector;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.commons.dbcp2.BasicDataSource;
/**
 * Write a database connection pool by myself.
 * DriverManager is encapsulated in the BasicDataSource.
 * Pool concepts, Eg: Thread pool.
 */
public class DatabaseConnectionPool {
	private static String driver;
	private static String url;
	private static String user;
	private static String password;
	private static Integer initialSize;
	private static Integer maxIdle;
	private static Integer minIdle;
	private static Long maxWait;
	private static Integer maxTotal;
	private static final BasicDataSource dataSource = new BasicDataSource();
	
	static {
		Properties properties=new Properties();
		try {
			InputStream input = DatabaseConnectionPool.class.getClassLoader().getResourceAsStream("Database.properties");
			properties.load(input);
			driver = properties.getProperty("driver");
			url = properties.getProperty("url");
			user = properties.getProperty("user");
			password = properties.getProperty("password");
			
			initialSize = Integer.parseInt(properties.getProperty("initialSize"));
			maxIdle = Integer.parseInt(properties.getProperty("maxIdle"));
			minIdle = Integer.parseInt(properties.getProperty("minIdle"));
			maxWait = Long.parseLong(properties.getProperty("maxWait"));
			maxTotal = Integer.parseInt(properties.getProperty("maxTotal"));
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static Connection getConnection() throws SQLException{
		dataSource.setDriverClassName(driver);
		dataSource.setUrl(url);
		dataSource.setUsername(user);
		dataSource.setPassword(password);
		
		dataSource.setInitialSize(initialSize);
		dataSource.setMaxIdle(maxIdle);
		dataSource.setMinIdle(minIdle);
		dataSource.setMaxWaitMillis(maxWait);
		dataSource.setMaxTotal(maxTotal);
		
		return dataSource.getConnection();
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
