package day06Ex.marvel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnector {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/marveldb?serverTimezone=Asia/Seoul&characterEncoding=utf-8";
		String id = "root";
		String password = "mysql";
		
		return DriverManager.getConnection(url, id, password);
	}
	
}
