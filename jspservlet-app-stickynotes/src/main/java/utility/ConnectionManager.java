package utility;

import java.sql.*;

public class ConnectionManager {
	public static Connection conn;//connection variable
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");//loading Driver
			conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/notes","root","examly");//connection url
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
