package day07.person;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
	public static Connection getConn() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/tj?"
				+ "serverTimezone=Asia/Seoul&characterEncoding=utf-8";
		String id = "root";
		String password = "mysql";
		return DriverManager.getConnection(url, id, password);
	}
}
