package day07.person;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonCtr extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		PersonService ps = new PersonService();
		PersonDto p = ps.getPersonById(id);
		
		String rs = "[";
		rs += "{";
		rs += "\"id\" : "+p.getId()+", ";
		rs += "\"name\": "+"\""+p.getName()+"\", ";
		rs += "\"age\" : "+p.getAge();
		rs += "}";
		rs += "]";
		PrintWriter out = resp.getWriter();
		out.print(rs);
		
	}
}
