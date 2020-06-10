package day06Ex.marvel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieUpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		MovieUpdateService mus = new MovieUpdateService();
		MarvelMovieDto movieDto = mus.selectOne(id);
		req.setAttribute("movie", movieDto);
		req.getRequestDispatcher("/WEB-INF/updateForm.jsp").forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		String title = req.getParameter("title");
		String titleEng = req.getParameter("titleEng");
		String director = req.getParameter("director");
		String phase = req.getParameter("phase");
		String state = req.getParameter("state");
		int releaseDate = Integer.parseInt(req.getParameter("releaseDate"));
		
		MarvelMovieDto movieDto = new MarvelMovieDto(id, title, titleEng, director, phase, state, releaseDate, null, null);
		
		
		MovieUpdateService mus = new MovieUpdateService();
		mus.updateMovie(movieDto);
		
		resp.sendRedirect("movielist.jsp");
		
	}
}
