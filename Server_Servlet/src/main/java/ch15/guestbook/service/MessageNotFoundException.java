package ch15.guestbook.service;
//P.461
public class MessageNotFoundException extends ServiceException{
	
	public MessageNotFoundException(String message) {
		super(message);
	}
}
