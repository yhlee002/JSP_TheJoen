package day06.guestBook;

import java.sql.Connection;
import java.sql.SQLException;

public class MessageWriteService {
	private MessageDao messageDao;
	public MessageWriteService() {
		messageDao = MessageDao.getInstance();
	}
	
	public void writeMessage(MessageDto messageDto) {
		try(Connection conn = MyConnector.getConn()) {
			messageDao.insert(conn, messageDto);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
}
