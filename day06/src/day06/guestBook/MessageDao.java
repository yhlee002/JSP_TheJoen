package day06.guestBook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

//DAO : 메세지를 DB에 DRUD해주는 역할 -> 속성을 갖지 않음. 따라서 Singleton패턴을 사용
public class MessageDao {
	private static MessageDao instance = new MessageDao();
	private MessageDao() {}
	public static MessageDao getInstance() {
		return instance;
	}
	
	//DB에서 메세지 총 개수를 가져오는 메소드
	public int selectCount(Connection conn) throws SQLException {
		String sql = "select count(*) from guestbook";
		
		try(Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql)){
			if(rs.next()) {
				return rs.getInt(1); //어차피 하나밖에 없어서 이렇게 쓰면 됨 *int형 자료를 가져올 때 rs.getInt(인덱스) 혹은 rs.getInt(컬럼명) 사용
				//PreparedStatement에서 ?값을 입력해줄 때만 pst.setInt(인덱스, 값) 이렇게 두개의 매개변수를 줌
			}else {
				return 0;
			}
		}
	}
	
	public List<MessageDto> selectList(Connection conn, int firstRow, int messeageCountPerPage) throws SQLException {
		//시작 위치(firstRow)와 끝 위치(endRow)의 정보를 담아 해당 인덱스의 레코드들을 가져오는 select쿼리(message_id를 기준으로 역순으로 가져오게 함 - 최신메세지일수록 앞 페이지에 나오도록)
		String sql = "select message_id, guest_name, message, wdate"
				+" from guestbook order by message_id desc" 
				+" limit ?, ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, firstRow);
			pst.setInt(2, messeageCountPerPage);
			List<MessageDto> list = new ArrayList<>();
			try(ResultSet rs = pst.executeQuery()){
				while(rs.next()) {
					list.add(new MessageDto(rs.getInt("message_id"), rs.getString("guest_name"),
							rs.getString("message"), rs.getTimestamp("wdate").toLocalDateTime()));
				}
				return list;
			}
		}
	}
	
	//DB에 추가
	public void insert(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "insert into guestbook(guest_name, message) values (?, ?)";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.executeUpdate();
		}

	}
	
	//게시글 하나를 가져오는 메소드
	public MessageDto selectOne(Connection conn, int messageId) throws NumberFormatException, SQLException {
		String sql = "select * from guestbook where message_id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql);
				){
			pst.setInt(1,messageId);
			
			
			try(ResultSet rs = pst.executeQuery()){
				if(rs.next()) {
					return new MessageDto(messageId, rs.getString("guest_name"), 
							rs.getString("message"), 
							rs.getTimestamp("wdate").toLocalDateTime());
				}else {
					return null;
				}
			}	
		}
	}
	
	//update
	public void update(Connection conn, MessageDto messageDto) throws SQLException {
		String sql = "update  guestbook set guest_name=?,message=? where message_id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, messageDto.getGuestName());
			pst.setString(2, messageDto.getMessage());
			pst.setInt(3, messageDto.getMessageId());
			
			pst.executeUpdate();
		}
	}
	
	//delete
	public void delete(Connection conn, int messageId) throws SQLException {
		String sql = "delete from guestbook where message_id=?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, messageId);
			
			pst.executeUpdate();
		}
	}
}

