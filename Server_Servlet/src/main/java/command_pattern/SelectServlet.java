package command_pattern;


import java.io.IOException; 
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("*.ds")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//Command Pattern
			//requestURI() : /Server_Servlet/insert.dos
			//getContextPath() : /Server_Servlet
			//insert.dos
			String requestURI = request.getRequestURI();
			System.out.println("requestURI() : " +requestURI);
			String ContextPath = request.getContextPath();
			System.out.println("getContextPath() : " +ContextPath);
			String command = requestURI.substring(ContextPath.length());
			System.out.println(command);
			
			//P.529~530
			//Command Pattern : 각 명령어에 해당하는 로직 처리 코드를 별로 클래스로 작성하는것
			//				  : 하나의 명령어를 하나의 클래스에서 처리하도록 구현하는 패턴
			if(command.equals("/insert.ds")) { //한개의 명령어를 하나의 내용으로 처리
				System.out.println("DB에 데이터 입력");
			}else if(command.equals("/delete.ds")) {//한개의 명령어를 하나의 내용으로 처리
				System.out.println("DB 데이터 삭제");
			}else if(command.equals("/update.ds")) {
				System.out.println("DB 데이터 수정");
			}else { //select.ds
					
				request.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
					
				PrintWriter out = response.getWriter();
				out.println("<html><body>");
				
				//EmpDAO dao = new EmpDAO();
				SelectService service = new SelectService();
					
				ArrayList<EmpDTO> list = service.execute(request, response);
				for(EmpDTO dto : list) {
					String empno = dto.getEmpno();
					String ename = dto.getEname();
					int sal = dto.getSal();
					String deptno = dto.getDeptno();
					out.print(empno+"\t"+ename+"\t"+sal+"\t"+deptno+"<br>");			
				}
					
				out.println("</body></html>");
			
			}
				
	}

}
