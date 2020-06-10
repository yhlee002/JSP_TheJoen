package day07.person;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class PersonService {
	private PersonDao personDao;
	
	public PersonService() {
		personDao = PersonDao.getInstance();
	}
	
	public PersonDto getPersonById(int id) {
		PersonDto personDto = null;
		try(Connection conn = MyConn.getConn()){
			personDao = PersonDao.getInstance();
			personDto = personDao.selectOne(conn, id);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return personDto;
	}
	
	public List<PersonDto> getPersonList() {
		List<PersonDto> personDtoList = null;
		try(Connection conn = MyConn.getConn()){
			personDao = PersonDao.getInstance();
			personDtoList = personDao.selectAll(conn);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return personDtoList;
	}
}
