package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//servlet URL Mapping 방법 : Annotation방식을 사용함.
@WebServlet(name = "InitParamServlet_Anno",
			urlPatterns = {"/initAnno"},
			initParams = {@WebInitParam(name="dirPath", value="c:\\test"),
						@WebInitParam(name="userid", value="admin")})
public class InitParamServlet_Anno extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf8");
		PrintWriter out = response.getWriter();
		
		//getServletContext().getInitParameter("");
		String dirPath = getInitParameter("dirPath");	
		String userid = getInitParameter("userid");	
		
		out.println("<html><body>");
		out.println("dirPath : " +dirPath +" : " +"userid : " +userid);
		out.println("</body></html");
		
		System.out.println(getInitParameter("dirPath"));
		System.out.println(getInitParameter("userid"));
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
