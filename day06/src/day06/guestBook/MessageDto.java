package day06.guestBook;

import java.time.LocalDateTime;

public class MessageDto {
	private int messageId;
	private String guestName;
	private String message;
	private LocalDateTime wdate;
	
	public MessageDto() {}
	public MessageDto(int messageId, String guestName, String message, LocalDateTime wdate) {
		this.messageId = messageId;
		this.guestName = guestName;
		this.message = message;
		this.wdate = wdate;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public LocalDateTime getWdate() {
		return wdate;
	}
	public void setWdate(LocalDateTime wdate) {
		this.wdate = wdate;
	}
	@Override
	public String toString() {
		return "MessageDto [messageId=" + messageId + ", guestName=" + guestName + ", message=" + message + ", wdate="
				+ wdate + "]";
	} 
	
	
}
