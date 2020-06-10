package day06.guestBook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MessageWriteController")
public class MessageWriteController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//입력받은 값을 Service객체가 처리하고 처리 화면으로 보냄
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("guestName");
		String message = request.getParameter("message");
		
		
		
		MessageWriteService mws = new MessageWriteService();
		mws.writeMessage(new MessageDto(0, name, message, null));
		
		response.sendRedirect("list.jsp");
	}

}
