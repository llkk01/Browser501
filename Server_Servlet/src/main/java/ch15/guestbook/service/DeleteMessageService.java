package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.connection.ConnectionProvider;
import jdbc.jdbcUtil;

//P.460
public class DeleteMessageService {

	private static DeleteMessageService instance = new DeleteMessageService();

	public static DeleteMessageService getInstance() {
		return instance;
	}

	private DeleteMessageService() {
		
	}

	public void deleteMessage(int messageId, String password) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false); //자동커밋 시작점

			MessageDao messageDao = MessageDao.getInstance();
			Message message = messageDao.select(conn, messageId);
			
			if (message == null) {
				throw new MessageNotFoundException("메시지 없음");
			}
			if (!message.matchPassword(password)) {
				throw new InvalidPasswordException("bad password");
			}
			messageDao.delete(conn, messageId);//////////////////

			conn.commit(); //완전 저장(끝점)
			
		} catch (SQLException ex) {
			jdbcUtil.rollback(conn); //취소
			throw new ServiceException("삭제 실패:" + ex.getMessage(), ex);
		} catch (InvalidPasswordException | MessageNotFoundException ex) {
			jdbcUtil.rollback(conn);
			throw ex;
		} finally {
			jdbcUtil.close(conn);
		}
	}
}
