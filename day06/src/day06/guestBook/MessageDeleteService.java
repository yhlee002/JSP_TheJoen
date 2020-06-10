package day06.guestBook;

import java.sql.Connection;
import java.sql.SQLException;

public class MessageDeleteService {
	private MessageDao messageDao;
	public MessageDeleteService() {
		messageDao = MessageDao.getInstance();
	}
	
	public void delete(int messageId) {
		try(Connection conn = MyConnector.getConn()){
			messageDao.delete(conn, messageId);
			
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
}
