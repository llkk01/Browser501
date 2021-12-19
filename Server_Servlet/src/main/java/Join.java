

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String result = null;
		
		Member member = new Member();
		
		  if ( member != null ) {
			  session.setAttribute("id", id);
			  session.setAttribute("result", 1);
			  RequestDispatcher d = request.getRequestDispatcher("login.jsp");
			  d.forward(request, response);
		  }
	  
		  if ( member == null ) {
			  session.setAttribute("id", id);
			  session.setAttribute("result", -1);
			  RequestDispatcher d = request.getRequestDispatcher("login.jsp");
			  d.forward(request, response);
		  }else {
			  session.setAttribute("id", id);
			  session.setAttribute("result", 0);
			  RequestDispatcher d = request.getRequestDispatcher("login.jsp");
			  d.forward(request, response);
		  }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
