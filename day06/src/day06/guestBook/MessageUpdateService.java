package day06.guestBook;

import java.sql.Connection;
import java.sql.SQLException;

public class MessageUpdateService {
	private MessageDao messageDao;
	public MessageUpdateService() {
		messageDao = MessageDao.getInstance();
	}
	
	//수정하려는 메세지 하나를 가져오는 메소드
	public MessageDto getMessage(int messageId) {
		MessageDto messageDto = null;
		try(Connection conn = MyConnector.getConn()){
			messageDto = messageDao.selectOne(conn, messageId);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return messageDto;
	}
	
	//방명록 수정 로직처리 메소드
	public void updateMessage(MessageDto messageDto) {
		try(Connection conn = MyConnector.getConn()){
			messageDao.update(conn, messageDto);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
