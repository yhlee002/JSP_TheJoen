package day06Ex.marvel;

import java.sql.Connection;
import java.sql.SQLException;

public class MovieInsertService {
	private MarvelDao marvelDao;
	public MovieInsertService() {
		marvelDao = MarvelDao.getInstance();
	}
	
	public void insertMovie(MarvelMovieDto movieDto){
		try {
			Connection conn = MyConnector.getConnection();
			marvelDao.insert(conn, movieDto);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
