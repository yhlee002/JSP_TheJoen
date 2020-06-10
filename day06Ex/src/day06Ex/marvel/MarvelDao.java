package day06Ex.marvel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MarvelDao {
	private static MarvelDao instance = new MarvelDao();
	private MarvelDao() {}
	public static MarvelDao getInstance() {		
		return instance;
	}
	
	//DB에서 총 영화 수를 가져옴
	public int selectCount(Connection conn) throws SQLException {
		String sql = "select count(*) from marvel_movie";
		
		try(Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql)){
			if(rs.next()) {
				return rs.getInt(1);
			}else {
				return 0;
			}
		}
	}
	
	//DB에 추가
	public void insert(Connection conn, MarvelMovieDto movieDto) {
		String sql = "insert into marvel_movie(id, title, title_eng, director, phase, state, release_date) values(?, ?, ?, ?, ?, ?, ?)";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, movieDto.getId());
			pst.setString(2, movieDto.getTitle());
			pst.setString(3,  movieDto.getTitleEng());
			pst.setString(4, movieDto.getDirector());
			pst.setString(5,  movieDto.getPhase());
			pst.setString(6,  movieDto.getState());
			pst.setInt(7, movieDto.getReleaseDate());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//선택된 영화 하나를 가져옴
	public MarvelMovieDto selectOne(Connection conn, int id) throws SQLException {
		MarvelMovieDto movieDto = null;
		String sql = "select * from marvel_movie where id = ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, id);
			
			try(ResultSet rs = pst.executeQuery()){
				if(rs.next()) {
					movieDto = new MarvelMovieDto(rs.getInt("id"), 
							rs.getString("title"), 
							rs.getString("title_eng"), 
							rs.getString("director"), 
							rs.getString("phase"), 
							rs.getString("state"), 
							rs.getInt("release_date"), 
							rs.getTimestamp("reg_date") == null? null : rs.getTimestamp("reg_date").toLocalDateTime(), 
							rs.getTimestamp("u_date") == null? null : rs.getTimestamp("u_date").toLocalDateTime());
					
					return movieDto;
				}else {
					return null;
				}
				
			}
		}
		
	}
	
	//Update
	public void update(Connection conn, MarvelMovieDto movieDto) throws SQLException {
		String sql = "update marvel_movie set title=?, title_eng=?, director=?, phase=?, state=?, release_date=? where id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, movieDto.getTitle());
			pst.setString(2,  movieDto.getTitleEng());
			pst.setString(3, movieDto.getDirector());
			pst.setString(4, movieDto.getPhase());
			pst.setString(5, movieDto.getState());
			pst.setInt(6, movieDto.getReleaseDate());
			pst.setInt(7, movieDto.getId());
			
			pst.executeUpdate();
		}
	}
	
	//해당 페이지의 영화 목록을 가져옴
	public List<MarvelMovieDto> selectList(Connection conn, int movieCountPerPage, int firstRow) throws SQLException{
		String sql = "select * from marvel_movie order by id desc limit ?, ?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, firstRow);
			pst.setInt(2, movieCountPerPage);
			System.out.println("DAO에서의 firstRow : "+firstRow);
			System.out.println("DAO에서의 movieCountPerPage : "+movieCountPerPage);
			List<MarvelMovieDto> list = new ArrayList<>();
			
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					list.add(new MarvelMovieDto(rs.getInt("id"), 
							rs.getString("title"), 
							rs.getString("title_eng"), 
							rs.getString("director"), 
							rs.getString("phase"), 
							rs.getString("state"), 
							rs.getInt("release_date"), 
							rs.getTimestamp("reg_date").toLocalDateTime(), 
							rs.getTimestamp("u_date")==null?rs.getTimestamp("reg_date").toLocalDateTime():rs.getTimestamp("u_date").toLocalDateTime()));	
				}
			}
			System.out.println("DAO에서의 list 첫번째 : "+list.get(0).getTitle());
			System.out.println("-------------------------------------------");
			return list;
		}
	}
	
	
	//Delete
	public void deleteMovie(Connection conn,int id) throws SQLException {
		String sql = "delete from marvel_movie where id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, id);
			pst.executeUpdate();
		}
	}
}
