package day06Ex.marvel;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class MovieListService {
	static final int MOVIE_COUNT_PER_PAGE = 5; //한 페이지당 보여질 영화 수
	private MarvelDao dao;
	private MovieListView movieListView;
	
	//movieListView의 getter
	public MovieListView getMovieListView() {
		return movieListView;
	}
	
	//movieListView의 setter
	public void setMovieListView(MovieListView movieListView) {
		this.movieListView = movieListView;
	}
	
	//MovieListService의 객체를 생성시 dao객체를 생성해 변수에 담음
	public MovieListService() {
		dao = MarvelDao.getInstance();
	}

	//페이지값을 받아 해당 페이지에 속하는 영화목록을 반환
	public MovieListView getMovieListView(int pageNumber) {
		movieListView = null;
		
		try(Connection conn = MyConnector.getConnection()){
			//전체 영화 수(dao가 가져옴)
			int movieTotalCount = dao.selectCount(conn);
			
			//해당 페이지에 보여줄 영화 목록
			List<MarvelMovieDto> list = null;
			
			int firstRow = 0;
			System.out.println("Service에서의 movieTotalCount : "+movieTotalCount);
			if(movieTotalCount > 0) { //영화가 하나 이상 있다면
				firstRow = (pageNumber - 1)*MOVIE_COUNT_PER_PAGE;
				System.out.println("Service에서의 pageNumber : "+pageNumber);
				System.out.println("Service에서의 firstRow : "+firstRow);
				list = dao.selectList(conn, MOVIE_COUNT_PER_PAGE, firstRow);
			}else {
				pageNumber = 0;
			}
			//실상 마지막 로우의 레코드보다는 몇개를 확인할건지에 대한 값에 가까움
			int endRow = firstRow+MOVIE_COUNT_PER_PAGE;
			
			//movieListView 객체를 만들어 반환
			movieListView = new MovieListView(movieTotalCount, pageNumber, list, MOVIE_COUNT_PER_PAGE, firstRow, endRow);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return movieListView;
	}

	
	
	
}
