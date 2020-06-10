package day06.guestBook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageUpdateController extends HttpServlet{
	//수정 페이지 요청시
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//수정할 수 있는 화면을 구성하여 보여줌
		int messageId = Integer.parseInt(req.getParameter("messageId"));
		
		MessageUpdateService mus = new MessageUpdateService();
		MessageDto messageDto = mus.getMessage(messageId);
		
		req.setAttribute("message", messageDto);
		req.getRequestDispatcher("/WEB-INF/updateForm.jsp").forward(req, resp);
	}
	
	//post 방식으로 form 전송을 받은 경우
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//전달받은 내용으로 변경
		req.setCharacterEncoding("utf-8");
		int messageId = Integer.parseInt(req.getParameter("messageId"));
		String guestName = req.getParameter("guestName");
		String message = req.getParameter("message");

		
		MessageUpdateService mus = new MessageUpdateService();
		mus.updateMessage(new MessageDto(messageId, guestName, message, null));
		
		req.getRequestDispatcher("/WEB-INF/updateComplete.jsp").forward(req, resp);

		
	}
}
