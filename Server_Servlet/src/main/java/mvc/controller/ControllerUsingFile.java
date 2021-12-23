package mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;

//P.533

//ControllerUsingFile의 단점 : ?cmd=hello (값을 보여주면서 보내는 점)
// 보완을 해서 나온 내용 -> ControllerUsingURI : 확장자 패턴 사용(main.do)
//http://localhost:8080/Server_Servlet/controllerUsingFile?cmd=hello

//실행 완료 후 꼭 Console창으로 확인해보기

//@WebServlet("/controllerUsingFile")
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//Map<커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	
	//1. 가장 먼저 실행
	//아래 init()파라미터가 없는 일반 메소드임
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile"); ///WEB-INF/commandHandler.properties
			System.out.println("configFile: " +configFile); //configFile: /WEB-INF/commandHandler.properties
		Properties prop = new Properties(); //Map계열
			System.out.println("prop:" +prop); //prop:{}
		String configFilePath = getServletContext().getRealPath(configFile);
			System.out.println("configFilePath: "+configFilePath); //configFilePath: C:\ServerSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Server_Servlet\WEB-INF\commandHandler.properties
		
		try(FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		}catch(IOException e){
			throw new ServletException(e);
		}
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();
				System.out.println("command: " +command); //command: hello
			String handlerClassName = prop.getProperty(command); 
				System.out.println("handlerClassName: " +handlerClassName); //handlerClassName: mvc.hello.HelloHandler
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				System.out.println("handlerInstance: " +handlerInstance); //handlerInstance: mvc.hello.HelloHandler@17640934
				
				//				      hello    mvc.hello.HelloHandler@17640934
				commandHandlerMap.put(command, handlerInstance);
				
				
				
			} catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	//2
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("cmd"); //hello
		CommandHandler handler = commandHandlerMap.get(command); //mvc.hello.HelloHandler
		if(handler == null) {
			handler = new NullHandler();
		}
		
		String viewPage = null;
		try {
			viewPage = handler.process(request, response); //"/WEB-INF/view/hello.jsp"
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}

}
