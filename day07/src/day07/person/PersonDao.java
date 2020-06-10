package day07.person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PersonDao {
	//싱글톤 패턴 사용
	private static PersonDao personDao = new PersonDao();
	private PersonDao() {}
	public static PersonDao getInstance() {
		return personDao;
	}
	//id를 인자로 받아서 personDto객체를 반환하는 selectOne 메소드 작성
	public PersonDto selectOne(Connection conn, int id) throws SQLException {
		PersonDto personDto = null;
		String sql = "select * from person where id = ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, id);
			try(ResultSet rs = pst.executeQuery()){
				if(rs.next()) {
					personDto = new PersonDto(
							rs.getInt("id"), 
							rs.getString("name"), 
							rs.getInt("age"));
				}
			}
		}
		return personDto;
	}
	
	public List<PersonDto> selectAll(Connection conn) throws SQLException{
		List<PersonDto> personList = new ArrayList<PersonDto>();
		String sql = "select * from person";
		try(Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql)){
			while(rs.next()) {
				personList.add(new PersonDto(rs.getInt("id"), 
						rs.getString("name"), 
						rs.getInt("age")));
			}
		}
		return personList;
	}
}
