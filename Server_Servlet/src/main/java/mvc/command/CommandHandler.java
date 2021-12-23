package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//P.531
public interface CommandHandler {

	//추상메소드 (요청과 응답에 대한 내용)
	public String process(HttpServletRequest req, HttpServletResponse res);

}