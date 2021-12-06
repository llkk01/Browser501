package ch18.mvc.simple;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Servlet Mapping 방법1 - Annotation방식 (p.525)
@WebServlet("/ch18/simple")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		
		Object resultObject = null;
		
		if(type == null || type.equals("greeting")) {
			resultObject = "안녕하세요.";
		}else if(type.equals("data")){
			resultObject = new Date();
		}else {
			resultObject = "Invalid Type";
		}
		
		request.setAttribute("result", resultObject);
		
		//attribute, parameter를 view로 전달가능하게 작성
		RequestDispatcher d = request.getRequestDispatcher("simpleView.jsp");
		d.forward(request, response);
	}

}
