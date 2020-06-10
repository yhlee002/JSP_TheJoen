package day06Ex.marvel;

import java.sql.Connection;
import java.sql.SQLException;

public class MovieUpdateService {
	private MarvelDao movieDao;
	public MovieUpdateService() {
		movieDao = MarvelDao.getInstance();
	}
	
	public MarvelMovieDto selectOne(int id) {
		MarvelMovieDto movieDto = null;
		try {
			Connection conn = MyConnector.getConnection();
			 movieDto = movieDao.selectOne(conn, id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return movieDto;
	}
	
	public void updateMovie(MarvelMovieDto movieDto) {
		
		try {
			Connection conn = MyConnector.getConnection();
			movieDao.update(conn, movieDto);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
