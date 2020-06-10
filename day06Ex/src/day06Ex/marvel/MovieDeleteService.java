package day06Ex.marvel;

import java.sql.Connection;
import java.sql.SQLException;

public class MovieDeleteService {
	private MarvelDao movieDao;
	
	public MovieDeleteService() {
		movieDao = MarvelDao.getInstance();
	}
	
	public void delete(int id) {
		Connection conn;
		try {
			conn = MyConnector.getConnection();
			movieDao.deleteMovie(conn, id);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
