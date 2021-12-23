package ch24_file;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/ch24_fileupload/Upload")
@MultipartConfig(maxFileSize = 1024*1024*2, location = "c:\\uploadtest")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//파일명을 얻는 메소드
	private String getFileName(Part part) {
		String fileName = null;
		String contentDispositionHeader = part.getHeader("content-disposition"); //Header에 있는 내용 문자열로 얻음
		String[] elements = contentDispositionHeader.split(";"); //";"로 Header로 구분(결과- 배열로 얻음)
		for(String element : elements) {
			if(element.trim().startsWith("filename")) { //trim() - 공백제거
				fileName = element.substring(element.indexOf('=')+1); // filename= 다음에 있는 내용의 값 얻기
				fileName = fileName.trim().replace("\"", "");	// \"의 문자가 붙어있으면 ""없는것으로 변경		
			}
		}
		
		return fileName;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response); //doPost에 가서 알아봐라(doPost 메소드 호출)
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		Part part = request.getPart("theFile"); 
		String fileName = getFileName(part); 
		if(fileName !=null && !fileName.isEmpty()) {
			part.write(fileName);
		}
		
		String author = request.getParameter("theAuthor");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//a href는 get방식밖에 안된다. (FileDown)
		out.println("작성자: " +author +"<br>");
		out.println("파일명: <a href='FileDown?file_name=" +fileName +"'>" 
					+fileName +"</a><br>");
		out.println("파일크기: " +part.getSize() +"<br>");
	}

}
