package day06.guestBook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MessageDeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//전달받은 파라미터로 해당되는 메세지를 삭제
		int messageId = Integer.parseInt(req.getParameter("messageId"));
		MessageDeleteService mds = new MessageDeleteService();
		mds.delete(messageId);
		
		resp.sendRedirect("list.jsp");
	}
}
