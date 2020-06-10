package day06.guestBook;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

//Service : 비즈니스 로직을 처리하는 역할(어떠한 기능을 수행하도록 만들어주는 역할)
//메세지리스트를 뽑기 위한 행위가 로직으로 구성됨
public class MessageListService {
	static final int MESSEAGE_COUNT_PER_PAGE = 3; //한 페이지당 몇개의 메세지를 보여줄 것인가
	private MessageDao messageDao;
	private MessageListView msgListView;
	
	public MessageListView getMsgListView() {
		return msgListView;
	}

	public void setMsgListView(MessageListView msgListView) {
		this.msgListView = msgListView;
	}

	//Service 객체 생성시 DAO 객체를 가져와 멤버변수에 담음
	public MessageListService() {
		messageDao  = MessageDao.getInstance();	
	}
	
	//한 화면에서 보여줄 MessageListView를 만들어 반환해주는 메소드
	public MessageListView getMessageListView(int pageNumber) { //해당되는 페이지 번호를 받아 해당 페이지의 메세지들을 보여줌
		msgListView = null;			

		try(Connection conn = MyConnector.getConn()){
			//전체 메세지 개수
			int messageTotalCount = messageDao.selectCount(conn);
//			System.out.println("service에서의 messageTotalCount : "+messageTotalCount);
			
			//메세지 리스트(해당 시기에 보여줄 페이지) 
			List<MessageDto> messageList = null;
			int firstRow = 0; //각 페이지의 첫번째 로우
			if(messageTotalCount > 0) {
				//해당되는 페이지의 첫번째 로우 번호(firstRow)를 알아야 limit(sql)을 이용할 수 있기 떄문
				firstRow = (pageNumber - 1)* MESSEAGE_COUNT_PER_PAGE; 
				//table의 row인덱스는 0부터 시작하기 때문에 마지막에 1을 더해주지 않는 것.
				//cf. select문에서의 limiti은 값을 두개 가질 수도 있음(limit 시작index, 시작index에서부터 선택할 개수)
				//ex. select * from guestbook limit 0, 3; => 인덱스 0부터 세개(0, 1, 2)인 row가 출력된다.
				
				//DAO를 통해 해당되는 페이지의 방명록 리스트를 가져옴
				messageList = messageDao.selectList(conn, firstRow, MESSEAGE_COUNT_PER_PAGE);
			}else {
				pageNumber = 0;//현재 페이지 번호를 0으로 함
			}
			
			int endRow = firstRow+MESSEAGE_COUNT_PER_PAGE;
			
			msgListView = new MessageListView(messageTotalCount, pageNumber, messageList, MESSEAGE_COUNT_PER_PAGE, firstRow, endRow);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return msgListView;
	}
}
