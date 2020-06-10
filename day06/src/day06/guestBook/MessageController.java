package day06.guestBook;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet을 사용해서 컨트롤러 역할을 하는 클래스를 구현
/*
 * Servlet
 * 
 * 일종의 class
 * MVC패턴에서 Controller역할을 수행(클라이언트의 요청을 처리하고 그 결과를 다시 클라이언트에게 전송하는 역할)
 * jsp는 html문서 안에 java코드가 속한다면 Servlet은 java문서 안에 html코드가 속한다.
 * mapping url파일이 없다면 자동으로 만들어줌(실제 파일이 생성되는 것은 아님)
 */

public class MessageController extends HttpServlet{ //Servlet으로 사용하기 위해서는 HTTPServlet 클래스를 상속받아야 함
	//기본적으로 가지는 doGet, doPost, doService()를 오버라이딩
	//외부적으로 url요청이 오면 자동적으로 doService()가 호출된다.
	//Service() : get방식으로 요청이 오면 doGet()을 실행하고 post방식으로 요청이 오면 doPost()를 실행한다. (어떠한 경우에 어떤 작업을 해줘야하는지 명시 필요)
	//Service()를 오버라이딩할 때 if-else문을 통해 doGet과 doPost가 실행되는 경우를 작성해주지 않으면 doGet()이나 doPost()는 실행되지 않음
	/*
	 * 오버라이딩한 Service()는 반드시 이와 같은 식으로 분기해줘야함
	 * if(x == true){
	 * 		doGet();
	 * }else{
	 * 		doPost();
	 * }
	 * */

	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			//현재 페이지 번호 받기
			String pageNumberStr = req.getParameter("page");
			int pageNumber = 1;
			if(pageNumberStr != null) {
				pageNumber = Integer.parseInt(pageNumberStr);
			}
			System.out.println("Controller에서의 pageNumberStr : "+pageNumberStr);
			System.out.println("Controller에서의 pageNumber : "+pageNumber);
			//서비스 객체를 생성
			MessageListService service = new MessageListService();
			
			//페이지에 보여줄 데이터를 가져온다.
			MessageListView viewData = service.getMessageListView(pageNumber);
			
			//화면으로 보내기위해 request객체에 담아준다.
			req.setAttribute("viewData", viewData);
			
			//결과 화면으로 페이지 이동
			req.getRequestDispatcher("/WEB-INF/listView.jsp").forward(req, resp); 
			//req.getRequestDispatcher("url").forward(request, response)에서 forward()는 클라이언트가 요청하면서 전송한 데이터를 그대로 유지한다.
			//즉, 데이터를 그대로 유지하면서 해당 url로 이동시키는 것이다.
			//WEB-INF 폴더 안에 파일을 넣어 두면 외부에서 요청이 안됨. 이런식으로 데이터를 만들지 않은 상태에서 요청이 오면 직접 요청은 안되지만 결과 화면으로 보여지게 할 수 있다.
			//사용자는 url만 알면 접근가능(파일명을 몰라도 가능)
			
		}
	
}
