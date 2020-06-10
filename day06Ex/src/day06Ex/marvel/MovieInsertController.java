package day06Ex.marvel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieInsertController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");
		String titleEng = req.getParameter("titleEng");
		String director = req.getParameter("director");
		String phase = req.getParameter("phase");
		String state = req.getParameter("state");
		int releaseDate = Integer.parseInt(req.getParameter("releaseDate"));
		
		MovieInsertService mis = new MovieInsertService();
		mis.insertMovie(new MarvelMovieDto(0, title, titleEng, director, phase, state, releaseDate,null, null));
		
		resp.sendRedirect("movielist.jsp");
	}
}
