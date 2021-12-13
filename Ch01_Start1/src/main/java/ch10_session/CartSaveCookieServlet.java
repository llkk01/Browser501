package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ch09_cookie/study09/CartSaveCookie2")
public class CartSaveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String product = request.getParameter("product");
		Cookie[] cookies = request.getCookies();
		Cookie c = null;
		if(cookies == null || cookies.length == 0) { //쿠키가 비어있거나 0이면 Cookie 생성
			c = new Cookie("product", product);
		}else {
			c = new Cookie("product" +(cookies.length+1), product); // 이름이 다른 쿠키 생성
		}
		response.addCookie(c);
		
		out.println("<html><body>Product추가" +"<br>");
		out.println("<a href='CartBasketCookie'>장바구니 보기</a>");
		out.println("</body></html>");
	}

}
