package day06Ex.marvel;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//현재 페이즈 번호 받기
		String pageNumberStr = req.getParameter("pageNum");
		System.out.println("Controller에서의 pageNumberStr : "+pageNumberStr);
		int pageNumber = 1;
		if(pageNumberStr != null) {
			pageNumber = Integer.parseInt(pageNumberStr);
		}
		
		MovieListService service = new MovieListService();
		System.out.println("Controller에서의 pageNumber : "+pageNumber);
		MovieListView viewData = service.getMovieListView(pageNumber);
		req.setAttribute("viewData", viewData);
		req.getRequestDispatcher("/WEB-INF/movielist.jsp").forward(req, resp);
	} 
}
 