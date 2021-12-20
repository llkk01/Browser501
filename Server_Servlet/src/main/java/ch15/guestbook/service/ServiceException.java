package ch15.guestbook.service;
//P.454
public class ServiceException extends RuntimeException{
	
	public ServiceException(String message, Exception cause) {
		super(message,cause);
	}
	
	public ServiceException(String message) {
		super(message);
	}
	
}
