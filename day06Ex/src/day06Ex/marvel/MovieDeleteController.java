package day06Ex.marvel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieDeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		MovieDeleteService mds = new MovieDeleteService();
		mds.delete(id);
		
		resp.sendRedirect("movielist.jsp");
	}
}
