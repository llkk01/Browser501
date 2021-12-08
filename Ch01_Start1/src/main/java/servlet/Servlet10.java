package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 교재 p.125 : JSP의 기본객체인 application을 Servlet으로 작성한 것
@WebServlet("/Servlet10")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext sc = getServletContext();
		String serverInfo = sc.getServerInfo();
		int majorVersion = sc.getMajorVersion();
		int minorVersion = sc.getMinorVersion();
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>ServerInfo() : " +serverInfo +"<br>");
		out.println("MajorVersion() : " +majorVersion +"<br>");
		out.println("MinorVersion() : " +minorVersion +"<br>");
		out.println("</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
