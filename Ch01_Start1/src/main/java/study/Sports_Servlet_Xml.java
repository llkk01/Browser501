package study;


import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//URL Mapping 방법 : Web.xml 방식
//@WebServlet("/study02/SportXml")
public class Sports_Servlet_Xml extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; Charset = utf8");
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; Charset = utf8");
		
		String[] sports = req.getParameterValues("sports");
		String sex = req.getParameter("sex");
		
		
		//MVC model2 작성(sport_mvc2.jsp)
		HttpSession sess = req.getSession();
		sess.setAttribute("s1", sports);
		sess.setAttribute("s2", sex);
		
		RequestDispatcher d = req.getRequestDispatcher("sport_mvc2.jsp?id=hong"); //파라미터를 통해 값 전달
		d.forward(req, resp); //forward 목적파일 출력("sport_mvc2.jsp")
		
		
		//MVC model1 작성 --> 실행결과가 출력되지 않음(forward는 한번 가면 돌아오지않기때문에)
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports) {
			out.println("좋아하는 운동 : " +s +"<br>");
		}
		out.println("성별: " +sex +"<br>");
		out.println("</html></body>");
	}

}
