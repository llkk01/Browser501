package ch15.guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import ch15.guestbook.dao.MessageDao;
import ch15.guestbook.model.Message;
import ch15.jdbc.connection.ConnectionProvider;
import jdbc.jdbcUtil;

//P.458
public class WriteMessagetService {

		private static WriteMessagetService instance = new WriteMessagetService();

		public static WriteMessagetService getInstance() {
			return instance;
		}
	
		private WriteMessagetService() {
			
		}
		
		public void write(Message message) {
			Connection conn = null;
			try {
				conn = ConnectionProvider.getConnection();
				MessageDao messageDao = MessageDao.getInstance();
				messageDao.insert(conn, message);
			} catch (SQLException e) {
				throw new ServiceException("메세지 등록 실패:" +e.getMessage(), e);
			}finally {
				jdbcUtil.close(conn);
			}
		}
}
