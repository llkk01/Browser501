package loginout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 한글 처리를 위한 작업
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		// 데이터를 받아서 출력하기 위한 작업
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		PrintWriter out = response.getWriter();
		out.println("ID : " +"<html><body>" +id +" PW : " +pw +"</html></body>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
