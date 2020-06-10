package day07.person;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonListCtr extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//요청받으면 서비스 객체를 이용해 결과를 json으로 만들어 보내준다.
		PersonService ps = new PersonService();
		List<PersonDto> personList = ps.getPersonList();
		
//		String str = "[";
//		for(int i = 0; i < personList.size(); i++) {
//			str += "{";
//			str += "\"id\" : "+personList.get(i).getId()+", ";
//			str += "\"name\" : "+"\""+personList.get(i).getName()+"\""+", ";
//			str += "\"age\" : "+personList.get(i).getAge();
//			str += "}";
//			str += ",";
//			//',' : 마지막 객체의 뒤에 붙는 콤마는 제거 필요(ln 28에서  처리)
//		}
//		str = str.substring(0, str.length()-1);//str.length()-1 대신 str.lastIndexOf(",")도 사용 가능
//		str += "]";
//		PrintWriter out = resp.getWriter();
//		out.print(str); 
		
		req.setAttribute("list", personList);
		req.getRequestDispatcher("/WEB-INF/NewFile.jsp").forward(req, resp);
		
		/*
		 * out.print()로도 문자열을 보낼 수 있지만 배열에 넣어 이 배열을 request의 속성으로 등록한 채로
		 * req.getRequestDispatcher("jsp주소").forward(req, resp)을 보내고 이를 받는 jsp에서
		 * EL표기법 또는 jsp을 통해 JSON형태로 출력하고, 이것을 index.jsp에서 받고, 이것을  JSON.parse()
		 * 을 통해 JSON파일을 받듯이 사용할 수 있다.
		*/
		
	}
}
