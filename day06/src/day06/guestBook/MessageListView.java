package day06.guestBook;

import java.util.List;

//방명록화면을 보여주기 위한 클래스
//리스트 화면에서 필요한 데이터를 담아 관리하는 클래스
//페이지 번호, 페이지 목록, 전체 메시지 개수, 페이지 개수, 페이지당 보여줄 메세지 개수
public class MessageListView {
	private int messageTotalCount; //전체 메세지 개수
	private int currentPageNumber; //현재 페이지 번호
	private List<MessageDto> messageList; //한 화면에 보여줄 메세지 리스트
	private int pageTotalCount; //전체 페이지 개수
	private int messageCountPerPage; //한 페이지당 보여질 메세지 개수
	private int firstRow; //화면상 맨 위에 있는 로우 번호
	private int endRow; //마지막 번호
	
	public MessageListView(int messageTotalCount, int currentPageNumber, List<MessageDto> messageList,
			 int messageCountPerPage, int firstRow, int endRow) {
		
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageList = messageList;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = firstRow;
		this.endRow = endRow;
		
		//pageTotalCount(페이지 전체 개수)는 외부에서 받는 것이 아니라 내부에서 처리해줘야함
		if(messageTotalCount == 0) {
			pageTotalCount = 0;
		}else{
			pageTotalCount = messageTotalCount / messageCountPerPage;
			if(messageTotalCount % messageCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public void setMessageTotalCount(int messageTotalCount) {
		this.messageTotalCount = messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<MessageDto> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<MessageDto> messageList) {
		this.messageList = messageList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}

	public void setMessageCountPerPage(int messageCountPerPage) {
		this.messageCountPerPage = messageCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	
}
